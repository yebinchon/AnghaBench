; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_vready_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_vready_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct._vcs_dpi_display_pipe_dest_params_st = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn10_hubp = type { i32 }

@HUBPREQ_DEBUG_DB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp1_vready_workaround(%struct.hubp* %0, %struct._vcs_dpi_display_pipe_dest_params_st* %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct._vcs_dpi_display_pipe_dest_params_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcn10_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store %struct._vcs_dpi_display_pipe_dest_params_st* %1, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.hubp*, %struct.hubp** %3, align 8
  %8 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %7)
  store %struct.dcn10_hubp* %8, %struct.dcn10_hubp** %6, align 8
  %9 = load i32, i32* @HUBPREQ_DEBUG_DB, align 4
  %10 = call i32 @REG_READ(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, 256
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -4097
  store i32 %14, i32* %5, align 4
  %15 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %16 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %19 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %22 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %26 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = mul nsw i32 2, %28
  %30 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %31 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  %34 = sub nsw i32 %17, %33
  %35 = load %struct._vcs_dpi_display_pipe_dest_params_st*, %struct._vcs_dpi_display_pipe_dest_params_st** %4, align 8
  %36 = getelementptr inbounds %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_display_pipe_dest_params_st* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 4096
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32, i32* @HUBPREQ_DEBUG_DB, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @REG_WRITE(i32 %43, i32 %44)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
