; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_update_requested_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_update_requested_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { %struct.ci_ps* }
%struct.ci_ps = type { i32 }
%struct.ci_power_info = type { %struct.ci_ps, %struct.radeon_ps }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @ci_update_requested_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_update_requested_ps(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.ci_ps*, align 8
  %6 = alloca %struct.ci_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %7 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %8 = call %struct.ci_ps* @ci_get_ps(%struct.radeon_ps* %7)
  store %struct.ci_ps* %8, %struct.ci_ps** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %9)
  store %struct.ci_power_info* %10, %struct.ci_power_info** %6, align 8
  %11 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %12 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %11, i32 0, i32 1
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %14 = bitcast %struct.radeon_ps* %12 to i8*
  %15 = bitcast %struct.radeon_ps* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %17 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %16, i32 0, i32 0
  %18 = load %struct.ci_ps*, %struct.ci_ps** %5, align 8
  %19 = bitcast %struct.ci_ps* %17 to i8*
  %20 = bitcast %struct.ci_ps* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %22 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %21, i32 0, i32 0
  %23 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %24 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %24, i32 0, i32 0
  store %struct.ci_ps* %22, %struct.ci_ps** %25, align 8
  ret void
}

declare dso_local %struct.ci_ps* @ci_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
