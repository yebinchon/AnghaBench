; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_pageflip_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_pageflip_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { i64, i32, %struct.amdgpu_flip_work* }
%struct.amdgpu_flip_work = type { i32, i64 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid pageflip crtc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmGRPH_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@GRPH_INTERRUPT_STATUS__GRPH_PFLIP_INT_OCCURRED_MASK = common dso_local global i32 0, align 4
@GRPH_INTERRUPT_STATUS__GRPH_PFLIP_INT_CLEAR_MASK = common dso_local global i32 0, align 4
@AMDGPU_FLIP_SUBMITTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"amdgpu_crtc->pflip_status = %d != AMDGPU_FLIP_SUBMITTED(%d)\0A\00", align 1
@AMDGPU_FLIP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @dce_v6_0_pageflip_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v6_0_pageflip_irq(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca %struct.amdgpu_iv_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_crtc*, align 8
  %11 = alloca %struct.amdgpu_flip_work*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %7, align 8
  %12 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 8
  %16 = ashr i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %20, i64 %22
  %24 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %23, align 8
  store %struct.amdgpu_crtc* %24, %struct.amdgpu_crtc** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %119

36:                                               ; preds = %3
  %37 = load i64, i64* @mmGRPH_INTERRUPT_STATUS, align 8
  %38 = load i64*, i64** @crtc_offsets, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %37, %42
  %44 = call i32 @RREG32(i64 %43)
  %45 = load i32, i32* @GRPH_INTERRUPT_STATUS__GRPH_PFLIP_INT_OCCURRED_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load i64, i64* @mmGRPH_INTERRUPT_STATUS, align 8
  %50 = load i64*, i64** @crtc_offsets, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %49, %54
  %56 = load i32, i32* @GRPH_INTERRUPT_STATUS__GRPH_PFLIP_INT_CLEAR_MASK, align 4
  %57 = call i32 @WREG32(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %48, %36
  %59 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %10, align 8
  %60 = icmp eq %struct.amdgpu_crtc* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %119

62:                                               ; preds = %58
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %10, align 8
  %70 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %69, i32 0, i32 2
  %71 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %70, align 8
  store %struct.amdgpu_flip_work* %71, %struct.amdgpu_flip_work** %11, align 8
  %72 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %10, align 8
  %73 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AMDGPU_FLIP_SUBMITTED, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %62
  %78 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %10, align 8
  %79 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AMDGPU_FLIP_SUBMITTED, align 8
  %82 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %80, i64 %81)
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  store i32 0, i32* %4, align 4
  br label %119

89:                                               ; preds = %62
  %90 = load i64, i64* @AMDGPU_FLIP_NONE, align 8
  %91 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %10, align 8
  %92 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %10, align 8
  %94 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %93, i32 0, i32 2
  store %struct.amdgpu_flip_work* null, %struct.amdgpu_flip_work** %94, align 8
  %95 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %11, align 8
  %96 = getelementptr inbounds %struct.amdgpu_flip_work, %struct.amdgpu_flip_work* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %10, align 8
  %101 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %100, i32 0, i32 1
  %102 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %11, align 8
  %103 = getelementptr inbounds %struct.amdgpu_flip_work, %struct.amdgpu_flip_work* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @drm_crtc_send_vblank_event(i32* %101, i64 %104)
  br label %106

106:                                              ; preds = %99, %89
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %10, align 8
  %114 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %113, i32 0, i32 1
  %115 = call i32 @drm_crtc_vblank_put(i32* %114)
  %116 = load %struct.amdgpu_flip_work*, %struct.amdgpu_flip_work** %11, align 8
  %117 = getelementptr inbounds %struct.amdgpu_flip_work, %struct.amdgpu_flip_work* %116, i32 0, i32 0
  %118 = call i32 @schedule_work(i32* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %106, %77, %61, %31
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(i32*, i64) #1

declare dso_local i32 @drm_crtc_vblank_put(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
