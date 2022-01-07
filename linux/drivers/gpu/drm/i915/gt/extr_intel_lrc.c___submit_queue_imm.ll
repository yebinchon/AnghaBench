; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___submit_queue_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c___submit_queue_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_engine_execlists }
%struct.intel_engine_execlists = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@execlists_submission_tasklet = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @__submit_queue_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__submit_queue_imm(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_engine_execlists*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 0
  store %struct.intel_engine_execlists* %5, %struct.intel_engine_execlists** %3, align 8
  %6 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %7 = call i64 @reset_in_progress(%struct.intel_engine_execlists* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %12 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @execlists_submission_tasklet, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %19 = call i32 @__execlists_submission_tasklet(%struct.intel_engine_cs* %18)
  br label %24

20:                                               ; preds = %10
  %21 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %22 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %21, i32 0, i32 0
  %23 = call i32 @tasklet_hi_schedule(%struct.TYPE_2__* %22)
  br label %24

24:                                               ; preds = %9, %20, %17
  ret void
}

declare dso_local i64 @reset_in_progress(%struct.intel_engine_execlists*) #1

declare dso_local i32 @__execlists_submission_tasklet(%struct.intel_engine_cs*) #1

declare dso_local i32 @tasklet_hi_schedule(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
