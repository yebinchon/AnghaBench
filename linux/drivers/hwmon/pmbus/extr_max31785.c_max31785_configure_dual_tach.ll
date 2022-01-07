; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_configure_dual_tach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_max31785.c_max31785_configure_dual_tach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32, i32* }

@MAX31785_NR_FAN_PAGES = common dso_local global i32 0, align 4
@PMBUS_PAGE = common dso_local global i32 0, align 4
@MFR_FAN_CONFIG = common dso_local global i32 0, align 4
@MFR_FAN_CONFIG_DUAL_TACH = common dso_local global i32 0, align 4
@MAX31785_NR_PAGES = common dso_local global i32 0, align 4
@PMBUS_HAVE_FAN12 = common dso_local global i32 0, align 4
@PMBUS_PAGE_VIRTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_driver_info*)* @max31785_configure_dual_tach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31785_configure_dual_tach(%struct.i2c_client* %0, %struct.pmbus_driver_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.pmbus_driver_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.pmbus_driver_info* %1, %struct.pmbus_driver_info** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %62, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MAX31785_NR_FAN_PAGES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load i32, i32* @PMBUS_PAGE, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %13
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @MFR_FAN_CONFIG, align 4
  %25 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MFR_FAN_CONFIG_DUAL_TACH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i32, i32* @MAX31785_NR_PAGES, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %42 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @PMBUS_HAVE_FAN12, align 4
  %44 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %45 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %43
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @PMBUS_PAGE_VIRTUAL, align 4
  %53 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %5, align 8
  %54 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %52
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %35, %30
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %9

65:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %28, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
