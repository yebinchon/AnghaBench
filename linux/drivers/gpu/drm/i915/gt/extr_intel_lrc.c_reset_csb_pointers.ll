; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_reset_csb_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_reset_csb_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_engine_execlists }
%struct.intel_engine_execlists = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @reset_csb_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_csb_pointers(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_engine_execlists*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 0
  store %struct.intel_engine_execlists* %6, %struct.intel_engine_execlists** %3, align 8
  %7 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %8 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %12 = call i32 @ring_set_paused(%struct.intel_engine_cs* %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %15 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %17 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @WRITE_ONCE(i32 %19, i32 %20)
  %22 = call i32 (...) @wmb()
  %23 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %24 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %28 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @invalidate_csb_entries(i32* %26, i32* %32)
  ret void
}

declare dso_local i32 @ring_set_paused(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @invalidate_csb_entries(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
