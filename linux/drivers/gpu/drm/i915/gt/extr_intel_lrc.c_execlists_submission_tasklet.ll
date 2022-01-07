; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_submission_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_submission_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @execlists_submission_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execlists_submission_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.intel_engine_cs*
  store %struct.intel_engine_cs* %6, %struct.intel_engine_cs** %3, align 8
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %8 = call i32 @process_csb(%struct.intel_engine_cs* %7)
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @READ_ONCE(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %24 = call i32 @__execlists_submission_tasklet(%struct.intel_engine_cs* %23)
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @process_csb(%struct.intel_engine_cs*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__execlists_submission_tasklet(%struct.intel_engine_cs*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
