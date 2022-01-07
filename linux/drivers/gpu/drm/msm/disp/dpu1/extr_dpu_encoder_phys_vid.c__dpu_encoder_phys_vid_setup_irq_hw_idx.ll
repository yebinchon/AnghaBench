; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c__dpu_encoder_phys_vid_setup_irq_hw_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c__dpu_encoder_phys_vid_setup_irq_hw_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.dpu_encoder_irq* }
%struct.dpu_encoder_irq = type { i64, i32 }

@INTR_IDX_VSYNC = common dso_local global i64 0, align 8
@INTR_IDX_UNDERRUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @_dpu_encoder_phys_vid_setup_irq_hw_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_phys_vid_setup_irq_hw_idx(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_encoder_irq*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %4 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %5 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %4, i32 0, i32 1
  %6 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %5, align 8
  %7 = load i64, i64* @INTR_IDX_VSYNC, align 8
  %8 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %6, i64 %7
  store %struct.dpu_encoder_irq* %8, %struct.dpu_encoder_irq** %3, align 8
  %9 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %3, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %3, align 8
  %18 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %20, i32 0, i32 1
  %22 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %21, align 8
  %23 = load i64, i64* @INTR_IDX_UNDERRUN, align 8
  %24 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %22, i64 %23
  store %struct.dpu_encoder_irq* %24, %struct.dpu_encoder_irq** %3, align 8
  %25 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %3, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %31 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dpu_encoder_irq*, %struct.dpu_encoder_irq** %3, align 8
  %34 = getelementptr inbounds %struct.dpu_encoder_irq, %struct.dpu_encoder_irq* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
