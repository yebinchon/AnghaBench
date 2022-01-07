; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gtintel_engine.h_intel_engine_context_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gtintel_engine.h_intel_engine_context_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @intel_engine_context_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_engine_context_in(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @READ_ONCE(i64 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @write_seqlock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %18 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %11
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %24 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = call i32 (...) @ktime_get()
  %31 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %32 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %36 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @GEM_BUG_ON(i32 %40)
  br label %42

42:                                               ; preds = %34, %11
  %43 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %44 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @write_sequnlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %42, %10
  ret void
}

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
