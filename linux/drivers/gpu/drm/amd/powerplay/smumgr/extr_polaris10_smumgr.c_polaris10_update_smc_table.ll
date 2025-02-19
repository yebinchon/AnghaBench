; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_polaris10_smumgr.c_polaris10_update_smc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_polaris10_smumgr.c_polaris10_update_smc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @polaris10_update_smc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @polaris10_update_smc_table(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %15 [
    i32 129, label %6
    i32 128, label %9
    i32 130, label %12
  ]

6:                                                ; preds = %2
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = call i32 @polaris10_update_uvd_smc_table(%struct.pp_hwmgr* %7)
  br label %16

9:                                                ; preds = %2
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = call i32 @polaris10_update_vce_smc_table(%struct.pp_hwmgr* %10)
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = call i32 @polaris10_update_bif_smc_table(%struct.pp_hwmgr* %13)
  br label %15

15:                                               ; preds = %2, %12
  br label %16

16:                                               ; preds = %15, %9, %6
  ret i32 0
}

declare dso_local i32 @polaris10_update_uvd_smc_table(%struct.pp_hwmgr*) #1

declare dso_local i32 @polaris10_update_vce_smc_table(%struct.pp_hwmgr*) #1

declare dso_local i32 @polaris10_update_bif_smc_table(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
