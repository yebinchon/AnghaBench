; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_assign_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_assign_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.drm_crtc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_assign_crtc(%struct.drm_encoder* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.dpu_encoder_virt*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %7)
  store %struct.dpu_encoder_virt* %8, %struct.dpu_encoder_virt** %5, align 8
  %9 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %14 = icmp ne %struct.drm_crtc* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %17 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %16, i32 0, i32 1
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  %19 = icmp ne %struct.drm_crtc* %18, null
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ false, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %25 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %25, i32 0, i32 1
  store %struct.drm_crtc* %24, %struct.drm_crtc** %26, align 8
  %27 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %5, align 8
  %28 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
