; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_free_capture_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_request.c_free_capture_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.i915_capture_list* }
%struct.i915_capture_list = type { %struct.i915_capture_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @free_capture_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_capture_list(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.i915_capture_list*, align 8
  %4 = alloca %struct.i915_capture_list*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %5 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %6 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %5, i32 0, i32 0
  %7 = load %struct.i915_capture_list*, %struct.i915_capture_list** %6, align 8
  store %struct.i915_capture_list* %7, %struct.i915_capture_list** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.i915_capture_list*, %struct.i915_capture_list** %3, align 8
  %10 = icmp ne %struct.i915_capture_list* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.i915_capture_list*, %struct.i915_capture_list** %3, align 8
  %13 = getelementptr inbounds %struct.i915_capture_list, %struct.i915_capture_list* %12, i32 0, i32 0
  %14 = load %struct.i915_capture_list*, %struct.i915_capture_list** %13, align 8
  store %struct.i915_capture_list* %14, %struct.i915_capture_list** %4, align 8
  %15 = load %struct.i915_capture_list*, %struct.i915_capture_list** %3, align 8
  %16 = call i32 @kfree(%struct.i915_capture_list* %15)
  %17 = load %struct.i915_capture_list*, %struct.i915_capture_list** %4, align 8
  store %struct.i915_capture_list* %17, %struct.i915_capture_list** %3, align 8
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local i32 @kfree(%struct.i915_capture_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
