; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_engine_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_engine_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, i32 (%struct.intel_engine_cs*)*, i32, %struct.intel_gt*, %struct.TYPE_10__*, i64 }
%struct.intel_gt = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s flags=%lx\0A\00", align 1
@I915_RESET_ENGINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Resetting %s for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%sFailed to reset %s, ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"GuC \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engine_reset(%struct.intel_engine_cs* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intel_gt*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 3
  %10 = load %struct.intel_gt*, %struct.intel_gt** %9, align 8
  store %struct.intel_gt* %10, %struct.intel_gt** %6, align 8
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.intel_gt*, %struct.intel_gt** %6, align 8
  %15 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load i64, i64* @I915_RESET_ENGINE, align 8
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.intel_gt*, %struct.intel_gt** %6, align 8
  %25 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i64 %23, i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @GEM_BUG_ON(i32 %30)
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %33 = call i32 @intel_engine_pm_get_if_awake(%struct.intel_engine_cs* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %119

36:                                               ; preds = %2
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %38 = call i32 @reset_prepare_engine(%struct.intel_engine_cs* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %43 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %42, i32 0, i32 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %49 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @dev_notice(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %41, %36
  %54 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %55 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %54, i32 0, i32 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %61 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %66 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %65, i32 0, i32 3
  %67 = load %struct.intel_gt*, %struct.intel_gt** %66, align 8
  %68 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %53
  %74 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %75 = call i32 @intel_gt_reset_engine(%struct.intel_engine_cs* %74)
  store i32 %75, i32* %7, align 4
  br label %84

76:                                               ; preds = %53
  %77 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %78 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %77, i32 0, i32 3
  %79 = load %struct.intel_gt*, %struct.intel_gt** %78, align 8
  %80 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %83 = call i32 @intel_guc_reset_engine(%struct.TYPE_12__* %81, %struct.intel_engine_cs* %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %76, %73
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %89 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %88, i32 0, i32 3
  %90 = load %struct.intel_gt*, %struct.intel_gt** %89, align 8
  %91 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %98 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %99 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 %100, i32 %101)
  br label %111

103:                                              ; preds = %84
  %104 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %105 = call i32 @__intel_engine_reset(%struct.intel_engine_cs* %104, i32 1)
  %106 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %107 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %106, i32 0, i32 1
  %108 = load i32 (%struct.intel_engine_cs*)*, i32 (%struct.intel_engine_cs*)** %107, align 8
  %109 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %110 = call i32 %108(%struct.intel_engine_cs* %109)
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %103, %87
  %112 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %113 = call i32 @intel_engine_cancel_stop_cs(%struct.intel_engine_cs* %112)
  %114 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %115 = call i32 @reset_finish_engine(%struct.intel_engine_cs* %114)
  %116 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %117 = call i32 @intel_engine_pm_put(%struct.intel_engine_cs* %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %111, %35
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @GEM_TRACE(i8*, i32, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i32 @intel_engine_pm_get_if_awake(%struct.intel_engine_cs*) #1

declare dso_local i32 @reset_prepare_engine(%struct.intel_engine_cs*) #1

declare dso_local i32 @dev_notice(i32, i8*, i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @intel_gt_reset_engine(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_guc_reset_engine(%struct.TYPE_12__*, %struct.intel_engine_cs*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*, i32, i32) #1

declare dso_local i32 @__intel_engine_reset(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @intel_engine_cancel_stop_cs(%struct.intel_engine_cs*) #1

declare dso_local i32 @reset_finish_engine(%struct.intel_engine_cs*) #1

declare dso_local i32 @intel_engine_pm_put(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
