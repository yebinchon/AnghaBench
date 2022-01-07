; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_vready_at_or_After_vsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_vready_at_or_After_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct._vcs_dpi_display_pipe_dest_params_st = type { i64, i64, i64, i64, i64, i64 }
%struct.dcn20_hubp = type { i32 }

@HUBPREQ_DEBUG_DB = common dso_local global i32 0, align 4
@DCHUBP_CNTL = common dso_local global i32 0, align 4
@HUBP_VREADY_AT_OR_AFTER_VSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp2_vready_at_or_After_vsync(%struct.hubp* %0, %struct._vcs_dpi_display_pipe_dest_params_st* %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct._vcs_dpi_display_pipe_dest_params_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcn20_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store %struct._vcs_dpi_display_pipe_dest_params_st* %1, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.hubp*, %struct.hubp** %3, align 8
  %8 = call %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp* %7)
  store %struct.dcn20_hubp* %8, %struct.dcn20_hubp** %6, align 8
  %9 = load i32, i32* @HUBPREQ_DEBUG_DB, align 4
  %10 = call i32 @REG_WRITE(i32 %9, i32 256)
  %11 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %12 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %15 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %18 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %22 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %26 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = sdiv i64 %24, %27
  %29 = sub nsw i64 %13, %28
  %30 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %31 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* @DCHUBP_CNTL, align 4
  %38 = load i32, i32* @HUBP_VREADY_AT_OR_AFTER_VSYNC, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @REG_UPDATE(i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
