; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_get_static_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_get_static_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.amd_pp_clock_info*)* }
%struct.amd_pp_clock_info = type { i32, i32, i32, i32 }
%struct.dm_pp_static_clock_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pp_get_static_clocks(%struct.dc_context* %0, %struct.dm_pp_static_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.dm_pp_static_clock_info*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amd_pp_clock_info, align 4
  %8 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.dm_pp_static_clock_info* %1, %struct.dm_pp_static_clock_info** %5, align 8
  %9 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %10 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = bitcast %struct.amd_pp_clock_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (i32, %struct.amd_pp_clock_info*)*, i32 (i32, %struct.amd_pp_clock_info*)** %23, align 8
  %25 = icmp ne i32 (i32, %struct.amd_pp_clock_info*)* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (i32, %struct.amd_pp_clock_info*)*, i32 (i32, %struct.amd_pp_clock_info*)** %31, align 8
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %32(i32 %36, %struct.amd_pp_clock_info* %7)
  store i32 %37, i32* %8, align 4
  br label %49

38:                                               ; preds = %18, %2
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = call i32 @smu_get_current_clocks(%struct.TYPE_6__* %46, %struct.amd_pp_clock_info* %7)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %69

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %7, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pp_to_dc_powerlevel_state(i32 %55)
  %57 = load %struct.dm_pp_static_clock_info*, %struct.dm_pp_static_clock_info** %5, align 8
  %58 = getelementptr inbounds %struct.dm_pp_static_clock_info, %struct.dm_pp_static_clock_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 10
  %62 = load %struct.dm_pp_static_clock_info*, %struct.dm_pp_static_clock_info** %5, align 8
  %63 = getelementptr inbounds %struct.dm_pp_static_clock_info, %struct.dm_pp_static_clock_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.amd_pp_clock_info, %struct.amd_pp_clock_info* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 10
  %67 = load %struct.dm_pp_static_clock_info*, %struct.dm_pp_static_clock_info** %5, align 8
  %68 = getelementptr inbounds %struct.dm_pp_static_clock_info, %struct.dm_pp_static_clock_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %53, %52
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @smu_get_current_clocks(%struct.TYPE_6__*, %struct.amd_pp_clock_info*) #2

declare dso_local i32 @pp_to_dc_powerlevel_state(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
