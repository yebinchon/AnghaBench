; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_gtintel_context.h_intel_context_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_gtintel_context.h_intel_context_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*)* @intel_context_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_context_pin(%struct.intel_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_context*, align 8
  store %struct.intel_context* %0, %struct.intel_context** %3, align 8
  %4 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %5 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %4, i32 0, i32 0
  %6 = call i32 @atomic_inc_not_zero(i32* %5)
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %12 = call i32 @__intel_context_do_pin(%struct.intel_context* %11)
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %9
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @__intel_context_do_pin(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
