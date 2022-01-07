; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_set_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_set_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i32 }

@W83795_REG_BANKSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to set bank to %d, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @w83795_set_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83795_set_bank(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.w83795_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.w83795_data* %9, %struct.w83795_data** %6, align 8
  %10 = load %struct.w83795_data*, %struct.w83795_data** %6, align 8
  %11 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 7
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.w83795_data*, %struct.w83795_data** %6, align 8
  %19 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, -8
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @W83795_REG_BANKSEL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %17
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.w83795_data*, %struct.w83795_data** %6, align 8
  %40 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %30, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
