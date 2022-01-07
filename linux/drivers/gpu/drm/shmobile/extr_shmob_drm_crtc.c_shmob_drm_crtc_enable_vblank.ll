; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_device = type { i32 }

@LDINTR = common dso_local global i32 0, align 4
@LDINTR_STATUS_MASK = common dso_local global i32 0, align 4
@LDINTR_VEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmob_drm_device*, i32)* @shmob_drm_crtc_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmob_drm_crtc_enable_vblank(%struct.shmob_drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.shmob_drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.shmob_drm_device* %0, %struct.shmob_drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %12 = load i32, i32* @LDINTR, align 4
  %13 = call i32 @lcdc_read(%struct.shmob_drm_device* %11, i32 %12)
  %14 = load i32, i32* @LDINTR_STATUS_MASK, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @LDINTR_VEE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @LDINTR_VEE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %29 = load i32, i32* @LDINTR, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @lcdc_write(%struct.shmob_drm_device* %28, i32 %29, i32 %30)
  %32 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %3, align 8
  %33 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lcdc_read(%struct.shmob_drm_device*, i32) #1

declare dso_local i32 @lcdc_write(%struct.shmob_drm_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
