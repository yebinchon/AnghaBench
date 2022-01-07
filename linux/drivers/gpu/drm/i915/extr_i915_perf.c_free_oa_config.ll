; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_free_oa_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_free_oa_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_oa_config = type { %struct.i915_oa_config*, %struct.i915_oa_config*, %struct.i915_oa_config* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_oa_config*)* @free_oa_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_oa_config(%struct.drm_i915_private* %0, %struct.i915_oa_config* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_oa_config*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_oa_config* %1, %struct.i915_oa_config** %4, align 8
  %5 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %6 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %5, i32 0, i32 2
  %7 = load %struct.i915_oa_config*, %struct.i915_oa_config** %6, align 8
  %8 = call i32 @PTR_ERR(%struct.i915_oa_config* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %12 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %11, i32 0, i32 2
  %13 = load %struct.i915_oa_config*, %struct.i915_oa_config** %12, align 8
  %14 = call i32 @kfree(%struct.i915_oa_config* %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %17 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %16, i32 0, i32 1
  %18 = load %struct.i915_oa_config*, %struct.i915_oa_config** %17, align 8
  %19 = call i32 @PTR_ERR(%struct.i915_oa_config* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %23 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %22, i32 0, i32 1
  %24 = load %struct.i915_oa_config*, %struct.i915_oa_config** %23, align 8
  %25 = call i32 @kfree(%struct.i915_oa_config* %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %28 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %27, i32 0, i32 0
  %29 = load %struct.i915_oa_config*, %struct.i915_oa_config** %28, align 8
  %30 = call i32 @PTR_ERR(%struct.i915_oa_config* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %34 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %33, i32 0, i32 0
  %35 = load %struct.i915_oa_config*, %struct.i915_oa_config** %34, align 8
  %36 = call i32 @kfree(%struct.i915_oa_config* %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %39 = call i32 @kfree(%struct.i915_oa_config* %38)
  ret void
}

declare dso_local i32 @PTR_ERR(%struct.i915_oa_config*) #1

declare dso_local i32 @kfree(%struct.i915_oa_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
