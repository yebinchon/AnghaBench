; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_initialize_power_tune_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_initialize_power_tune_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device*, i64 }
%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ci_smumgr = type { i32* }

@defaults_hawaii_pro = common dso_local global i32 0, align 4
@defaults_hawaii_xt = common dso_local global i32 0, align 4
@defaults_saturn_xt = common dso_local global i32 0, align 4
@defaults_bonaire_xt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @ci_initialize_power_tune_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_initialize_power_tune_defaults(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.ci_smumgr*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ci_smumgr*
  store %struct.ci_smumgr* %9, %struct.ci_smumgr** %3, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %29 [
    i32 26554, label %19
    i32 26289, label %19
    i32 26552, label %22
    i32 26288, label %22
    i32 26176, label %25
    i32 26177, label %25
    i32 26182, label %25
    i32 26183, label %25
    i32 26185, label %28
    i32 26192, label %28
    i32 26193, label %28
    i32 26200, label %28
    i32 26204, label %28
    i32 26205, label %28
    i32 26528, label %28
    i32 26529, label %28
    i32 26530, label %28
    i32 26536, label %28
    i32 26537, label %28
    i32 26538, label %28
    i32 26553, label %28
    i32 26558, label %28
  ]

19:                                               ; preds = %1, %1
  %20 = load %struct.ci_smumgr*, %struct.ci_smumgr** %3, align 8
  %21 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %20, i32 0, i32 0
  store i32* @defaults_hawaii_pro, i32** %21, align 8
  br label %32

22:                                               ; preds = %1, %1
  %23 = load %struct.ci_smumgr*, %struct.ci_smumgr** %3, align 8
  %24 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %23, i32 0, i32 0
  store i32* @defaults_hawaii_xt, i32** %24, align 8
  br label %32

25:                                               ; preds = %1, %1, %1, %1
  %26 = load %struct.ci_smumgr*, %struct.ci_smumgr** %3, align 8
  %27 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %26, i32 0, i32 0
  store i32* @defaults_saturn_xt, i32** %27, align 8
  br label %32

28:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %29

29:                                               ; preds = %1, %28
  %30 = load %struct.ci_smumgr*, %struct.ci_smumgr** %3, align 8
  %31 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %30, i32 0, i32 0
  store i32* @defaults_bonaire_xt, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %25, %22, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
