; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_enable_engine_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_enable_engine_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__, %struct.intel_engine_execlists }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }
%struct.intel_engine_execlists = type { %struct.i915_request**, %struct.i915_request** }
%struct.i915_request = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_enable_engine_stats(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_engine_execlists*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i915_request**, align 8
  %8 = alloca %struct.i915_request*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 1
  store %struct.intel_engine_execlists* %10, %struct.intel_engine_execlists** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %12 = call i32 @intel_engine_supports_stats(%struct.intel_engine_cs* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %113

17:                                               ; preds = %1
  %18 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %19 = call i32 @execlists_active_lock_bh(%struct.intel_engine_execlists* %18)
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @write_seqlock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, -1
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %104

36:                                               ; preds = %17
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %38 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %36
  %44 = call i32 (...) @ktime_get()
  %45 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %46 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %49 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %48, i32 0, i32 1
  %50 = load %struct.i915_request**, %struct.i915_request*** %49, align 8
  store %struct.i915_request** %50, %struct.i915_request*** %7, align 8
  br label %51

51:                                               ; preds = %61, %43
  %52 = load %struct.i915_request**, %struct.i915_request*** %7, align 8
  %53 = load %struct.i915_request*, %struct.i915_request** %52, align 8
  store %struct.i915_request* %53, %struct.i915_request** %8, align 8
  %54 = icmp ne %struct.i915_request* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %57 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %55
  %62 = load %struct.i915_request**, %struct.i915_request*** %7, align 8
  %63 = getelementptr inbounds %struct.i915_request*, %struct.i915_request** %62, i32 1
  store %struct.i915_request** %63, %struct.i915_request*** %7, align 8
  br label %51

64:                                               ; preds = %51
  %65 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %66 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %65, i32 0, i32 0
  %67 = load %struct.i915_request**, %struct.i915_request*** %66, align 8
  store %struct.i915_request** %67, %struct.i915_request*** %7, align 8
  br label %68

68:                                               ; preds = %85, %64
  %69 = load %struct.i915_request**, %struct.i915_request*** %7, align 8
  %70 = load %struct.i915_request*, %struct.i915_request** %69, align 8
  store %struct.i915_request* %70, %struct.i915_request** %8, align 8
  %71 = icmp ne %struct.i915_request* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load %struct.i915_request*, %struct.i915_request** %8, align 8
  %74 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @intel_context_inflight_count(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %80 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.i915_request**, %struct.i915_request*** %7, align 8
  %87 = getelementptr inbounds %struct.i915_request*, %struct.i915_request** %86, i32 1
  store %struct.i915_request** %87, %struct.i915_request*** %7, align 8
  br label %68

88:                                               ; preds = %68
  %89 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %90 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %96 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %100 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %94, %88
  br label %103

103:                                              ; preds = %102, %36
  br label %104

104:                                              ; preds = %103, %33
  %105 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %106 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @write_sequnlock_irqrestore(i32* %107, i64 %108)
  %110 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %111 = call i32 @execlists_active_unlock_bh(%struct.intel_engine_execlists* %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %104, %14
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @intel_engine_supports_stats(%struct.intel_engine_cs*) #1

declare dso_local i32 @execlists_active_lock_bh(%struct.intel_engine_execlists*) #1

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @intel_context_inflight_count(i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

declare dso_local i32 @execlists_active_unlock_bh(%struct.intel_engine_execlists*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
