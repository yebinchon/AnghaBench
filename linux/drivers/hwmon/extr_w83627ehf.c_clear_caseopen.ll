; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_clear_caseopen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_clear_caseopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627ehf_data = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83627EHF_REG_CASEOPEN_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @clear_caseopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clear_caseopen(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83627ehf_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.w83627ehf_data* %15, %struct.w83627ehf_data** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @kstrtoul(i8* %16, i32 10, i64* %11)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %55

25:                                               ; preds = %19
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %31 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %34 = load i32, i32* @W83627EHF_REG_CASEOPEN_CLR, align 4
  %35 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %37 = load i32, i32* @W83627EHF_REG_CASEOPEN_CLR, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %36, i32 %37, i32 %40)
  %42 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %43 = load i32, i32* @W83627EHF_REG_CASEOPEN_CLR, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %42, i32 %43, i32 %47)
  %49 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %50 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %52 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %25, %22
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
