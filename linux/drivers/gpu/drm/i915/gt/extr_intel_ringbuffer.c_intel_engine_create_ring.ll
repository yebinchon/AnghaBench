; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_engine_create_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_intel_engine_create_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ring = type { i32, i32, %struct.i915_vma*, i32 }
%struct.i915_vma = type { i32 }
%struct.intel_engine_cs = type { %struct.TYPE_2__*, %struct.drm_i915_private* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@RING_NR_PAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CACHELINE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_ring* @intel_engine_create_ring(%struct.intel_engine_cs* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_ring*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_ring*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @is_power_of_2(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @GEM_BUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @RING_CTL_SIZE(i32 %18)
  %20 = load i32, i32* @RING_NR_PAGES, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.intel_ring* @kzalloc(i32 24, i32 %24)
  store %struct.intel_ring* %25, %struct.intel_ring** %7, align 8
  %26 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  %27 = icmp ne %struct.intel_ring* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.intel_ring* @ERR_PTR(i32 %30)
  store %struct.intel_ring* %31, %struct.intel_ring** %3, align 8
  br label %79

32:                                               ; preds = %2
  %33 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  %34 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %33, i32 0, i32 3
  %35 = call i32 @kref_init(i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  %38 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  %41 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %43 = call i64 @IS_I830(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %32
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = call i64 @IS_I845G(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45, %32
  %50 = load i32, i32* @CACHELINE_BYTES, align 4
  %51 = mul nsw i32 2, %50
  %52 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  %53 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %45
  %57 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  %58 = call i32 @intel_ring_update_space(%struct.intel_ring* %57)
  %59 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %60 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call %struct.i915_vma* @create_ring_vma(i32 %63, i32 %64)
  store %struct.i915_vma* %65, %struct.i915_vma** %8, align 8
  %66 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %67 = call i64 @IS_ERR(%struct.i915_vma* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  %71 = call i32 @kfree(%struct.intel_ring* %70)
  %72 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %73 = call %struct.intel_ring* @ERR_CAST(%struct.i915_vma* %72)
  store %struct.intel_ring* %73, %struct.intel_ring** %3, align 8
  br label %79

74:                                               ; preds = %56
  %75 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %76 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  %77 = getelementptr inbounds %struct.intel_ring, %struct.intel_ring* %76, i32 0, i32 2
  store %struct.i915_vma* %75, %struct.i915_vma** %77, align 8
  %78 = load %struct.intel_ring*, %struct.intel_ring** %7, align 8
  store %struct.intel_ring* %78, %struct.intel_ring** %3, align 8
  br label %79

79:                                               ; preds = %74, %69, %28
  %80 = load %struct.intel_ring*, %struct.intel_ring** %3, align 8
  ret %struct.intel_ring* %80
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @RING_CTL_SIZE(i32) #1

declare dso_local %struct.intel_ring* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_ring* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I845G(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_ring_update_space(%struct.intel_ring*) #1

declare dso_local %struct.i915_vma* @create_ring_vma(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @kfree(%struct.intel_ring*) #1

declare dso_local %struct.intel_ring* @ERR_CAST(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
