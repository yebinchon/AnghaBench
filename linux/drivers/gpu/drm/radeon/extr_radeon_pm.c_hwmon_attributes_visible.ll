; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_hwmon_attributes_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_hwmon_attributes_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.attribute }
%struct.TYPE_21__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.attribute }
%struct.TYPE_20__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.attribute }
%struct.TYPE_19__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.attribute }
%struct.TYPE_18__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.radeon_device = type { %struct.TYPE_28__*, %struct.TYPE_24__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i64 }

@PM_METHOD_DPM = common dso_local global i64 0, align 8
@sensor_dev_attr_temp1_crit = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@sensor_dev_attr_temp1_crit_hyst = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@sensor_dev_attr_pwm1 = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@sensor_dev_attr_pwm1_enable = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@sensor_dev_attr_pwm1_max = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@sensor_dev_attr_pwm1_min = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @hwmon_attributes_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwmon_attributes_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = call %struct.device* @kobj_to_dev(%struct.kobject* %11)
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = call %struct.radeon_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.radeon_device* %14, %struct.radeon_device** %9, align 8
  %15 = load %struct.attribute*, %struct.attribute** %6, align 8
  %16 = getelementptr inbounds %struct.attribute, %struct.attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PM_METHOD_DPM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %3
  %25 = load %struct.attribute*, %struct.attribute** %6, align 8
  %26 = icmp eq %struct.attribute* %25, getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sensor_dev_attr_temp1_crit, i32 0, i32 0, i32 0)
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = load %struct.attribute*, %struct.attribute** %6, align 8
  %29 = icmp eq %struct.attribute* %28, getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sensor_dev_attr_temp1_crit_hyst, i32 0, i32 0, i32 0)
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load %struct.attribute*, %struct.attribute** %6, align 8
  %32 = icmp eq %struct.attribute* %31, getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load %struct.attribute*, %struct.attribute** %6, align 8
  %35 = icmp eq %struct.attribute* %34, getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.attribute*, %struct.attribute** %6, align 8
  %38 = icmp eq %struct.attribute* %37, getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sensor_dev_attr_pwm1_max, i32 0, i32 0, i32 0)
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.attribute*, %struct.attribute** %6, align 8
  %41 = icmp eq %struct.attribute* %40, getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sensor_dev_attr_pwm1_min, i32 0, i32 0, i32 0)
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36, %33, %30, %27, %24
  store i32 0, i32* %4, align 4
  br label %141

43:                                               ; preds = %39, %3
  %44 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.attribute*, %struct.attribute** %6, align 8
  %51 = icmp eq %struct.attribute* %50, getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load %struct.attribute*, %struct.attribute** %6, align 8
  %54 = icmp eq %struct.attribute* %53, getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.attribute*, %struct.attribute** %6, align 8
  %57 = icmp eq %struct.attribute* %56, getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sensor_dev_attr_pwm1_max, i32 0, i32 0, i32 0)
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load %struct.attribute*, %struct.attribute** %6, align 8
  %60 = icmp eq %struct.attribute* %59, getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sensor_dev_attr_pwm1_min, i32 0, i32 0, i32 0)
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %55, %52, %49
  store i32 0, i32* %4, align 4
  br label %141

62:                                               ; preds = %58, %43
  %63 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load %struct.attribute*, %struct.attribute** %6, align 8
  %72 = icmp eq %struct.attribute* %71, getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %72, label %84, label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load %struct.attribute*, %struct.attribute** %6, align 8
  %83 = icmp eq %struct.attribute* %82, getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %83, label %84, label %89

84:                                               ; preds = %81, %70
  %85 = load i32, i32* @S_IRUGO, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %84, %81, %73
  %90 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = load %struct.attribute*, %struct.attribute** %6, align 8
  %99 = icmp eq %struct.attribute* %98, getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @sensor_dev_attr_pwm1, i32 0, i32 0, i32 0)
  br i1 %99, label %111, label %100

100:                                              ; preds = %97, %89
  %101 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %100
  %109 = load %struct.attribute*, %struct.attribute** %6, align 8
  %110 = icmp eq %struct.attribute* %109, getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sensor_dev_attr_pwm1_enable, i32 0, i32 0, i32 0)
  br i1 %110, label %111, label %116

111:                                              ; preds = %108, %97
  %112 = load i32, i32* @S_IWUSR, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %111, %108, %100
  %117 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %116
  %125 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %124
  %133 = load %struct.attribute*, %struct.attribute** %6, align 8
  %134 = icmp eq %struct.attribute* %133, getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sensor_dev_attr_pwm1_max, i32 0, i32 0, i32 0)
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load %struct.attribute*, %struct.attribute** %6, align 8
  %137 = icmp eq %struct.attribute* %136, getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sensor_dev_attr_pwm1_min, i32 0, i32 0, i32 0)
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %132
  store i32 0, i32* %4, align 4
  br label %141

139:                                              ; preds = %135, %124, %116
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %138, %61, %42
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.radeon_device* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
