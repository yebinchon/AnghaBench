; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.core_stats = type { %struct.core_stats*, %struct.core_stats* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_stats_destroy(%struct.mod_stats* %0) #0 {
  %2 = alloca %struct.mod_stats*, align 8
  %3 = alloca %struct.core_stats*, align 8
  store %struct.mod_stats* %0, %struct.mod_stats** %2, align 8
  %4 = load %struct.mod_stats*, %struct.mod_stats** %2, align 8
  %5 = icmp ne %struct.mod_stats* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.mod_stats*, %struct.mod_stats** %2, align 8
  %8 = call %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats* %7)
  store %struct.core_stats* %8, %struct.core_stats** %3, align 8
  %9 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %10 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %9, i32 0, i32 1
  %11 = load %struct.core_stats*, %struct.core_stats** %10, align 8
  %12 = call i32 @kfree(%struct.core_stats* %11)
  %13 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %14 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %13, i32 0, i32 0
  %15 = load %struct.core_stats*, %struct.core_stats** %14, align 8
  %16 = call i32 @kfree(%struct.core_stats* %15)
  %17 = load %struct.core_stats*, %struct.core_stats** %3, align 8
  %18 = call i32 @kfree(%struct.core_stats* %17)
  br label %19

19:                                               ; preds = %6, %1
  ret void
}

declare dso_local %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats*) #1

declare dso_local i32 @kfree(%struct.core_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
