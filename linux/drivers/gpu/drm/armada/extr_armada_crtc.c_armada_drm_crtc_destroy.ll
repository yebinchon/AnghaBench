; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.armada_private* }
%struct.armada_private = type { i32** }
%struct.armada_crtc = type { i64, %struct.TYPE_8__, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.armada_crtc*)* }
%struct.TYPE_5__ = type { i32 }

@LCD_SPU_IRQ_ENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @armada_drm_crtc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_drm_crtc_destroy(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.armada_crtc*, align 8
  %4 = alloca %struct.armada_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = call %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc* %5)
  store %struct.armada_crtc* %6, %struct.armada_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.armada_private*, %struct.armada_private** %10, align 8
  store %struct.armada_private* %11, %struct.armada_private** %4, align 8
  %12 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @drm_gem_object_put_unlocked(i32* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %24 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32*, i32** %25, i64 %28
  store i32* null, i32** %29, align 8
  %30 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %31 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %30, i32 0, i32 1
  %32 = call i32 @drm_crtc_cleanup(%struct.TYPE_8__* %31)
  %33 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %34 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.armada_crtc*)*, i32 (%struct.armada_crtc*)** %36, align 8
  %38 = icmp ne i32 (%struct.armada_crtc*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %22
  %40 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %41 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.armada_crtc*)*, i32 (%struct.armada_crtc*)** %43, align 8
  %45 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %46 = call i32 %44(%struct.armada_crtc* %45)
  br label %47

47:                                               ; preds = %39, %22
  %48 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %49 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LCD_SPU_IRQ_ENA, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i32 0, i64 %52)
  %54 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %55 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @of_node_put(i32 %57)
  %59 = load %struct.armada_crtc*, %struct.armada_crtc** %3, align 8
  %60 = call i32 @kfree(%struct.armada_crtc* %59)
  ret void
}

declare dso_local %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @drm_crtc_cleanup(%struct.TYPE_8__*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @kfree(%struct.armada_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
