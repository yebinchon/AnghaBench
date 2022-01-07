; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.falcon = type { i64 }

@FALCON_IDLESTATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_wait_idle(%struct.falcon* %0) #0 {
  %2 = alloca %struct.falcon*, align 8
  %3 = alloca i64, align 8
  store %struct.falcon* %0, %struct.falcon** %2, align 8
  %4 = load %struct.falcon*, %struct.falcon** %2, align 8
  %5 = getelementptr inbounds %struct.falcon, %struct.falcon* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FALCON_IDLESTATE, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @readl_poll_timeout(i64 %8, i64 %9, i32 %12, i32 10, i32 100000)
  ret i32 %13
}

declare dso_local i32 @readl_poll_timeout(i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
