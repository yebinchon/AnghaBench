; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ggtt_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ggtt_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_9__*)*, %struct.TYPE_6__, i32, %struct.drm_i915_private* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@VM_CLASS_GGTT = common dso_local global i32 0, align 4
@i915_gtt_color_adjust = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_ggtt*)* @ggtt_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ggtt_init_hw(%struct.i915_ggtt* %0) #0 {
  %2 = alloca %struct.i915_ggtt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %2, align 8
  %5 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %6 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %14 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %13, i32 0, i32 3
  %15 = load i32, i32* @VM_CLASS_GGTT, align 4
  %16 = call i32 @i915_address_space_init(%struct.TYPE_9__* %14, i32 %15)
  %17 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %18 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i32 @IS_VALLEYVIEW(%struct.drm_i915_private* %20)
  %22 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %23 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = call i32 @HAS_LLC(%struct.drm_i915_private* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i32 @HAS_PPGTT(%struct.drm_i915_private* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @i915_gtt_color_adjust, align 4
  %34 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %35 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  br label %38

38:                                               ; preds = %32, %28, %1
  %39 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %40 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %39, i32 0, i32 4
  %41 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %42 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %46 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @io_mapping_init_wc(i32* %40, i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %38
  %51 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %52 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %53, align 8
  %55 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %56 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %55, i32 0, i32 3
  %57 = call i32 %54(%struct.TYPE_9__* %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %73

60:                                               ; preds = %38
  %61 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %62 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %66 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @arch_phys_wc_add(i32 %64, i32 %67)
  %69 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %70 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %72 = call i32 @i915_ggtt_init_fences(%struct.i915_ggtt* %71)
  br label %73

73:                                               ; preds = %60, %50
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_address_space_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_LLC(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_PPGTT(%struct.drm_i915_private*) #1

declare dso_local i32 @io_mapping_init_wc(i32*, i32, i32) #1

declare dso_local i32 @arch_phys_wc_add(i32, i32) #1

declare dso_local i32 @i915_ggtt_init_fences(%struct.i915_ggtt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
