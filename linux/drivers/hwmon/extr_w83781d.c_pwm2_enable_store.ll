; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_pwm2_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_pwm2_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83781d_data = type { i64, i32 }

@W83781D_REG_PWMCLK12 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_CONFIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm2_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm2_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83781d_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.w83781d_data* %15, %struct.w83781d_data** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 10, i64* %11)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %70

22:                                               ; preds = %4
  %23 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %24 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i64, i64* %11, align 8
  switch i64 %26, label %58 [
    i64 0, label %27
    i64 1, label %27
  ]

27:                                               ; preds = %22, %22
  %28 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %29 = load i32, i32* @W83781D_REG_PWMCLK12, align 4
  %30 = call i32 @w83781d_read_value(%struct.w83781d_data* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %32 = load i32, i32* @W83781D_REG_PWMCLK12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 247
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %11, align 8
  %37 = shl i64 %36, 3
  %38 = or i64 %35, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @w83781d_write_value(%struct.w83781d_data* %31, i32 %32, i32 %39)
  %41 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %42 = load i32, i32* @W83781D_REG_BEEP_CONFIG, align 4
  %43 = call i32 @w83781d_read_value(%struct.w83781d_data* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %45 = load i32, i32* @W83781D_REG_BEEP_CONFIG, align 4
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, 239
  %48 = load i64, i64* %11, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = shl i32 %51, 4
  %53 = or i32 %47, %52
  %54 = call i32 @w83781d_write_value(%struct.w83781d_data* %44, i32 %45, i32 %53)
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %57 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %64

58:                                               ; preds = %22
  %59 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %60 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %70

64:                                               ; preds = %27
  %65 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %66 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %64, %58, %20
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
