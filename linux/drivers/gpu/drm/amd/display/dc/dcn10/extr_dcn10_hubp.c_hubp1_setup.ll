; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct._vcs_dpi_display_dlg_regs_st = type { i32 }
%struct._vcs_dpi_display_ttu_regs_st = type { i32 }
%struct._vcs_dpi_display_rq_regs_st = type { i32 }
%struct._vcs_dpi_display_pipe_dest_params_st = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hubp*, %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_pipe_dest_params_st*)* @hubp1_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubp1_setup(%struct.hubp* %0, %struct._vcs_dpi_display_dlg_regs_st* %1, %struct._vcs_dpi_display_ttu_regs_st* %2, %struct._vcs_dpi_display_rq_regs_st* %3, %struct._vcs_dpi_display_pipe_dest_params_st* %4) #0 {
  %6 = alloca %struct.hubp*, align 8
  %7 = alloca %struct._vcs_dpi_display_dlg_regs_st*, align 8
  %8 = alloca %struct._vcs_dpi_display_ttu_regs_st*, align 8
  %9 = alloca %struct._vcs_dpi_display_rq_regs_st*, align 8
  %10 = alloca %struct._vcs_dpi_display_pipe_dest_params_st*, align 8
  store %struct.hubp* %0, %struct.hubp** %6, align 8
  store %struct._vcs_dpi_display_dlg_regs_st* %1, %struct._vcs_dpi_display_dlg_regs_st** %7, align 8
  store %struct._vcs_dpi_display_ttu_regs_st* %2, %struct._vcs_dpi_display_ttu_regs_st** %8, align 8
  store %struct._vcs_dpi_display_rq_regs_st* %3, %struct._vcs_dpi_display_rq_regs_st** %9, align 8
  store %struct._vcs_dpi_display_pipe_dest_params_st* %4, %struct._vcs_dpi_display_pipe_dest_params_st** %10, align 8
  %11 = load %struct.hubp*, %struct.hubp** %6, align 8
  %12 = load %struct._vcs_dpi_display_rq_regs_st*, %struct._vcs_dpi_display_rq_regs_st** %9, align 8
  %13 = call i32 @hubp1_program_requestor(%struct.hubp* %11, %struct._vcs_dpi_display_rq_regs_st* %12)
  %14 = load %struct.hubp*, %struct.hubp** %6, align 8
  %15 = load %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_dlg_regs_st** %7, align 8
  %16 = load %struct._vcs_dpi_display_ttu_regs_st*, %struct._vcs_dpi_display_ttu_regs_st** %8, align 8
  %17 = call i32 @hubp1_program_deadline(%struct.hubp* %14, %struct._vcs_dpi_display_dlg_regs_st* %15, %struct._vcs_dpi_display_ttu_regs_st* %16)
  %18 = load %struct.hubp*, %struct.hubp** %6, align 8
  %19 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %10, align 8
  %20 = call i32 @hubp1_vready_workaround(%struct.hubp* %18, %struct._vcs_dpi_display_pipe_dest_params_st* %19)
  ret void
}

declare dso_local i32 @hubp1_program_requestor(%struct.hubp*, %struct._vcs_dpi_display_rq_regs_st*) #1

declare dso_local i32 @hubp1_program_deadline(%struct.hubp*, %struct._vcs_dpi_display_dlg_regs_st*, %struct._vcs_dpi_display_ttu_regs_st*) #1

declare dso_local i32 @hubp1_vready_workaround(%struct.hubp*, %struct._vcs_dpi_display_pipe_dest_params_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
