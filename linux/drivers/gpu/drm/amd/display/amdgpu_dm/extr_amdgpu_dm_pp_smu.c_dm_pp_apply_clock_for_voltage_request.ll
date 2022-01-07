; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_apply_clock_for_voltage_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_dm_pp_apply_clock_for_voltage_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.pp_display_clock_request*)* }
%struct.pp_display_clock_request = type { i32, i32, i32 }
%struct.dm_pp_clock_for_voltage_req = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pp_apply_clock_for_voltage_request(%struct.dc_context* %0, %struct.dm_pp_clock_for_voltage_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.dm_pp_clock_for_voltage_req*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.pp_display_clock_request, align 4
  %8 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.dm_pp_clock_for_voltage_req* %1, %struct.dm_pp_clock_for_voltage_req** %5, align 8
  %9 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %10 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = bitcast %struct.pp_display_clock_request* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  store i32 0, i32* %8, align 4
  %13 = load %struct.dm_pp_clock_for_voltage_req*, %struct.dm_pp_clock_for_voltage_req** %5, align 8
  %14 = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, %struct.dm_pp_clock_for_voltage_req* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dc_to_pp_clock_type(i32 %15)
  %17 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.dm_pp_clock_for_voltage_req*, %struct.dm_pp_clock_for_voltage_req** %5, align 8
  %19 = getelementptr inbounds %struct.dm_pp_clock_for_voltage_req, %struct.dm_pp_clock_for_voltage_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.pp_display_clock_request, %struct.pp_display_clock_request* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (i32, %struct.pp_display_clock_request*)*, i32 (i32, %struct.pp_display_clock_request*)** %37, align 8
  %39 = icmp ne i32 (i32, %struct.pp_display_clock_request*)* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (i32, %struct.pp_display_clock_request*)*, i32 (i32, %struct.pp_display_clock_request*)** %45, align 8
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %46(i32 %50, %struct.pp_display_clock_request* %7)
  store i32 %51, i32* %8, align 4
  br label %71

52:                                               ; preds = %32, %26
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = call i32 @smu_display_clock_voltage_request(%struct.TYPE_8__* %68, %struct.pp_display_clock_request* %7)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %58, %52
  br label %71

71:                                               ; preds = %70, %40
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %76

75:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %74, %25
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dc_to_pp_clock_type(i32) #2

declare dso_local i32 @smu_display_clock_voltage_request(%struct.TYPE_8__*, %struct.pp_display_clock_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
