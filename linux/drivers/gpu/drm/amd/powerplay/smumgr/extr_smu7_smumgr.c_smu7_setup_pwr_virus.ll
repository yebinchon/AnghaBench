; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_setup_pwr_virus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_setup_pwr_virus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@pwr_virus_table_pre = common dso_local global i32 0, align 4
@pwr_virus_section1 = common dso_local global i32 0, align 4
@pwr_virus_section2 = common dso_local global i32 0, align 4
@pwr_virus_section3 = common dso_local global i32 0, align 4
@pwr_virus_section4 = common dso_local global i32 0, align 4
@pwr_virus_section5 = common dso_local global i32 0, align 4
@pwr_virus_section6 = common dso_local global i32 0, align 4
@pwr_virus_table_post = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_setup_pwr_virus(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %4 = load i32, i32* @pwr_virus_table_pre, align 4
  %5 = load i32, i32* @pwr_virus_table_pre, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = call i32 @execute_pwr_table(%struct.pp_hwmgr* %3, i32 %4, i32 %6)
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = call i32 @execute_pwr_dfy_table(%struct.pp_hwmgr* %8, i32* @pwr_virus_section1)
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = call i32 @execute_pwr_dfy_table(%struct.pp_hwmgr* %10, i32* @pwr_virus_section2)
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = call i32 @execute_pwr_dfy_table(%struct.pp_hwmgr* %12, i32* @pwr_virus_section3)
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = call i32 @execute_pwr_dfy_table(%struct.pp_hwmgr* %14, i32* @pwr_virus_section4)
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = call i32 @execute_pwr_dfy_table(%struct.pp_hwmgr* %16, i32* @pwr_virus_section5)
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = call i32 @execute_pwr_dfy_table(%struct.pp_hwmgr* %18, i32* @pwr_virus_section6)
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %21 = load i32, i32* @pwr_virus_table_post, align 4
  %22 = load i32, i32* @pwr_virus_table_post, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @execute_pwr_table(%struct.pp_hwmgr* %20, i32 %21, i32 %23)
  ret i32 0
}

declare dso_local i32 @execute_pwr_table(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @execute_pwr_dfy_table(%struct.pp_hwmgr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
