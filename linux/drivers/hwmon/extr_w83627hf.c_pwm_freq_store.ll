; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_pwm_freq_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_pwm_freq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i64, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@pwm_freq_store.mask = internal constant [2 x i32] [i32 248, i32 143], align 4
@w83627hf = common dso_local global i64 0, align 8
@W83627HF_REG_PWM_FREQ = common dso_local global i32 0, align 4
@W83637HF_REG_PWM_FREQ = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_freq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_freq_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.w83627hf_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.w83627hf_data* %19, %struct.w83627hf_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 10, i64* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %95

26:                                               ; preds = %4
  %27 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %28 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %31 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @w83627hf, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @pwm_freq_to_reg_627hf(i64 %36)
  %38 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %39 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %45 = load i32, i32* @W83627HF_REG_PWM_FREQ, align 4
  %46 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %47 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 4
  %55 = shl i32 %52, %54
  %56 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %57 = load i32, i32* @W83627HF_REG_PWM_FREQ, align 4
  %58 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %56, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* @pwm_freq_store.mask, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %58, %62
  %64 = or i32 %55, %63
  %65 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %44, i32 %45, i32 %64)
  br label %89

66:                                               ; preds = %26
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @pwm_freq_to_reg(i64 %67)
  %69 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %70 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %76 = load i32*, i32** @W83637HF_REG_PWM_FREQ, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %82 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %75, i32 %80, i32 %87)
  br label %89

89:                                               ; preds = %66, %35
  %90 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %91 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %90, i32 0, i32 2
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i64, i64* %9, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %89, %24
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_freq_to_reg_627hf(i64) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @pwm_freq_to_reg(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
