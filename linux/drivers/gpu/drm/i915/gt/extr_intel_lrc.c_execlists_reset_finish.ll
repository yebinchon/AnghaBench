; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_reset_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_execlists_reset_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.intel_engine_execlists }
%struct.intel_engine_execlists = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 (i32)* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: depth->%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @execlists_reset_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execlists_reset_finish(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_engine_execlists*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 1
  store %struct.intel_engine_execlists* %5, %struct.intel_engine_execlists** %3, align 8
  %6 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %7 = call i32 @reset_in_progress(%struct.intel_engine_execlists* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @GEM_BUG_ON(i32 %10)
  %12 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %13 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @RB_EMPTY_ROOT(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %19 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %23 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %21(i32 %25)
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %29 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %28, i32 0, i32 0
  %30 = call i64 @__tasklet_enable(%struct.TYPE_5__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %34 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %33, i32 0, i32 0
  %35 = call i32 @tasklet_hi_schedule(%struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %38 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %3, align 8
  %41 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @atomic_read(i32* %42)
  %44 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @reset_in_progress(%struct.intel_engine_execlists*) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i64 @__tasklet_enable(%struct.TYPE_5__*) #1

declare dso_local i32 @tasklet_hi_schedule(%struct.TYPE_5__*) #1

declare dso_local i32 @GEM_TRACE(i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
