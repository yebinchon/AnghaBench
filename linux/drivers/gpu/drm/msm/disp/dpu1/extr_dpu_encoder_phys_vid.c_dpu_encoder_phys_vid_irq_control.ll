; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_irq_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_vid.c_dpu_encoder_phys_vid_irq_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@INTF_0 = common dso_local global i64 0, align 8
@INTR_IDX_UNDERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*, i32)* @dpu_encoder_phys_vid_irq_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_vid_irq_control(%struct.dpu_encoder_phys* %0, i32 %1) #0 {
  %3 = alloca %struct.dpu_encoder_phys*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %44

9:                                                ; preds = %2
  %10 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @DRMID(i32 %12)
  %14 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INTF_0, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %23 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %22, i32 0, i32 0
  %24 = call i32 @atomic_read(i32* %23)
  %25 = call i32 @trace_dpu_enc_phys_vid_irq_ctrl(i32 %13, i64 %20, i32 %21, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %9
  %29 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %30 = call i32 @dpu_encoder_phys_vid_control_vblank_irq(%struct.dpu_encoder_phys* %29, i32 1)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %44

34:                                               ; preds = %28
  %35 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %36 = load i32, i32* @INTR_IDX_UNDERRUN, align 4
  %37 = call i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys* %35, i32 %36)
  br label %44

38:                                               ; preds = %9
  %39 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %40 = call i32 @dpu_encoder_phys_vid_control_vblank_irq(%struct.dpu_encoder_phys* %39, i32 0)
  %41 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %3, align 8
  %42 = load i32, i32* @INTR_IDX_UNDERRUN, align 4
  %43 = call i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys* %41, i32 %42)
  br label %44

44:                                               ; preds = %8, %33, %38, %34
  ret void
}

declare dso_local i32 @trace_dpu_enc_phys_vid_irq_ctrl(i32, i64, i32, i32) #1

declare dso_local i32 @DRMID(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dpu_encoder_phys_vid_control_vblank_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i32 @dpu_encoder_helper_register_irq(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i32 @dpu_encoder_helper_unregister_irq(%struct.dpu_encoder_phys*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
