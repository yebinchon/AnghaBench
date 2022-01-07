; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_get_oa_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_get_oa_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.i915_oa_config }
%struct.i915_oa_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, %struct.i915_oa_config**)* @get_oa_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_oa_config(%struct.drm_i915_private* %0, i32 %1, %struct.i915_oa_config** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i915_oa_config**, align 8
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i915_oa_config** %2, %struct.i915_oa_config*** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.i915_oa_config**, %struct.i915_oa_config*** %7, align 8
  store %struct.i915_oa_config* %14, %struct.i915_oa_config** %15, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %18, i32 0, i32 0
  %20 = call i32 @atomic_inc(i32* %19)
  store i32 0, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock_interruptible(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %54

30:                                               ; preds = %21
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.i915_oa_config* @idr_find(i32* %33, i32 %34)
  %36 = load %struct.i915_oa_config**, %struct.i915_oa_config*** %7, align 8
  store %struct.i915_oa_config* %35, %struct.i915_oa_config** %36, align 8
  %37 = load %struct.i915_oa_config**, %struct.i915_oa_config*** %7, align 8
  %38 = load %struct.i915_oa_config*, %struct.i915_oa_config** %37, align 8
  %39 = icmp ne %struct.i915_oa_config* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %48

43:                                               ; preds = %30
  %44 = load %struct.i915_oa_config**, %struct.i915_oa_config*** %7, align 8
  %45 = load %struct.i915_oa_config*, %struct.i915_oa_config** %44, align 8
  %46 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %28, %11
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.i915_oa_config* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
