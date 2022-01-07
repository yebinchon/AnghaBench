; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_pool.c_node_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_pool.c_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_pool_node = type { %struct.drm_i915_gem_object*, i32, %struct.intel_engine_pool* }
%struct.drm_i915_gem_object = type { i32 }
%struct.intel_engine_pool = type { i32 }
%struct.intel_engine_cs = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pool_active = common dso_local global i32 0, align 4
@pool_retire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_engine_pool_node* (%struct.intel_engine_pool*, i64)* @node_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_engine_pool_node* @node_create(%struct.intel_engine_pool* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_engine_pool_node*, align 8
  %4 = alloca %struct.intel_engine_pool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.intel_engine_cs*, align 8
  %7 = alloca %struct.intel_engine_pool_node*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.intel_engine_pool* %0, %struct.intel_engine_pool** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.intel_engine_pool*, %struct.intel_engine_pool** %4, align 8
  %10 = call %struct.intel_engine_cs* @to_engine(%struct.intel_engine_pool* %9)
  store %struct.intel_engine_cs* %10, %struct.intel_engine_cs** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @__GFP_NOWARN, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.intel_engine_pool_node* @kmalloc(i32 24, i32 %15)
  store %struct.intel_engine_pool_node* %16, %struct.intel_engine_pool_node** %7, align 8
  %17 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %7, align 8
  %18 = icmp ne %struct.intel_engine_pool_node* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.intel_engine_pool_node* @ERR_PTR(i32 %21)
  store %struct.intel_engine_pool_node* %22, %struct.intel_engine_pool_node** %3, align 8
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.intel_engine_pool*, %struct.intel_engine_pool** %4, align 8
  %25 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %7, align 8
  %26 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %25, i32 0, i32 2
  store %struct.intel_engine_pool* %24, %struct.intel_engine_pool** %26, align 8
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %7, align 8
  %31 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %30, i32 0, i32 1
  %32 = load i32, i32* @pool_active, align 4
  %33 = load i32, i32* @pool_retire, align 4
  %34 = call i32 @i915_active_init(i32 %29, i32* %31, i32 %32, i32 %33)
  %35 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %36 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call %struct.drm_i915_gem_object* @i915_gem_object_create_internal(i32 %37, i64 %38)
  store %struct.drm_i915_gem_object* %39, %struct.drm_i915_gem_object** %8, align 8
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %41 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %23
  %44 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %7, align 8
  %45 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %44, i32 0, i32 1
  %46 = call i32 @i915_active_fini(i32* %45)
  %47 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %7, align 8
  %48 = call i32 @kfree(%struct.intel_engine_pool_node* %47)
  %49 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %50 = call %struct.intel_engine_pool_node* @ERR_CAST(%struct.drm_i915_gem_object* %49)
  store %struct.intel_engine_pool_node* %50, %struct.intel_engine_pool_node** %3, align 8
  br label %56

51:                                               ; preds = %23
  %52 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %53 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %7, align 8
  %54 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %53, i32 0, i32 0
  store %struct.drm_i915_gem_object* %52, %struct.drm_i915_gem_object** %54, align 8
  %55 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %7, align 8
  store %struct.intel_engine_pool_node* %55, %struct.intel_engine_pool_node** %3, align 8
  br label %56

56:                                               ; preds = %51, %43, %19
  %57 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %3, align 8
  ret %struct.intel_engine_pool_node* %57
}

declare dso_local %struct.intel_engine_cs* @to_engine(%struct.intel_engine_pool*) #1

declare dso_local %struct.intel_engine_pool_node* @kmalloc(i32, i32) #1

declare dso_local %struct.intel_engine_pool_node* @ERR_PTR(i32) #1

declare dso_local i32 @i915_active_init(i32, i32*, i32, i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_internal(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_active_fini(i32*) #1

declare dso_local i32 @kfree(%struct.intel_engine_pool_node*) #1

declare dso_local %struct.intel_engine_pool_node* @ERR_CAST(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
