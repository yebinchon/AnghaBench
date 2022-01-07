; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_init_workload_prority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_init_workload_prority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32*, i64* }

@PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_FULLSCREEN3D = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_POWERSAVING = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_VIDEO = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_VR = common dso_local global i64 0, align 8
@PP_SMC_POWER_PROFILE_COMPUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @hwmgr_init_workload_prority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwmgr_init_workload_prority(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %4 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  store i32 0, i32* %7, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @PP_SMC_POWER_PROFILE_FULLSCREEN3D, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 1, i32* %12, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @PP_SMC_POWER_PROFILE_POWERSAVING, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 2, i32* %17, align 4
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @PP_SMC_POWER_PROFILE_VIDEO, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 3, i32* %22, align 4
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @PP_SMC_POWER_PROFILE_VR, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 4, i32* %27, align 4
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @PP_SMC_POWER_PROFILE_COMPUTE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 5, i32* %32, align 4
  %33 = load i64, i64* @PP_SMC_POWER_PROFILE_BOOTUP_DEFAULT, align 8
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %33, i64* %37, align 8
  %38 = load i64, i64* @PP_SMC_POWER_PROFILE_FULLSCREEN3D, align 8
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %38, i64* %42, align 8
  %43 = load i64, i64* @PP_SMC_POWER_PROFILE_POWERSAVING, align 8
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* @PP_SMC_POWER_PROFILE_VIDEO, align 8
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 3
  store i64 %48, i64* %52, align 8
  %53 = load i64, i64* @PP_SMC_POWER_PROFILE_VR, align 8
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %55 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 4
  store i64 %53, i64* %57, align 8
  %58 = load i64, i64* @PP_SMC_POWER_PROFILE_COMPUTE, align 8
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 5
  store i64 %58, i64* %62, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
