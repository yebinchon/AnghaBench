; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_init_global.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_init_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }
%struct.drm_i915_mocs_table = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*)* @intel_mocs_init_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_mocs_init_global(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca %struct.drm_i915_mocs_table, align 8
  %5 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %6 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %7 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %6, i32 0, i32 1
  %8 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  store %struct.intel_uncore* %8, %struct.intel_uncore** %3, align 8
  %9 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @HAS_GLOBAL_MOCS_REGISTERS(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @GEM_BUG_ON(i32 %15)
  %17 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %18 = call i32 @get_mocs_settings(%struct.intel_gt* %17, %struct.drm_i915_mocs_table* %4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %71

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @GEM_DEBUG_WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %71

31:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @GEN12_GLOBAL_MOCS(i32 %39)
  %41 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @intel_uncore_write(%struct.intel_uncore* %38, i32 %40, i32 %47)
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %32

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @GEN12_GLOBAL_MOCS(i32 %60)
  %62 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %4, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @intel_uncore_write(%struct.intel_uncore* %59, i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %53

71:                                               ; preds = %20, %30, %53
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @HAS_GLOBAL_MOCS_REGISTERS(i32) #1

declare dso_local i32 @get_mocs_settings(%struct.intel_gt*, %struct.drm_i915_mocs_table*) #1

declare dso_local i64 @GEM_DEBUG_WARN_ON(i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @GEN12_GLOBAL_MOCS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
