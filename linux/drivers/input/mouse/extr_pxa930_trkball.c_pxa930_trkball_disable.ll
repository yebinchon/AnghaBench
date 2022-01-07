; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_pxa930_trkball.c_pxa930_trkball_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_pxa930_trkball.c_pxa930_trkball_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa930_trkball = type { i64 }

@TBCR = common dso_local global i64 0, align 8
@TBCR_TBRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa930_trkball*)* @pxa930_trkball_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa930_trkball_disable(%struct.pxa930_trkball* %0) #0 {
  %2 = alloca %struct.pxa930_trkball*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa930_trkball* %0, %struct.pxa930_trkball** %2, align 8
  %4 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %2, align 8
  %5 = getelementptr inbounds %struct.pxa930_trkball, %struct.pxa930_trkball* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TBCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.pxa930_trkball*, %struct.pxa930_trkball** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @TBCR_TBRST, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @write_tbcr(%struct.pxa930_trkball* %10, i32 %13)
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @write_tbcr(%struct.pxa930_trkball*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
