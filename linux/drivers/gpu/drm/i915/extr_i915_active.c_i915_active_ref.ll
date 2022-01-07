; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c_i915_active_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c_i915_active_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_active = type { i32 }
%struct.intel_timeline = type { i32 }
%struct.i915_request = type { i32 }
%struct.i915_active_request = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_active_ref(%struct.i915_active* %0, %struct.intel_timeline* %1, %struct.i915_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_active*, align 8
  %6 = alloca %struct.intel_timeline*, align 8
  %7 = alloca %struct.i915_request*, align 8
  %8 = alloca %struct.i915_active_request*, align 8
  %9 = alloca i32, align 4
  store %struct.i915_active* %0, %struct.i915_active** %5, align 8
  store %struct.intel_timeline* %1, %struct.intel_timeline** %6, align 8
  store %struct.i915_request* %2, %struct.i915_request** %7, align 8
  %10 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %11 = getelementptr inbounds %struct.intel_timeline, %struct.intel_timeline* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.i915_active*, %struct.i915_active** %5, align 8
  %14 = call i32 @i915_active_acquire(%struct.i915_active* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.i915_active*, %struct.i915_active** %5, align 8
  %21 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %22 = call %struct.i915_active_request* @active_instance(%struct.i915_active* %20, %struct.intel_timeline* %21)
  store %struct.i915_active_request* %22, %struct.i915_active_request** %8, align 8
  %23 = load %struct.i915_active_request*, %struct.i915_active_request** %8, align 8
  %24 = icmp ne %struct.i915_active_request* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %64

28:                                               ; preds = %19
  %29 = load %struct.i915_active_request*, %struct.i915_active_request** %8, align 8
  %30 = call i64 @is_barrier(%struct.i915_active_request* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.i915_active*, %struct.i915_active** %5, align 8
  %34 = load %struct.i915_active_request*, %struct.i915_active_request** %8, align 8
  %35 = call i32 @node_from_active(%struct.i915_active_request* %34)
  %36 = call i32 @__active_del_barrier(%struct.i915_active* %33, i32 %35)
  %37 = load %struct.i915_active_request*, %struct.i915_active_request** %8, align 8
  %38 = getelementptr inbounds %struct.i915_active_request, %struct.i915_active_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @RCU_INIT_POINTER(i32 %39, i32* null)
  %41 = load %struct.i915_active_request*, %struct.i915_active_request** %8, align 8
  %42 = getelementptr inbounds %struct.i915_active_request, %struct.i915_active_request* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  br label %53

44:                                               ; preds = %28
  %45 = load %struct.i915_active_request*, %struct.i915_active_request** %8, align 8
  %46 = call i32 @i915_active_request_isset(%struct.i915_active_request* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.i915_active*, %struct.i915_active** %5, align 8
  %50 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.i915_active*, %struct.i915_active** %5, align 8
  %55 = getelementptr inbounds %struct.i915_active, %struct.i915_active* %54, i32 0, i32 0
  %56 = call i32 @atomic_read(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @GEM_BUG_ON(i32 %59)
  %61 = load %struct.i915_active_request*, %struct.i915_active_request** %8, align 8
  %62 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %63 = call i32 @__i915_active_request_set(%struct.i915_active_request* %61, %struct.i915_request* %62)
  br label %64

64:                                               ; preds = %53, %25
  %65 = load %struct.i915_active*, %struct.i915_active** %5, align 8
  %66 = call i32 @i915_active_release(%struct.i915_active* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @i915_active_acquire(%struct.i915_active*) #1

declare dso_local %struct.i915_active_request* @active_instance(%struct.i915_active*, %struct.intel_timeline*) #1

declare dso_local i64 @is_barrier(%struct.i915_active_request*) #1

declare dso_local i32 @__active_del_barrier(%struct.i915_active*, i32) #1

declare dso_local i32 @node_from_active(%struct.i915_active_request*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @i915_active_request_isset(%struct.i915_active_request*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__i915_active_request_set(%struct.i915_active_request*, %struct.i915_request*) #1

declare dso_local i32 @i915_active_release(%struct.i915_active*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
