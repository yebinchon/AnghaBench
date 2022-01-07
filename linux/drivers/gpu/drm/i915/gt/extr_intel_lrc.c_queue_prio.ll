; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_queue_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_queue_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_execlists = type { i32 }
%struct.i915_priolist = type { i32, i32 }
%struct.rb_node = type { i32 }

@INT_MIN = common dso_local global i32 0, align 4
@I915_USER_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_execlists*)* @queue_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_prio(%struct.intel_engine_execlists* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_execlists*, align 8
  %4 = alloca %struct.i915_priolist*, align 8
  %5 = alloca %struct.rb_node*, align 8
  store %struct.intel_engine_execlists* %0, %struct.intel_engine_execlists** %3, align 8
  %6 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %7 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %6, i32 0, i32 0
  %8 = call %struct.rb_node* @rb_first_cached(i32* %7)
  store %struct.rb_node* %8, %struct.rb_node** %5, align 8
  %9 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %10 = icmp ne %struct.rb_node* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @INT_MIN, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %15 = call %struct.i915_priolist* @to_priolist(%struct.rb_node* %14)
  store %struct.i915_priolist* %15, %struct.i915_priolist** %4, align 8
  %16 = load %struct.i915_priolist*, %struct.i915_priolist** %4, align 8
  %17 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @I915_USER_PRIORITY_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.i915_priolist*, %struct.i915_priolist** %4, align 8
  %23 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ffs(i32 %24)
  %26 = sub nsw i32 %21, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.rb_node* @rb_first_cached(i32*) #1

declare dso_local %struct.i915_priolist* @to_priolist(%struct.rb_node*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
