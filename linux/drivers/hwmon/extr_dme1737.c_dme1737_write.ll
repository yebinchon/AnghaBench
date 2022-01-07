; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme1737_data = type { i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Write to register 0x%02x failed! %s\0A\00", align 1
@DO_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dme1737_data*, i32, i32)* @dme1737_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dme1737_write(%struct.dme1737_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dme1737_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i64, align 8
  store %struct.dme1737_data* %0, %struct.dme1737_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %10 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %13 = icmp ne %struct.i2c_client* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %15, i32 %16, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @DO_REPORT, align 4
  %26 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %14
  br label %40

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %31 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @outb(i32 %29, i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %36 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @outb(i32 %34, i64 %38)
  br label %40

40:                                               ; preds = %28, %27
  %41 = load i64, i64* %8, align 8
  ret i64 %41
}

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
