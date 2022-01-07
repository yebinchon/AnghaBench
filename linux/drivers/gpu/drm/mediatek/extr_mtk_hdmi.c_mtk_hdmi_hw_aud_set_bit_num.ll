; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_bit_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_hw_aud_set_bit_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@AOUT_16BIT = common dso_local global i32 0, align 4
@AOUT_20BIT = common dso_local global i32 0, align 4
@AOUT_24BIT = common dso_local global i32 0, align 4
@GRL_AOUT_CFG = common dso_local global i32 0, align 4
@AOUT_BNUM_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32)* @mtk_hdmi_hw_aud_set_bit_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_hw_aud_set_bit_num(%struct.mtk_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %13 [
    i32 131, label %7
    i32 130, label %9
    i32 129, label %11
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @AOUT_16BIT, align 4
  store i32 %8, i32* %5, align 4
  br label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @AOUT_20BIT, align 4
  store i32 %10, i32* %5, align 4
  br label %13

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @AOUT_24BIT, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %2, %11, %9, %7
  %14 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %3, align 8
  %15 = load i32, i32* @GRL_AOUT_CFG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AOUT_BNUM_SEL_MASK, align 4
  %18 = call i32 @mtk_hdmi_mask(%struct.mtk_hdmi* %14, i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @mtk_hdmi_mask(%struct.mtk_hdmi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
