; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine.h_intel_engine_context_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine.h_intel_engine_context_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @intel_engine_context_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_engine_context_out(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @READ_ONCE(i64 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %82

12:                                               ; preds = %1
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @write_seqlock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %12
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = call i32 (...) @ktime_get()
  %38 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %39 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ktime_sub(i32 %37, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %44 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i8* @ktime_add(i8* %46, i32 %47)
  %49 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %50 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i8* %48, i8** %51, align 8
  br label %75

52:                                               ; preds = %29, %23
  %53 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %54 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = call i32 (...) @ktime_get()
  %60 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %61 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ktime_sub(i32 %59, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %66 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i8* @ktime_add(i8* %68, i32 %69)
  %71 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %72 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i8* %70, i8** %73, align 8
  br label %74

74:                                               ; preds = %58, %52
  br label %75

75:                                               ; preds = %74, %36
  br label %76

76:                                               ; preds = %75, %12
  %77 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %78 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @write_sequnlock_irqrestore(i32* %79, i64 %80)
  br label %82

82:                                               ; preds = %76, %11
  ret void
}

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i8* @ktime_add(i8*, i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
