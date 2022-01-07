; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_is_panel_powered_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_is_panel_powered_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }

@LVTMA_PWRSEQ_STATE = common dso_local global i32 0, align 4
@LVTMA_PWRSEQ_TARGET_STATE_R = common dso_local global i32 0, align 4
@LVTMA_PWRSEQ_CNTL = common dso_local global i32 0, align 4
@LVTMA_DIGON = common dso_local global i32 0, align 4
@LVTMA_DIGON_OVRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_hwseq*)* @is_panel_powered_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_panel_powered_on(%struct.dce_hwseq* %0) #0 {
  %2 = alloca %struct.dce_hwseq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %2, align 8
  %6 = load i32, i32* @LVTMA_PWRSEQ_STATE, align 4
  %7 = load i32, i32* @LVTMA_PWRSEQ_TARGET_STATE_R, align 4
  %8 = call i32 @REG_GET(i32 %6, i32 %7, i32* %3)
  %9 = load i32, i32* @LVTMA_PWRSEQ_CNTL, align 4
  %10 = load i32, i32* @LVTMA_DIGON, align 4
  %11 = load i32, i32* @LVTMA_DIGON_OVRD, align 4
  %12 = call i32 @REG_GET_2(i32 %9, i32 %10, i32* %4, i32 %11, i32* %5)
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i1 [ true, %1 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
