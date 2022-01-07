; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7411_data = type { i32, i32 }

@ADT7411_REG_CFG3 = common dso_local global i32 0, align 4
@ADT7411_CFG3_RESERVED_BIT1 = common dso_local global i32 0, align 4
@ADT7411_CFG3_RESERVED_BIT2 = common dso_local global i32 0, align 4
@ADT7411_CFG3_RESERVED_BIT3 = common dso_local global i32 0, align 4
@ADT7411_REG_CFG1 = common dso_local global i32 0, align 4
@ADT7411_CFG1_EXT_TDM = common dso_local global i32 0, align 4
@ADT7411_CFG1_RESERVED_BIT1 = common dso_local global i32 0, align 4
@ADT7411_CFG1_RESERVED_BIT3 = common dso_local global i32 0, align 4
@ADT7411_CFG1_START_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7411_data*)* @adt7411_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_init_device(%struct.adt7411_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adt7411_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adt7411_data* %0, %struct.adt7411_data** %3, align 8
  %6 = load %struct.adt7411_data*, %struct.adt7411_data** %3, align 8
  %7 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ADT7411_REG_CFG3, align 4
  %10 = call i32 @i2c_smbus_read_byte_data(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %69

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @ADT7411_CFG3_RESERVED_BIT1, align 4
  %18 = load i32, i32* @ADT7411_CFG3_RESERVED_BIT2, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @ADT7411_CFG3_RESERVED_BIT3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.adt7411_data*, %struct.adt7411_data** %3, align 8
  %27 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ADT7411_REG_CFG3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @i2c_smbus_write_byte_data(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %15
  %37 = load %struct.adt7411_data*, %struct.adt7411_data** %3, align 8
  %38 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ADT7411_REG_CFG1, align 4
  %41 = call i32 @i2c_smbus_read_byte_data(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %69

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ADT7411_CFG1_EXT_TDM, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.adt7411_data*, %struct.adt7411_data** %3, align 8
  %51 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @ADT7411_CFG1_RESERVED_BIT1, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @ADT7411_CFG1_RESERVED_BIT3, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @ADT7411_CFG1_START_MONITOR, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.adt7411_data*, %struct.adt7411_data** %3, align 8
  %64 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ADT7411_REG_CFG1, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @i2c_smbus_write_byte_data(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %46, %44, %34, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
