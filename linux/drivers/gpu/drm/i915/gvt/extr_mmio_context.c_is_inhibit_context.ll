; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_is_inhibit_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_is_inhibit_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32* }

@CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT = common dso_local global i32 0, align 4
@CTX_CONTEXT_CONTROL_VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_inhibit_context(%struct.intel_context* %0) #0 {
  %2 = alloca %struct.intel_context*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_context* %0, %struct.intel_context** %2, align 8
  %5 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %6 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* @CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT, align 4
  %9 = call i32 @_MASKED_BIT_ENABLE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* @CTX_CONTEXT_CONTROL_VAL, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %10, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
