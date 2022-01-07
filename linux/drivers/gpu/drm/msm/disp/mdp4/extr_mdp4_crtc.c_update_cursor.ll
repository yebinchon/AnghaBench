; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_update_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mdp4_crtc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.drm_gem_object*, i32, i32, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.mdp4_kms = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.msm_kms }
%struct.msm_kms = type { i32 }

@CURSOR_ARGB = common dso_local global i32 0, align 4
@MDP4_DMA_CURSOR_BLEND_CONFIG_CURSOR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cursor(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mdp4_crtc*, align 8
  %4 = alloca %struct.mdp4_kms*, align 8
  %5 = alloca %struct.msm_kms*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc* %11)
  store %struct.mdp4_crtc* %12, %struct.mdp4_crtc** %3, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = call %struct.mdp4_kms* @get_kms(%struct.drm_crtc* %13)
  store %struct.mdp4_kms* %14, %struct.mdp4_kms** %4, align 8
  %15 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %16 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.msm_kms* %17, %struct.msm_kms** %5, align 8
  %18 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %106

31:                                               ; preds = %1
  %32 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %33 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %34, align 8
  store %struct.drm_gem_object* %35, %struct.drm_gem_object** %8, align 8
  %36 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %37 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %38, align 8
  store %struct.drm_gem_object* %39, %struct.drm_gem_object** %9, align 8
  %40 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %41 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %45 = icmp ne %struct.drm_gem_object* %44, null
  br i1 %45, label %46, label %82

46:                                               ; preds = %31
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %48 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %47)
  %49 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %50 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %51 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @msm_gem_get_and_pin_iova(%struct.drm_gem_object* %49, i32 %52, i32* %10)
  %54 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @REG_MDP4_DMA_CURSOR_SIZE(i32 %55)
  %57 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %58 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MDP4_DMA_CURSOR_SIZE_WIDTH(i32 %60)
  %62 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %63 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @MDP4_DMA_CURSOR_SIZE_HEIGHT(i32 %65)
  %67 = or i32 %61, %66
  %68 = call i32 @mdp4_write(%struct.mdp4_kms* %54, i32 %56, i32 %67)
  %69 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @REG_MDP4_DMA_CURSOR_BASE(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @mdp4_write(%struct.mdp4_kms* %69, i32 %71, i32 %72)
  %74 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @REG_MDP4_DMA_CURSOR_BLEND_CONFIG(i32 %75)
  %77 = load i32, i32* @CURSOR_ARGB, align 4
  %78 = call i32 @MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT(i32 %77)
  %79 = load i32, i32* @MDP4_DMA_CURSOR_BLEND_CONFIG_CURSOR_EN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @mdp4_write(%struct.mdp4_kms* %74, i32 %76, i32 %80)
  br label %90

82:                                               ; preds = %31
  %83 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @REG_MDP4_DMA_CURSOR_BASE(i32 %84)
  %86 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %87 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mdp4_write(%struct.mdp4_kms* %83, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %46
  %91 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %92 = icmp ne %struct.drm_gem_object* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %95 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %94, i32 0, i32 2
  %96 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %97 = call i32 @drm_flip_work_queue(i32* %95, %struct.drm_gem_object* %96)
  br label %98

98:                                               ; preds = %93, %90
  %99 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %100 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %101 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  store %struct.drm_gem_object* %99, %struct.drm_gem_object** %102, align 8
  %103 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %104 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %98, %1
  %107 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @REG_MDP4_DMA_CURSOR_POS(i32 %108)
  %110 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %111 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @MDP4_DMA_CURSOR_POS_X(i32 %113)
  %115 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %116 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @MDP4_DMA_CURSOR_POS_Y(i32 %118)
  %120 = or i32 %114, %119
  %121 = call i32 @mdp4_write(%struct.mdp4_kms* %107, i32 %109, i32 %120)
  %122 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %3, align 8
  %123 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  ret void
}

declare dso_local %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local i32 @msm_gem_get_and_pin_iova(%struct.drm_gem_object*, i32, i32*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP4_DMA_CURSOR_SIZE(i32) #1

declare dso_local i32 @MDP4_DMA_CURSOR_SIZE_WIDTH(i32) #1

declare dso_local i32 @MDP4_DMA_CURSOR_SIZE_HEIGHT(i32) #1

declare dso_local i32 @REG_MDP4_DMA_CURSOR_BASE(i32) #1

declare dso_local i32 @REG_MDP4_DMA_CURSOR_BLEND_CONFIG(i32) #1

declare dso_local i32 @MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT(i32) #1

declare dso_local i32 @drm_flip_work_queue(i32*, %struct.drm_gem_object*) #1

declare dso_local i32 @REG_MDP4_DMA_CURSOR_POS(i32) #1

declare dso_local i32 @MDP4_DMA_CURSOR_POS_X(i32) #1

declare dso_local i32 @MDP4_DMA_CURSOR_POS_Y(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
