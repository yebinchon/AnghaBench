; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device*, i32 }
%struct.intel_th_driver = type { i32 (%struct.intel_th_device*)*, i32 (%struct.intel_th_device.0*, %struct.intel_th_device.0*)*, i32 (%struct.intel_th_device.1*)*, i64 }
%struct.intel_th_device = type opaque
%struct.intel_th_device.0 = type opaque
%struct.intel_th_device.1 = type opaque
%struct.intel_th_device.2 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@INTEL_TH_SWITCH = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @intel_th_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.intel_th_driver*, align 8
  %5 = alloca %struct.intel_th_device.2*, align 8
  %6 = alloca %struct.intel_th_driver*, align 8
  %7 = alloca %struct.intel_th_device.2*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.intel_th_driver* @to_intel_th_driver(i32 %11)
  store %struct.intel_th_driver* %12, %struct.intel_th_driver** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.intel_th_device.2* @to_intel_th_device(%struct.device* %13)
  store %struct.intel_th_device.2* %14, %struct.intel_th_device.2** %5, align 8
  store %struct.intel_th_device.2* null, %struct.intel_th_device.2** %7, align 8
  %15 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %5, align 8
  %16 = getelementptr inbounds %struct.intel_th_device.2, %struct.intel_th_device.2* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INTEL_TH_SWITCH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %5, align 8
  store %struct.intel_th_device.2* %21, %struct.intel_th_device.2** %7, align 8
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  %26 = icmp ne %struct.device* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = call %struct.intel_th_device.2* @to_intel_th_device(%struct.device* %30)
  store %struct.intel_th_device.2* %31, %struct.intel_th_device.2** %7, align 8
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32, %20
  %34 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %7, align 8
  %35 = icmp ne %struct.intel_th_device.2* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %7, align 8
  %38 = getelementptr inbounds %struct.intel_th_device.2, %struct.intel_th_device.2* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36, %33
  %43 = load i32, i32* @EPROBE_DEFER, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %123

45:                                               ; preds = %36
  %46 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %7, align 8
  %47 = getelementptr inbounds %struct.intel_th_device.2, %struct.intel_th_device.2* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.intel_th_driver* @to_intel_th_driver(i32 %49)
  store %struct.intel_th_driver* %50, %struct.intel_th_driver** %6, align 8
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 @pm_runtime_set_active(%struct.device* %51)
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = call i32 @pm_runtime_no_callbacks(%struct.device* %53)
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 @pm_runtime_enable(%struct.device* %55)
  %57 = load %struct.intel_th_driver*, %struct.intel_th_driver** %4, align 8
  %58 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %57, i32 0, i32 0
  %59 = load i32 (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*)** %58, align 8
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call %struct.intel_th_device.2* @to_intel_th_device(%struct.device* %60)
  %62 = bitcast %struct.intel_th_device.2* %61 to %struct.intel_th_device*
  %63 = call i32 %59(%struct.intel_th_device* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %115

67:                                               ; preds = %45
  %68 = load %struct.intel_th_driver*, %struct.intel_th_driver** %4, align 8
  %69 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %5, align 8
  %74 = getelementptr inbounds %struct.intel_th_device.2, %struct.intel_th_device.2* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.intel_th_driver*, %struct.intel_th_driver** %4, align 8
  %77 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @sysfs_create_group(i32* %75, i64 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  br label %104

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %67
  %85 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %5, align 8
  %86 = getelementptr inbounds %struct.intel_th_device.2, %struct.intel_th_device.2* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %5, align 8
  %92 = call i32 @intel_th_output_assigned(%struct.intel_th_device.2* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = load %struct.intel_th_driver*, %struct.intel_th_driver** %6, align 8
  %96 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %95, i32 0, i32 1
  %97 = load i32 (%struct.intel_th_device.0*, %struct.intel_th_device.0*)*, i32 (%struct.intel_th_device.0*, %struct.intel_th_device.0*)** %96, align 8
  %98 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %7, align 8
  %99 = bitcast %struct.intel_th_device.2* %98 to %struct.intel_th_device.0*
  %100 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %5, align 8
  %101 = bitcast %struct.intel_th_device.2* %100 to %struct.intel_th_device.0*
  %102 = call i32 %97(%struct.intel_th_device.0* %99, %struct.intel_th_device.0* %101)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %94, %90, %84
  br label %104

104:                                              ; preds = %103, %82
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.intel_th_driver*, %struct.intel_th_driver** %4, align 8
  %109 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %108, i32 0, i32 2
  %110 = load i32 (%struct.intel_th_device.1*)*, i32 (%struct.intel_th_device.1*)** %109, align 8
  %111 = load %struct.intel_th_device.2*, %struct.intel_th_device.2** %5, align 8
  %112 = bitcast %struct.intel_th_device.2* %111 to %struct.intel_th_device.1*
  %113 = call i32 %110(%struct.intel_th_device.1* %112)
  br label %114

114:                                              ; preds = %107, %104
  br label %115

115:                                              ; preds = %114, %66
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.device*, %struct.device** %3, align 8
  %120 = call i32 @pm_runtime_disable(%struct.device* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %42
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.intel_th_driver* @to_intel_th_driver(i32) #1

declare dso_local %struct.intel_th_device.2* @to_intel_th_device(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i64) #1

declare dso_local i32 @intel_th_output_assigned(%struct.intel_th_device.2*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
