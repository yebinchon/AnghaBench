; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_pre_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_pre_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.evergreen_power_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_dpm_pre_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_power_info*, align 8
  %4 = alloca %struct.radeon_ps, align 4
  %5 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %6)
  store %struct.evergreen_power_info* %7, %struct.evergreen_power_info** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %11, align 8
  %13 = bitcast %struct.radeon_ps* %4 to i8*
  %14 = bitcast %struct.radeon_ps* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  store %struct.radeon_ps* %4, %struct.radeon_ps** %5, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %17 = call i32 @btc_update_requested_ps(%struct.radeon_device* %15, %struct.radeon_ps* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %20 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %19, i32 0, i32 0
  %21 = call i32 @btc_apply_state_adjust_rules(%struct.radeon_device* %18, i32* %20)
  ret i32 0
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @btc_update_requested_ps(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @btc_apply_state_adjust_rules(%struct.radeon_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
