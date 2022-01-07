; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i64, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@w83627thf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %97

26:                                               ; preds = %4
  %27 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %28 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %31 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @w83627thf, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %26
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @PWM_TO_REG(i64 %36)
  %38 = and i32 %37, 240
  %39 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %40 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %46 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %47 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @W836X7HF_REG_PWM(i64 %48, i32 %49)
  %51 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %52 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %59 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %60 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @W836X7HF_REG_PWM(i64 %61, i32 %62)
  %64 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %58, i32 %63)
  %65 = and i32 %64, 15
  %66 = or i32 %57, %65
  %67 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %45, i32 %50, i32 %66)
  br label %91

68:                                               ; preds = %26
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @PWM_TO_REG(i64 %69)
  %71 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %72 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %78 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %79 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @W836X7HF_REG_PWM(i64 %80, i32 %81)
  %83 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %84 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %77, i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %68, %35
  %92 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %93 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %24
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PWM_TO_REG(i64) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @W836X7HF_REG_PWM(i64, i32) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
