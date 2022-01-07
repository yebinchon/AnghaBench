; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.core_stats = type { %struct.dc* }
%struct.dc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_stats_init(%struct.mod_stats* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mod_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.core_stats*, align 8
  %6 = alloca %struct.dc*, align 8
  store %struct.mod_stats* %0, %struct.mod_stats** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.core_stats* null, %struct.core_stats** %5, align 8
  store %struct.dc* null, %struct.dc** %6, align 8
  %7 = load %struct.mod_stats*, %struct.mod_stats** %3, align 8
  %8 = icmp eq %struct.mod_stats* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.mod_stats*, %struct.mod_stats** %3, align 8
  %12 = call %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats* %11)
  store %struct.core_stats* %12, %struct.core_stats** %5, align 8
  %13 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %14 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %13, i32 0, i32 0
  %15 = load %struct.dc*, %struct.dc** %14, align 8
  store %struct.dc* %15, %struct.dc** %6, align 8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %10, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
