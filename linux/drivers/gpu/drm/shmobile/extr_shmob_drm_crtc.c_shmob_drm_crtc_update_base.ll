; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_update_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_update_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_crtc = type { i32*, %struct.TYPE_3__*, %struct.drm_crtc }
%struct.TYPE_3__ = type { i64 }
%struct.drm_crtc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.shmob_drm_device* }
%struct.shmob_drm_device = type { i32 }

@LDSA1R = common dso_local global i32 0, align 4
@LDSA2R = common dso_local global i32 0, align 4
@LDRCNTR = common dso_local global i32 0, align 4
@LDRCNTR_MRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmob_drm_crtc*)* @shmob_drm_crtc_update_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmob_drm_crtc_update_base(%struct.shmob_drm_crtc* %0) #0 {
  %2 = alloca %struct.shmob_drm_crtc*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.shmob_drm_device*, align 8
  store %struct.shmob_drm_crtc* %0, %struct.shmob_drm_crtc** %2, align 8
  %5 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %5, i32 0, i32 2
  store %struct.drm_crtc* %6, %struct.drm_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %10, align 8
  store %struct.shmob_drm_device* %11, %struct.shmob_drm_device** %4, align 8
  %12 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @shmob_drm_crtc_compute_base(%struct.shmob_drm_crtc* %12, i32 %15, i32 %18)
  %20 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %21 = load i32, i32* @LDSA1R, align 4
  %22 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %23 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lcdc_write_mirror(%struct.shmob_drm_device* %20, i32 %21, i32 %26)
  %28 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %29 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %36 = load i32, i32* @LDSA2R, align 4
  %37 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %2, align 8
  %38 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @lcdc_write_mirror(%struct.shmob_drm_device* %35, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %34, %1
  %44 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %45 = load i32, i32* @LDRCNTR, align 4
  %46 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %47 = load i32, i32* @LDRCNTR, align 4
  %48 = call i32 @lcdc_read(%struct.shmob_drm_device* %46, i32 %47)
  %49 = load i32, i32* @LDRCNTR_MRS, align 4
  %50 = xor i32 %48, %49
  %51 = call i32 @lcdc_write(%struct.shmob_drm_device* %44, i32 %45, i32 %50)
  ret void
}

declare dso_local i32 @shmob_drm_crtc_compute_base(%struct.shmob_drm_crtc*, i32, i32) #1

declare dso_local i32 @lcdc_write_mirror(%struct.shmob_drm_device*, i32, i32) #1

declare dso_local i32 @lcdc_write(%struct.shmob_drm_device*, i32, i32) #1

declare dso_local i32 @lcdc_read(%struct.shmob_drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
