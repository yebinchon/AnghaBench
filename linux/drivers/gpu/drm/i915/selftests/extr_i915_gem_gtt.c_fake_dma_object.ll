; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_gtt.c_fake_dma_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_gtt.c_fake_dma_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@fake_ops = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_CPU = common dso_local global i8* null, align 8
@I915_CACHE_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_i915_private*, i32)* @fake_dma_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @fake_dma_object(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @GEM_BUG_ON(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %14 = call i32 @IS_ALIGNED(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @GEM_BUG_ON(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %21 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @overflows_type(i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @E2BIG, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %28)
  store %struct.drm_i915_gem_object* %29, %struct.drm_i915_gem_object** %3, align 8
  br label %68

30:                                               ; preds = %2
  %31 = call %struct.drm_i915_gem_object* (...) @i915_gem_object_alloc()
  store %struct.drm_i915_gem_object* %31, %struct.drm_i915_gem_object** %6, align 8
  %32 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %33 = icmp ne %struct.drm_i915_gem_object* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %64

35:                                               ; preds = %30
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %39 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %38, i32 0, i32 3
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @drm_gem_private_object_init(i32* %37, %struct.TYPE_2__* %39, i32 %40)
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %43 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %42, i32* @fake_ops)
  %44 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @I915_GEM_DOMAIN_CPU, align 8
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @I915_CACHE_NONE, align 4
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %54 = call i64 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %61

57:                                               ; preds = %35
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %59 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %58)
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  store %struct.drm_i915_gem_object* %60, %struct.drm_i915_gem_object** %3, align 8
  br label %68

61:                                               ; preds = %56
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %63 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %62)
  br label %64

64:                                               ; preds = %61, %34
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %66)
  store %struct.drm_i915_gem_object* %67, %struct.drm_i915_gem_object** %3, align 8
  br label %68

68:                                               ; preds = %64, %57, %26
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  ret %struct.drm_i915_gem_object* %69
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i64 @overflows_type(i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @ERR_PTR(i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(...) #1

declare dso_local i32 @drm_gem_private_object_init(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i64 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
