; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c__stage_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c__stage_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dpu_lm_sub_blks* }
%struct.dpu_lm_sub_blks = type { i32, i32* }

@DPU_STAGE_BASE = common dso_local global i32 0, align 4
@DPU_STAGE_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_mixer*, i32)* @_stage_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_stage_offset(%struct.dpu_hw_mixer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpu_hw_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_lm_sub_blks*, align 8
  store %struct.dpu_hw_mixer* %0, %struct.dpu_hw_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %4, align 8
  %8 = getelementptr inbounds %struct.dpu_hw_mixer, %struct.dpu_hw_mixer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.dpu_lm_sub_blks*, %struct.dpu_lm_sub_blks** %10, align 8
  store %struct.dpu_lm_sub_blks* %11, %struct.dpu_lm_sub_blks** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DPU_STAGE_BASE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.dpu_lm_sub_blks*, %struct.dpu_lm_sub_blks** %6, align 8
  %18 = getelementptr inbounds %struct.dpu_lm_sub_blks, %struct.dpu_lm_sub_blks* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ule i32 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.dpu_lm_sub_blks*, %struct.dpu_lm_sub_blks** %6, align 8
  %23 = getelementptr inbounds %struct.dpu_lm_sub_blks, %struct.dpu_lm_sub_blks* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @DPU_STAGE_0, align 4
  %27 = sub i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %15, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
