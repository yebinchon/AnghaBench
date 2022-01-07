; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_intel_lr_context_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_intel_lr_context_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, i64 }
%struct.intel_context = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@LRC_STATE_PN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_lr_context_reset(%struct.intel_engine_cs* %0, %struct.intel_context* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca %struct.intel_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %5, align 8
  store %struct.intel_context* %1, %struct.intel_context** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %14 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %23 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @LRC_STATE_PN, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %32, %34
  %36 = call i32 @memcpy(i32* %21, i64 %29, i64 %35)
  br label %37

37:                                               ; preds = %20, %12
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %40 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %41 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %42 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @execlists_init_reg_state(i32* %38, %struct.intel_context* %39, %struct.intel_engine_cs* %40, %struct.TYPE_3__* %43)
  br label %45

45:                                               ; preds = %37, %4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %48 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  %51 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %52 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @intel_ring_update_space(%struct.TYPE_3__* %53)
  %55 = load %struct.intel_context*, %struct.intel_context** %6, align 8
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %57 = call i32 @__execlists_update_reg_state(%struct.intel_context* %55, %struct.intel_engine_cs* %56)
  ret void
}

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @execlists_init_reg_state(i32*, %struct.intel_context*, %struct.intel_engine_cs*, %struct.TYPE_3__*) #1

declare dso_local i32 @intel_ring_update_space(%struct.TYPE_3__*) #1

declare dso_local i32 @__execlists_update_reg_state(%struct.intel_context*, %struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
