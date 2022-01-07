; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_th_driver = type { i32 (%struct.intel_th_device*, %struct.intel_th_device*)*, i32 (%struct.intel_th_device.0*)*, i64 }
%struct.intel_th_device = type opaque
%struct.intel_th_device.0 = type opaque
%struct.intel_th_device.1 = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.intel_th = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }

@INTEL_TH_SWITCH = common dso_local global i64 0, align 8
@intel_th_child_remove = common dso_local global i32 0, align 4
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @intel_th_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.intel_th_driver*, align 8
  %5 = alloca %struct.intel_th_device.1*, align 8
  %6 = alloca %struct.intel_th_device.1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_th*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_th_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.intel_th_driver* @to_intel_th_driver(i32 %14)
  store %struct.intel_th_driver* %15, %struct.intel_th_driver** %4, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call %struct.intel_th_device.1* @to_intel_th_device(%struct.device* %16)
  store %struct.intel_th_device.1* %17, %struct.intel_th_device.1** %5, align 8
  %18 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %5, align 8
  %19 = call %struct.intel_th_device.1* @to_intel_th_hub(%struct.intel_th_device.1* %18)
  store %struct.intel_th_device.1* %19, %struct.intel_th_device.1** %6, align 8
  %20 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %5, align 8
  %21 = getelementptr inbounds %struct.intel_th_device.1, %struct.intel_th_device.1* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INTEL_TH_SWITCH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %112

25:                                               ; preds = %1
  %26 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %6, align 8
  %27 = call %struct.intel_th* @to_intel_th(%struct.intel_th_device.1* %26)
  store %struct.intel_th* %27, %struct.intel_th** %8, align 8
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %5, align 8
  %30 = load i32, i32* @intel_th_child_remove, align 4
  %31 = call i32 @device_for_each_child(%struct.device* %28, %struct.intel_th_device.1* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %166

36:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %37

37:                                               ; preds = %101, %36
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %40 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %104

43:                                               ; preds = %37
  %44 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %45 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %60 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %67 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %68, i64 %70
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %71, align 8
  %72 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %73 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %74, i64 %76
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %58, %55
  br label %101

81:                                               ; preds = %43
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %88 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %89, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @intel_th_device_remove(%struct.TYPE_6__* %93)
  %95 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %96 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 %99
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %100, align 8
  br label %101

101:                                              ; preds = %86, %80
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %37

104:                                              ; preds = %37
  %105 = load i32, i32* %10, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.intel_th*, %struct.intel_th** %8, align 8
  %110 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %111, %1
  %113 = load %struct.intel_th_driver*, %struct.intel_th_driver** %4, align 8
  %114 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %5, align 8
  %119 = getelementptr inbounds %struct.intel_th_device.1, %struct.intel_th_device.1* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load %struct.intel_th_driver*, %struct.intel_th_driver** %4, align 8
  %122 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @sysfs_remove_group(i32* %120, i64 %123)
  br label %125

125:                                              ; preds = %117, %112
  %126 = load %struct.device*, %struct.device** %3, align 8
  %127 = call i32 @pm_runtime_get_sync(%struct.device* %126)
  %128 = load %struct.intel_th_driver*, %struct.intel_th_driver** %4, align 8
  %129 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %128, i32 0, i32 1
  %130 = load i32 (%struct.intel_th_device.0*)*, i32 (%struct.intel_th_device.0*)** %129, align 8
  %131 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %5, align 8
  %132 = bitcast %struct.intel_th_device.1* %131 to %struct.intel_th_device.0*
  %133 = call i32 %130(%struct.intel_th_device.0* %132)
  %134 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %5, align 8
  %135 = call i64 @intel_th_output_assigned(%struct.intel_th_device.1* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %125
  %138 = load %struct.device*, %struct.device** %3, align 8
  %139 = getelementptr inbounds %struct.device, %struct.device* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call %struct.intel_th_driver* @to_intel_th_driver(i32 %142)
  store %struct.intel_th_driver* %143, %struct.intel_th_driver** %11, align 8
  %144 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %6, align 8
  %145 = getelementptr inbounds %struct.intel_th_device.1, %struct.intel_th_device.1* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %137
  %150 = load %struct.intel_th_driver*, %struct.intel_th_driver** %11, align 8
  %151 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %150, i32 0, i32 0
  %152 = load i32 (%struct.intel_th_device*, %struct.intel_th_device*)*, i32 (%struct.intel_th_device*, %struct.intel_th_device*)** %151, align 8
  %153 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %6, align 8
  %154 = bitcast %struct.intel_th_device.1* %153 to %struct.intel_th_device*
  %155 = load %struct.intel_th_device.1*, %struct.intel_th_device.1** %5, align 8
  %156 = bitcast %struct.intel_th_device.1* %155 to %struct.intel_th_device*
  %157 = call i32 %152(%struct.intel_th_device* %154, %struct.intel_th_device* %156)
  br label %158

158:                                              ; preds = %149, %137
  br label %159

159:                                              ; preds = %158, %125
  %160 = load %struct.device*, %struct.device** %3, align 8
  %161 = call i32 @pm_runtime_disable(%struct.device* %160)
  %162 = load %struct.device*, %struct.device** %3, align 8
  %163 = call i32 @pm_runtime_set_active(%struct.device* %162)
  %164 = load %struct.device*, %struct.device** %3, align 8
  %165 = call i32 @pm_runtime_enable(%struct.device* %164)
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %159, %34
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.intel_th_driver* @to_intel_th_driver(i32) #1

declare dso_local %struct.intel_th_device.1* @to_intel_th_device(%struct.device*) #1

declare dso_local %struct.intel_th_device.1* @to_intel_th_hub(%struct.intel_th_device.1*) #1

declare dso_local %struct.intel_th* @to_intel_th(%struct.intel_th_device.1*) #1

declare dso_local i32 @device_for_each_child(%struct.device*, %struct.intel_th_device.1*, i32) #1

declare dso_local i32 @intel_th_device_remove(%struct.TYPE_6__*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i64) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i64 @intel_th_output_assigned(%struct.intel_th_device.1*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
