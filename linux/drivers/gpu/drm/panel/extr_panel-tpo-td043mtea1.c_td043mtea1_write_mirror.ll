; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_write_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_write_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td043mtea1_panel = type { i64 }

@TPO_R04_NFLIP_H = common dso_local global i32 0, align 4
@TPO_R04_NFLIP_V = common dso_local global i32 0, align 4
@TPO_R04_CP_CLK_FREQ_1H = common dso_local global i32 0, align 4
@TPO_R04_VGL_FREQ_1H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.td043mtea1_panel*)* @td043mtea1_write_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td043mtea1_write_mirror(%struct.td043mtea1_panel* %0) #0 {
  %2 = alloca %struct.td043mtea1_panel*, align 8
  %3 = alloca i32, align 4
  store %struct.td043mtea1_panel* %0, %struct.td043mtea1_panel** %2, align 8
  %4 = load i32, i32* @TPO_R04_NFLIP_H, align 4
  %5 = load i32, i32* @TPO_R04_NFLIP_V, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @TPO_R04_CP_CLK_FREQ_1H, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @TPO_R04_VGL_FREQ_1H, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %2, align 8
  %12 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @TPO_R04_NFLIP_V, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @td043mtea1_write(%struct.td043mtea1_panel* %21, i32 4, i32 %22)
  ret i32 %23
}

declare dso_local i32 @td043mtea1_write(%struct.td043mtea1_panel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
