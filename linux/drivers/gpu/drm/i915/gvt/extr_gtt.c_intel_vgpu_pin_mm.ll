; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_pin_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_pin_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { i64, %struct.TYPE_7__*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@INTEL_GVT_MM_PPGTT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_pin_mm(%struct.intel_vgpu_mm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu_mm*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_vgpu_mm* %0, %struct.intel_vgpu_mm** %3, align 8
  %5 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %3, align 8
  %6 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %5, i32 0, i32 3
  %7 = call i32 @atomic_inc(i32* %6)
  %8 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %3, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INTEL_GVT_MM_PPGTT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %1
  %14 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %3, align 8
  %15 = call i32 @shadow_ppgtt_mm(%struct.intel_vgpu_mm* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %49

20:                                               ; preds = %13
  %21 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %3, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %3, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %3, align 8
  %33 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = call i32 @list_move_tail(i32* %31, i32* %38)
  %40 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %3, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %20, %1
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @shadow_ppgtt_mm(%struct.intel_vgpu_mm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
