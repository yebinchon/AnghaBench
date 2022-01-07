; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_submission_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_submission_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_2__, %struct.intel_engine_execlists }
%struct.TYPE_2__ = type { i32 }
%struct.intel_engine_execlists = type { %struct.i915_request** }
%struct.i915_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @guc_submission_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_submission_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_engine_execlists*, align 8
  %5 = alloca %struct.i915_request**, align 8
  %6 = alloca %struct.i915_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.intel_engine_cs*
  store %struct.intel_engine_cs* %11, %struct.intel_engine_cs** %3, align 8
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %12, i32 0, i32 1
  store %struct.intel_engine_execlists* %13, %struct.intel_engine_execlists** %4, align 8
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %20 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %19, i32 0, i32 0
  %21 = load %struct.i915_request**, %struct.i915_request*** %20, align 8
  store %struct.i915_request** %21, %struct.i915_request*** %5, align 8
  br label %22

22:                                               ; preds = %34, %1
  %23 = load %struct.i915_request**, %struct.i915_request*** %5, align 8
  %24 = load %struct.i915_request*, %struct.i915_request** %23, align 8
  store %struct.i915_request* %24, %struct.i915_request** %6, align 8
  %25 = icmp ne %struct.i915_request* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %28 = call i32 @i915_request_completed(%struct.i915_request* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %37

31:                                               ; preds = %26
  %32 = load %struct.i915_request*, %struct.i915_request** %6, align 8
  %33 = call i32 @schedule_out(%struct.i915_request* %32)
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.i915_request**, %struct.i915_request*** %5, align 8
  %36 = getelementptr inbounds %struct.i915_request*, %struct.i915_request** %35, i32 1
  store %struct.i915_request** %36, %struct.i915_request*** %5, align 8
  br label %22

37:                                               ; preds = %30, %22
  %38 = load %struct.i915_request**, %struct.i915_request*** %5, align 8
  %39 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %40 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %39, i32 0, i32 0
  %41 = load %struct.i915_request**, %struct.i915_request*** %40, align 8
  %42 = icmp ne %struct.i915_request** %38, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.i915_request**, %struct.i915_request*** %5, align 8
  %45 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %46 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %45, i32 0, i32 0
  %47 = load %struct.i915_request**, %struct.i915_request*** %46, align 8
  %48 = ptrtoint %struct.i915_request** %44 to i64
  %49 = ptrtoint %struct.i915_request** %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %54 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %53, i32 0, i32 0
  %55 = load %struct.i915_request**, %struct.i915_request*** %54, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.i915_request** %55)
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %60 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %59, i32 0, i32 0
  %61 = load %struct.i915_request**, %struct.i915_request*** %60, align 8
  %62 = load %struct.i915_request**, %struct.i915_request*** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memmove(%struct.i915_request** %61, %struct.i915_request** %62, i32 %66)
  br label %68

68:                                               ; preds = %43, %37
  %69 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %70 = call i32 @__guc_dequeue(%struct.intel_engine_cs* %69)
  %71 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %72 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i32 @schedule_out(%struct.i915_request*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i915_request**) #1

declare dso_local i32 @memmove(%struct.i915_request**, %struct.i915_request**, i32) #1

declare dso_local i32 @__guc_dequeue(%struct.intel_engine_cs*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
