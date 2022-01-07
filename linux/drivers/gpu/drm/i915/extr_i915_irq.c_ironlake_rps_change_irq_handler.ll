; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_rps_change_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_rps_change_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, %struct.intel_uncore }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.intel_uncore = type { i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@MEMINTRSTS = common dso_local global i32 0, align 4
@MEMINT_EVAL_CHG = common dso_local global i64 0, align 8
@RCPREVBSYTUPAVG = common dso_local global i32 0, align 4
@RCPREVBSYTDNAVG = common dso_local global i32 0, align 4
@RCBMAXAVG = common dso_local global i32 0, align 4
@RCBMINAVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ironlake_rps_change_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_rps_change_irq_handler(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 1
  store %struct.intel_uncore* %10, %struct.intel_uncore** %3, align 8
  %11 = call i32 @spin_lock(i32* @mchdev_lock)
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %13 = load i32, i32* @MEMINTRSTS, align 4
  %14 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %15 = load i32, i32* @MEMINTRSTS, align 4
  %16 = call i64 @intel_uncore_read(%struct.intel_uncore* %14, i32 %15)
  %17 = call i32 @intel_uncore_write16(%struct.intel_uncore* %12, i32 %13, i64 %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %23 = load i32, i32* @MEMINTRSTS, align 4
  %24 = load i64, i64* @MEMINT_EVAL_CHG, align 8
  %25 = call i32 @intel_uncore_write16(%struct.intel_uncore* %22, i32 %23, i64 %24)
  %26 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %27 = load i32, i32* @RCPREVBSYTUPAVG, align 4
  %28 = call i64 @intel_uncore_read(%struct.intel_uncore* %26, i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %30 = load i32, i32* @RCPREVBSYTDNAVG, align 4
  %31 = call i64 @intel_uncore_read(%struct.intel_uncore* %29, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %33 = load i32, i32* @RCBMAXAVG, align 4
  %34 = call i64 @intel_uncore_read(%struct.intel_uncore* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %36 = load i32, i32* @RCBMINAVG, align 4
  %37 = call i64 @intel_uncore_read(%struct.intel_uncore* %35, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %1
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %51, %41
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %64, %57
  br label %104

70:                                               ; preds = %1
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %70
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %86 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %84, %74
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %93 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %91, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %97, %90
  br label %103

103:                                              ; preds = %102, %70
  br label %104

104:                                              ; preds = %103, %69
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @ironlake_set_drps(%struct.drm_i915_private* %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %112 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %109, %104
  %115 = call i32 @spin_unlock(i32* @mchdev_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @intel_uncore_write16(%struct.intel_uncore*, i32, i64) #1

declare dso_local i64 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i64 @ironlake_set_drps(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
