; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_get_clock_levels_by_type_with_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_get_clock_levels_by_type_with_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.amd_pm_funcs*, i8* }
%struct.amd_pm_funcs = type { i32 (i8*, i32, %struct.pp_clock_levels_with_latency*)* }
%struct.pp_clock_levels_with_latency = type { i32 }
%struct.dm_pp_clock_levels_with_latency = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pp_get_clock_levels_by_type_with_latency(%struct.dc_context* %0, i32 %1, %struct.dm_pp_clock_levels_with_latency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_pp_clock_levels_with_latency*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pp_clock_levels_with_latency, align 4
  %11 = alloca %struct.amd_pm_funcs*, align 8
  %12 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dm_pp_clock_levels_with_latency* %2, %struct.dm_pp_clock_levels_with_latency** %7, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %14 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %8, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = bitcast %struct.pp_clock_levels_with_latency* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %23, align 8
  store %struct.amd_pm_funcs* %24, %struct.amd_pm_funcs** %11, align 8
  %25 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %11, align 8
  %26 = icmp ne %struct.amd_pm_funcs* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %3
  %28 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %11, align 8
  %29 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %28, i32 0, i32 0
  %30 = load i32 (i8*, i32, %struct.pp_clock_levels_with_latency*)*, i32 (i8*, i32, %struct.pp_clock_levels_with_latency*)** %29, align 8
  %31 = icmp ne i32 (i8*, i32, %struct.pp_clock_levels_with_latency*)* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %11, align 8
  %34 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %33, i32 0, i32 0
  %35 = load i32 (i8*, i32, %struct.pp_clock_levels_with_latency*)*, i32 (i8*, i32, %struct.pp_clock_levels_with_latency*)** %34, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dc_to_pp_clock_type(i32 %37)
  %39 = call i32 %35(i8* %36, i32 %38, %struct.pp_clock_levels_with_latency* %10)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %72

43:                                               ; preds = %32
  br label %68

44:                                               ; preds = %27, %3
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dc_to_smu_clock_type(i32 %61)
  %63 = call i64 @smu_get_clock_by_type_with_latency(%struct.TYPE_6__* %60, i32 %62, %struct.pp_clock_levels_with_latency* %10)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %72

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %50, %44
  br label %68

68:                                               ; preds = %67, %43
  %69 = load %struct.dm_pp_clock_levels_with_latency*, %struct.dm_pp_clock_levels_with_latency** %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @pp_to_dc_clock_levels_with_latency(%struct.pp_clock_levels_with_latency* %10, %struct.dm_pp_clock_levels_with_latency* %69, i32 %70)
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %65, %42
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dc_to_pp_clock_type(i32) #2

declare dso_local i64 @smu_get_clock_by_type_with_latency(%struct.TYPE_6__*, i32, %struct.pp_clock_levels_with_latency*) #2

declare dso_local i32 @dc_to_smu_clock_type(i32) #2

declare dso_local i32 @pp_to_dc_clock_levels_with_latency(%struct.pp_clock_levels_with_latency*, %struct.dm_pp_clock_levels_with_latency*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
