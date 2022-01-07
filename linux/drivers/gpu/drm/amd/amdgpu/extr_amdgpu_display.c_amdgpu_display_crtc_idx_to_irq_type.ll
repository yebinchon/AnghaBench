; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_crtc_idx_to_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_crtc_idx_to_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMDGPU_CRTC_IRQ_NONE = common dso_local global i32 0, align 4
@AMDGPU_CRTC_IRQ_VBLANK1 = common dso_local global i32 0, align 4
@AMDGPU_CRTC_IRQ_VBLANK2 = common dso_local global i32 0, align 4
@AMDGPU_CRTC_IRQ_VBLANK3 = common dso_local global i32 0, align 4
@AMDGPU_CRTC_IRQ_VBLANK4 = common dso_local global i32 0, align 4
@AMDGPU_CRTC_IRQ_VBLANK5 = common dso_local global i32 0, align 4
@AMDGPU_CRTC_IRQ_VBLANK6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %9, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8, %2
  %16 = load i32, i32* @AMDGPU_CRTC_IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %31 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %23
    i32 3, label %25
    i32 4, label %27
    i32 5, label %29
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @AMDGPU_CRTC_IRQ_VBLANK1, align 4
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %17
  %22 = load i32, i32* @AMDGPU_CRTC_IRQ_VBLANK2, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %17
  %24 = load i32, i32* @AMDGPU_CRTC_IRQ_VBLANK3, align 4
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %17
  %26 = load i32, i32* @AMDGPU_CRTC_IRQ_VBLANK4, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %17
  %28 = load i32, i32* @AMDGPU_CRTC_IRQ_VBLANK5, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %17
  %30 = load i32, i32* @AMDGPU_CRTC_IRQ_VBLANK6, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %17
  %32 = load i32, i32* @AMDGPU_CRTC_IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29, %27, %25, %23, %21, %19, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
