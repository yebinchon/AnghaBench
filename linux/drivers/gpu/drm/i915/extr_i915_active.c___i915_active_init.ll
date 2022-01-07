; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c___i915_active_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c___i915_active_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_active = type { i32 (%struct.i915_active*)*, void (%struct.i915_active*)*, i32, i32, i32, i32*, i32, i64, %struct.drm_i915_private* }
%struct.lock_class_key = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"i915_active\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__i915_active_init(%struct.drm_i915_private* %0, %struct.i915_active* %1, i32 (%struct.i915_active*)* %2, void (%struct.i915_active*)* %3, %struct.lock_class_key* %4) #0 {
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.i915_active*, align 8
  %8 = alloca i32 (%struct.i915_active*)*, align 8
  %9 = alloca void (%struct.i915_active*)*, align 8
  %10 = alloca %struct.lock_class_key*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store %struct.i915_active* %1, %struct.i915_active** %7, align 8
  store i32 (%struct.i915_active*)* %2, i32 (%struct.i915_active*)** %8, align 8
  store void (%struct.i915_active*)* %3, void (%struct.i915_active*)** %9, align 8
  store %struct.lock_class_key* %4, %struct.lock_class_key** %10, align 8
  %11 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %12 = call i32 @debug_active_init(%struct.i915_active* %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %15 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %14, i32 0, i32 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %15, align 8
  %16 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %17 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %16, i32 0, i32 7
  store i64 0, i64* %17, align 8
  %18 = load i32 (%struct.i915_active*)*, i32 (%struct.i915_active*)** %8, align 8
  %19 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %20 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %19, i32 0, i32 0
  store i32 (%struct.i915_active*)* %18, i32 (%struct.i915_active*)** %20, align 8
  %21 = load void (%struct.i915_active*)*, void (%struct.i915_active*)** %9, align 8
  %22 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %23 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %22, i32 0, i32 1
  store void (%struct.i915_active*)* %21, void (%struct.i915_active*)** %23, align 8
  %24 = load i32, i32* @RB_ROOT, align 4
  %25 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %26 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %28 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %30 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %29, i32 0, i32 4
  %31 = call i32 @init_llist_head(i32* %30)
  %32 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %33 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %32, i32 0, i32 3
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.i915_active*, %struct.i915_active** %7, align 8
  %36 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %35, i32 0, i32 2
  %37 = load %struct.lock_class_key*, %struct.lock_class_key** %10, align 8
  %38 = call i32 @__mutex_init(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* %37)
  ret void
}

declare dso_local i32 @debug_active_init(%struct.i915_active*) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @__mutex_init(i32*, i8*, %struct.lock_class_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
