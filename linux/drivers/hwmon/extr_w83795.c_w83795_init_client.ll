; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i32 }

@w83795_init_client.clkin = internal constant [4 x i32] [i32 14318, i32 24000, i32 33333, i32 48000], align 16
@reset = common dso_local global i64 0, align 8
@W83795_REG_CONFIG = common dso_local global i32 0, align 4
@W83795_REG_CONFIG_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Enabling monitoring operations\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clkin = %u kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @w83795_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83795_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.w83795_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.w83795_data* %6, %struct.w83795_data** %3, align 8
  %7 = load i64, i64* @reset, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = load i32, i32* @W83795_REG_CONFIG, align 4
  %12 = call i32 @w83795_write(%struct.i2c_client* %10, i32 %11, i32 128)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = load i32, i32* @W83795_REG_CONFIG, align 4
  %16 = call i32 @w83795_read(%struct.i2c_client* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @W83795_REG_CONFIG_START, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %13
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 @dev_info(i32* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %26 = load i32, i32* @W83795_REG_CONFIG, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @W83795_REG_CONFIG_START, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @w83795_write(%struct.i2c_client* %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %13
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 3
  %34 = and i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* @w83795_init_client.clkin, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.w83795_data*, %struct.w83795_data** %3, align 8
  %39 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load %struct.w83795_data*, %struct.w83795_data** %3, align 8
  %43 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @w83795_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
