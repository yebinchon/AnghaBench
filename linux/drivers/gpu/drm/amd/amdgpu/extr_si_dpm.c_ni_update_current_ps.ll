; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_ni_update_current_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_ni_update_current_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_ps* }
%struct.amdgpu_ps = type { %struct.si_ps* }
%struct.si_ps = type { i32 }
%struct.evergreen_power_info = type { %struct.amdgpu_ps }
%struct.ni_power_info = type { %struct.si_ps }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ps*)* @ni_update_current_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_update_current_ps(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ps*, align 8
  %5 = alloca %struct.si_ps*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca %struct.ni_power_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %4, align 8
  %8 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %9 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %8)
  store %struct.si_ps* %9, %struct.si_ps** %5, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device* %10)
  store %struct.evergreen_power_info* %11, %struct.evergreen_power_info** %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = call %struct.ni_power_info* @ni_get_pi(%struct.amdgpu_device* %12)
  store %struct.ni_power_info* %13, %struct.ni_power_info** %7, align 8
  %14 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %15 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %17 = bitcast %struct.amdgpu_ps* %15 to i8*
  %18 = bitcast %struct.amdgpu_ps* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %20 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %19, i32 0, i32 0
  %21 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %22 = bitcast %struct.si_ps* %20 to i8*
  %23 = bitcast %struct.si_ps* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %25 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %24, i32 0, i32 0
  %26 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %27 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %27, i32 0, i32 0
  store %struct.si_ps* %25, %struct.si_ps** %28, align 8
  %29 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %30 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %29, i32 0, i32 0
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.amdgpu_ps* %30, %struct.amdgpu_ps** %34, align 8
  ret void
}

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.amdgpu_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.amdgpu_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
