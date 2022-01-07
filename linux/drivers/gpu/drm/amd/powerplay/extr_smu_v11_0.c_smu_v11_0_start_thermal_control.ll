; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_start_thermal_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_start_thermal_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_5__, i32, %struct.amdgpu_device* }
%struct.TYPE_5__ = type { i64 }
%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu_temperature_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@smu11_thermal_policy = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_start_thermal_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_start_thermal_control(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_temperature_range, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 2
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %6, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %119

16:                                               ; preds = %1
  %17 = load i32*, i32** @smu11_thermal_policy, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @memcpy(%struct.smu_temperature_range* %5, i32* %18, i32 36)
  %20 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %21 = call i32 @smu_get_thermal_temperature_range(%struct.smu_context* %20, %struct.smu_temperature_range* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %119

26:                                               ; preds = %16
  %27 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %28 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %34 = call i32 @smu_v11_0_set_thermal_range(%struct.smu_context* %33, %struct.smu_temperature_range* byval(%struct.smu_temperature_range) align 8 %5)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %119

39:                                               ; preds = %32
  %40 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %41 = call i32 @smu_v11_0_enable_thermal_alert(%struct.smu_context* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %119

46:                                               ; preds = %39
  %47 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %48 = call i32 @smu_set_thermal_fan_table(%struct.smu_context* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %119

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %26
  %55 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  store i32 %56, i32* %61, align 4
  %62 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 7
  store i32 %63, i32* %68, align 4
  %69 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  store i32 %70, i32* %75, align 4
  %76 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store i32 %77, i32* %82, align 4
  %83 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  store i32 %84, i32* %89, align 4
  %90 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  store i32 %91, i32* %96, align 4
  %97 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i32 %98, i32* %103, align 4
  %104 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i32 %105, i32* %110, align 4
  %111 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %5, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %54, %51, %44, %37, %24, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @memcpy(%struct.smu_temperature_range*, i32*, i32) #1

declare dso_local i32 @smu_get_thermal_temperature_range(%struct.smu_context*, %struct.smu_temperature_range*) #1

declare dso_local i32 @smu_v11_0_set_thermal_range(%struct.smu_context*, %struct.smu_temperature_range* byval(%struct.smu_temperature_range) align 8) #1

declare dso_local i32 @smu_v11_0_enable_thermal_alert(%struct.smu_context*) #1

declare dso_local i32 @smu_set_thermal_fan_table(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
