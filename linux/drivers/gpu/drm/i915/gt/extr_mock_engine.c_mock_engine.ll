; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_mock_engine.c_mock_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_mock_engine.c_mock_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32*, %struct.TYPE_3__, i32, i32, i32*, %struct.drm_i915_private* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.drm_i915_private = type { i32 }
%struct.mock_engine = type { %struct.intel_engine_cs, i32, i32, i32 }

@I915_NUM_ENGINES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@mock_context_ops = common dso_local global i32 0, align 4
@mock_request_alloc = common dso_local global i32 0, align 4
@mock_emit_flush = common dso_local global i32 0, align 4
@mock_emit_breadcrumb = common dso_local global i32 0, align 4
@mock_submit_request = common dso_local global i32 0, align 4
@mock_reset_prepare = common dso_local global i32 0, align 4
@mock_reset = common dso_local global i32 0, align 4
@mock_reset_finish = common dso_local global i32 0, align 4
@mock_cancel_requests = common dso_local global i32 0, align 4
@hw_delay_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_engine_cs* @mock_engine(%struct.drm_i915_private* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mock_engine*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @I915_NUM_ENGINES, align 4
  %11 = icmp sge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = add i64 96, %14
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mock_engine* @kzalloc(i64 %15, i32 %16)
  store %struct.mock_engine* %17, %struct.mock_engine** %8, align 8
  %18 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %19 = icmp ne %struct.mock_engine* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.intel_engine_cs* null, %struct.intel_engine_cs** %4, align 8
  br label %110

21:                                               ; preds = %3
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %24 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 13
  store %struct.drm_i915_private* %22, %struct.drm_i915_private** %25, align 8
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %29 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %29, i32 0, i32 12
  store i32* %27, i32** %30, align 8
  %31 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %32 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %39 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %44 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %44, i32 0, i32 10
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %48 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %51 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %50, i64 1
  %52 = bitcast %struct.mock_engine* %51 to i8*
  %53 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %54 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  %57 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %58 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %58, i32 0, i32 8
  store i32* @mock_context_ops, i32** %59, align 8
  %60 = load i32, i32* @mock_request_alloc, align 4
  %61 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %62 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %62, i32 0, i32 7
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @mock_emit_flush, align 4
  %65 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %66 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @mock_emit_breadcrumb, align 4
  %69 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %70 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %70, i32 0, i32 5
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @mock_submit_request, align 4
  %73 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %74 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @mock_reset_prepare, align 4
  %77 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %78 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @mock_reset, align 4
  %82 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %83 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @mock_reset_finish, align 4
  %87 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %88 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @mock_cancel_requests, align 4
  %92 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %93 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %96 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %95, i32 0, i32 3
  %97 = call i32 @spin_lock_init(i32* %96)
  %98 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %99 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %98, i32 0, i32 2
  %100 = load i32, i32* @hw_delay_complete, align 4
  %101 = call i32 @timer_setup(i32* %99, i32 %100, i32 0)
  %102 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %103 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %102, i32 0, i32 1
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %106 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %105, i32 0, i32 0
  %107 = call i32 @intel_engine_add_user(%struct.intel_engine_cs* %106)
  %108 = load %struct.mock_engine*, %struct.mock_engine** %8, align 8
  %109 = getelementptr inbounds %struct.mock_engine, %struct.mock_engine* %108, i32 0, i32 0
  store %struct.intel_engine_cs* %109, %struct.intel_engine_cs** %4, align 8
  br label %110

110:                                              ; preds = %21, %20
  %111 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  ret %struct.intel_engine_cs* %111
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local %struct.mock_engine* @kzalloc(i64, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @intel_engine_add_user(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
