; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_reset_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_reset_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_3__, i32, %struct.intel_engine_execlists }
%struct.TYPE_3__ = type { i32 }
%struct.intel_engine_execlists = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: depth<-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @execlists_reset_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execlists_reset_prepare(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_engine_execlists*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 2
  store %struct.intel_engine_execlists* %6, %struct.intel_engine_execlists** %3, align 8
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %8 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %11 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  %14 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13)
  %15 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %16 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %15, i32 0, i32 0
  %17 = call i32 @__tasklet_disable_sync_once(%struct.TYPE_4__* %16)
  %18 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %19 = call i32 @reset_in_progress(%struct.intel_engine_execlists* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %25 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %30 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %35 = call i32 @intel_engine_stop_cs(%struct.intel_engine_cs* %34)
  ret void
}

declare dso_local i32 @GEM_TRACE(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__tasklet_disable_sync_once(%struct.TYPE_4__*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @reset_in_progress(%struct.intel_engine_execlists*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @intel_engine_stop_cs(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
