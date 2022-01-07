; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_channel_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_channel_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@LR_SWAP = common dso_local global i32 0, align 4
@LFE_CC_SWAP = common dso_local global i32 0, align 4
@LSRS_SWAP = common dso_local global i32 0, align 4
@RLS_RRS_SWAP = common dso_local global i32 0, align 4
@LR_STATUS_SWAP = common dso_local global i32 0, align 4
@GRL_CH_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32)* @mtk_hdmi_hw_aud_set_channel_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_aud_set_channel_swap(%struct.mtk_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %17 [
    i32 131, label %7
    i32 132, label %9
    i32 129, label %11
    i32 128, label %13
    i32 130, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @LR_SWAP, align 4
  store i32 %8, i32* %5, align 4
  br label %19

9:                                                ; preds = %2
  %10 = load i32, i32* @LFE_CC_SWAP, align 4
  store i32 %10, i32* %5, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @LSRS_SWAP, align 4
  store i32 %12, i32* %5, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @RLS_RRS_SWAP, align 4
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @LR_STATUS_SWAP, align 4
  store i32 %16, i32* %5, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @LFE_CC_SWAP, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %15, %13, %11, %9, %7
  %20 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %21 = load i32, i32* @GRL_CH_SWAP, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mtk_hdmi_mask(%struct.mtk_hdmi* %20, i32 %21, i32 %22, i32 255)
  ret void
}

declare dso_local i32 @mtk_hdmi_mask(%struct.mtk_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
