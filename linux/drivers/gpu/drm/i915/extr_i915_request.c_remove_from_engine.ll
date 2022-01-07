; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_remove_from_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_remove_from_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.intel_engine_cs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @remove_from_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_engine(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.intel_engine_cs* @READ_ONCE(i32 %7)
  store %struct.intel_engine_cs* %8, %struct.intel_engine_cs** %4, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  br label %13

13:                                               ; preds = %23, %1
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %15 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.intel_engine_cs* @READ_ONCE(i32 %17)
  store %struct.intel_engine_cs* %18, %struct.intel_engine_cs** %3, align 8
  %19 = icmp ne %struct.intel_engine_cs* %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  store %struct.intel_engine_cs* %32, %struct.intel_engine_cs** %4, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %35 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %39 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  ret void
}

declare dso_local %struct.intel_engine_cs* @READ_ONCE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
