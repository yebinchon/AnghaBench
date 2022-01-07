; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_cleanup_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_cleanup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_cleanup_common(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %3 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %4 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @GEM_BUG_ON(i32 %9)
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %12 = call i32 @cleanup_status_page(%struct.intel_engine_cs* %11)
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 6
  %15 = call i32 @intel_engine_pool_fini(i32* %14)
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %17 = call i32 @intel_engine_fini_breadcrumbs(%struct.intel_engine_cs* %16)
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %19 = call i32 @intel_engine_cleanup_cmd_parser(%struct.intel_engine_cs* %18)
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @i915_gem_object_put(i64 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @intel_context_unpin(i32 %32)
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %35 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @intel_context_put(i32 %36)
  %38 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %39 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %38, i32 0, i32 3
  %40 = call i32 @llist_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @GEM_BUG_ON(i32 %43)
  %45 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %46 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %45, i32 0, i32 2
  %47 = call i32 @intel_wa_list_free(i32* %46)
  %48 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %49 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %48, i32 0, i32 1
  %50 = call i32 @intel_wa_list_free(i32* %49)
  %51 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %52 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %51, i32 0, i32 0
  %53 = call i32 @intel_wa_list_free(i32* %52)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @cleanup_status_page(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_pool_fini(i32*) #1

declare dso_local i32 @intel_engine_fini_breadcrumbs(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_cleanup_cmd_parser(%struct.intel_engine_cs*) #1

declare dso_local i32 @i915_gem_object_put(i64) #1

declare dso_local i32 @intel_context_unpin(i32) #1

declare dso_local i32 @intel_context_put(i32) #1

declare dso_local i32 @llist_empty(i32*) #1

declare dso_local i32 @intel_wa_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
