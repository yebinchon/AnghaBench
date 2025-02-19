; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_pre_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_pre_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.amdgpu_ps* }
%struct.amdgpu_ps = type { i32 }
%struct.kv_power_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kv_dpm_pre_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_dpm_pre_set_power_state(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca %struct.amdgpu_ps, align 4
  %6 = alloca %struct.amdgpu_ps*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %9)
  store %struct.kv_power_info* %10, %struct.kv_power_info** %4, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %16 = bitcast %struct.amdgpu_ps* %5 to i8*
  %17 = bitcast %struct.amdgpu_ps* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  store %struct.amdgpu_ps* %5, %struct.amdgpu_ps** %6, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %20 = call i32 @kv_update_requested_ps(%struct.amdgpu_device* %18, %struct.amdgpu_ps* %19)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %23 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %22, i32 0, i32 1
  %24 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %25 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %24, i32 0, i32 0
  %26 = call i32 @kv_apply_state_adjust_rules(%struct.amdgpu_device* %21, i32* %23, i32* %25)
  ret i32 0
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kv_update_requested_ps(%struct.amdgpu_device*, %struct.amdgpu_ps*) #1

declare dso_local i32 @kv_apply_state_adjust_rules(%struct.amdgpu_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
