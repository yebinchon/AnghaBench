; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_toggle_vblank_for_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_toggle_vblank_for_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.dpu_encoder_phys**, i32, %struct.drm_crtc* }
%struct.dpu_encoder_phys = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_encoder_phys*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_toggle_vblank_for_crtc(%struct.drm_encoder* %0, %struct.drm_crtc* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_encoder_virt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpu_encoder_phys*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %11)
  store %struct.dpu_encoder_virt* %12, %struct.dpu_encoder_virt** %7, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = call i32 @DRMID(%struct.drm_encoder* %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @trace_dpu_enc_vblank_cb(i32 %14, i32 %15)
  %17 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %18 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %17, i32 0, i32 2
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %22 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %21, i32 0, i32 3
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %22, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %25 = icmp ne %struct.drm_crtc* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %28 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %27, i32 0, i32 2
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %70

31:                                               ; preds = %3
  %32 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %33 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %32, i32 0, i32 2
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %67, %31
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %39 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %44 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %43, i32 0, i32 1
  %45 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %45, i64 %47
  %49 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %48, align 8
  store %struct.dpu_encoder_phys* %49, %struct.dpu_encoder_phys** %10, align 8
  %50 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %10, align 8
  %51 = icmp ne %struct.dpu_encoder_phys* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %10, align 8
  %54 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dpu_encoder_phys*, i32)*, i32 (%struct.dpu_encoder_phys*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.dpu_encoder_phys*, i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %10, align 8
  %60 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.dpu_encoder_phys*, i32)*, i32 (%struct.dpu_encoder_phys*, i32)** %61, align 8
  %63 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 %62(%struct.dpu_encoder_phys* %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %52, %42
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %36

70:                                               ; preds = %26, %36
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @trace_dpu_enc_vblank_cb(i32, i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
