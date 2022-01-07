; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_get_vce_clock_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_get_vce_clock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_vce_state = type { i32 }
%struct.pp_hwmgr = type { i32, %struct.amd_vce_state*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amd_vce_state* (i8*, i32)* @pp_dpm_get_vce_clock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amd_vce_state* @pp_dpm_get_vce_clock_state(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.amd_vce_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %8, %struct.pp_hwmgr** %6, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %10 = icmp ne %struct.pp_hwmgr* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  store %struct.amd_vce_state* null, %struct.amd_vce_state** %3, align 8
  br label %31

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 1
  %26 = load %struct.amd_vce_state*, %struct.amd_vce_state** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.amd_vce_state, %struct.amd_vce_state* %26, i64 %28
  store %struct.amd_vce_state* %29, %struct.amd_vce_state** %3, align 8
  br label %31

30:                                               ; preds = %17
  store %struct.amd_vce_state* null, %struct.amd_vce_state** %3, align 8
  br label %31

31:                                               ; preds = %30, %23, %16
  %32 = load %struct.amd_vce_state*, %struct.amd_vce_state** %3, align 8
  ret %struct.amd_vce_state* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
