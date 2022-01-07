; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pc87427_data = type { i32*, i32*, i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@LD_FAN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PWM_ENABLE_MODE_MASK = common dso_local global i32 0, align 4
@PWM_MODE_MANUAL = common dso_local global i32 0, align 4
@PWM_MODE_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Can't set PWM%d duty cycle while not in manual mode\0A\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Switching PWM%d from %s to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@PC87427_REG_PWM_DUTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pc87427_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.pc87427_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.pc87427_data* %16, %struct.pc87427_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %22 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @LD_FAN, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @kstrtoul(i8* %27, i32 10, i64* %12)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = icmp ugt i64 %31, 255
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %4
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %127

36:                                               ; preds = %30
  %37 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %38 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %37, i32 0, i32 3
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @pc87427_readall_pwm(%struct.pc87427_data* %40, i32 %41)
  %43 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %44 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PWM_ENABLE_MODE_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @PWM_MODE_MANUAL, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %36
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @PWM_MODE_OFF, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @dev_notice(%struct.device* %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %65 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %64, i32 0, i32 3
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* @EPERM, align 8
  %68 = sub i64 0, %67
  store i64 %68, i64* %5, align 8
  br label %127

69:                                               ; preds = %55, %36
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @PWM_MODE_MANUAL, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @PWM_MODE_OFF, align 4
  %80 = call i32 @update_pwm_enable(%struct.pc87427_data* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @PWM_MODE_OFF, align 4
  store i32 %81, i32* %14, align 4
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %104

86:                                               ; preds = %73, %69
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @PWM_MODE_OFF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i64, i64* %12, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @PWM_MODE_MANUAL, align 4
  %97 = call i32 @update_pwm_enable(%struct.pc87427_data* %94, i32 %95, i32 %96)
  %98 = load i32, i32* @PWM_MODE_MANUAL, align 4
  store i32 %98, i32* %14, align 4
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %93, %90, %86
  br label %104

104:                                              ; preds = %103, %76
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %107 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 %105, i64* %111, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @PWM_MODE_MANUAL, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %104
  %116 = load i64, i64* %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @PC87427_REG_PWM_DUTY, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @outb(i64 %116, i64 %120)
  br label %122

122:                                              ; preds = %115, %104
  %123 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %124 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %123, i32 0, i32 3
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i64, i64* %9, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %122, %59, %33
  %128 = load i64, i64* %5, align 8
  ret i64 %128
}

declare dso_local %struct.pc87427_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pc87427_readall_pwm(%struct.pc87427_data*, i32) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @update_pwm_enable(%struct.pc87427_data*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @outb(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
