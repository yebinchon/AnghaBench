; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_init_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_init_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys_ops = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dpu_encoder_phys_vid_is_master = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_mode_set = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_mode_fixup = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_enable = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_disable = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_destroy = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_get_hw_resources = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_control_vblank_irq = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_wait_for_commit_done = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_wait_for_vblank = common dso_local global i8* null, align 8
@dpu_encoder_phys_vid_irq_control = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_prepare_for_kickoff = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_handle_post_kickoff = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_needs_single_flush = common dso_local global i32 0, align 4
@dpu_encoder_phys_vid_get_line_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys_ops*)* @dpu_encoder_phys_vid_init_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_vid_init_ops(%struct.dpu_encoder_phys_ops* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys_ops*, align 8
  store %struct.dpu_encoder_phys_ops* %0, %struct.dpu_encoder_phys_ops** %2, align 8
  %3 = load i32, i32* @dpu_encoder_phys_vid_is_master, align 4
  %4 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %5 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %4, i32 0, i32 15
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @dpu_encoder_phys_vid_mode_set, align 4
  %7 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %8 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %7, i32 0, i32 14
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @dpu_encoder_phys_vid_mode_fixup, align 4
  %10 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @dpu_encoder_phys_vid_enable, align 4
  %13 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @dpu_encoder_phys_vid_disable, align 4
  %16 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @dpu_encoder_phys_vid_destroy, align 4
  %19 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %20 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @dpu_encoder_phys_vid_get_hw_resources, align 4
  %22 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %23 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @dpu_encoder_phys_vid_control_vblank_irq, align 4
  %25 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @dpu_encoder_phys_vid_wait_for_commit_done, align 4
  %28 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %29 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** @dpu_encoder_phys_vid_wait_for_vblank, align 8
  %31 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %32 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @dpu_encoder_phys_vid_wait_for_vblank, align 8
  %34 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %35 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @dpu_encoder_phys_vid_irq_control, align 4
  %37 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %38 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @dpu_encoder_phys_vid_prepare_for_kickoff, align 4
  %40 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %41 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @dpu_encoder_phys_vid_handle_post_kickoff, align 4
  %43 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %44 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @dpu_encoder_phys_vid_needs_single_flush, align 4
  %46 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %47 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @dpu_encoder_phys_vid_get_line_count, align 4
  %49 = load %struct.dpu_encoder_phys_ops*, %struct.dpu_encoder_phys_ops** %2, align 8
  %50 = getelementptr inbounds %struct.dpu_encoder_phys_ops, %struct.dpu_encoder_phys_ops* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
