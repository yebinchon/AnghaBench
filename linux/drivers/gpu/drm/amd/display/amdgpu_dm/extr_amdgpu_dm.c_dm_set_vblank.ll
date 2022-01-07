; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_set_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_set_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_crtc = type { i32 }
%struct.dm_crtc_state = type { i32 }

@IRQ_TYPE_VBLANK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32)* @dm_set_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_set_vblank(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_crtc*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.dm_crtc_state*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %11)
  store %struct.amdgpu_crtc* %12, %struct.amdgpu_crtc** %7, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %8, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.dm_crtc_state* @to_dm_crtc_state(i32 %20)
  store %struct.dm_crtc_state* %21, %struct.dm_crtc_state** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %9, align 8
  %26 = call i64 @amdgpu_dm_vrr_active(%struct.dm_crtc_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %30 = call i32 @dm_set_vupdate_irq(%struct.drm_crtc* %29, i32 1)
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %34 = call i32 @dm_set_vupdate_irq(%struct.drm_crtc* %33, i32 0)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %35
  %41 = load i32, i32* @IRQ_TYPE_VBLANK, align 4
  %42 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @dc_interrupt_set(i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  br label %58

58:                                               ; preds = %55, %54
  %59 = phi i32 [ 0, %54 ], [ %57, %55 ]
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %38
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(i32) #1

declare dso_local i64 @amdgpu_dm_vrr_active(%struct.dm_crtc_state*) #1

declare dso_local i32 @dm_set_vupdate_irq(%struct.drm_crtc*, i32) #1

declare dso_local i64 @dc_interrupt_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
