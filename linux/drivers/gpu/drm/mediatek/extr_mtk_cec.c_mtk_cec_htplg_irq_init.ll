; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_cec.c_mtk_cec_htplg_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_cec.c_mtk_cec_htplg_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cec = type { i32 }

@CEC_CKGEN = common dso_local global i32 0, align 4
@CEC_32K_PDN = common dso_local global i32 0, align 4
@PDN = common dso_local global i32 0, align 4
@RX_GEN_WD = common dso_local global i32 0, align 4
@HDMI_PORD_INT_32K_CLR = common dso_local global i32 0, align 4
@RX_INT_32K_CLR = common dso_local global i32 0, align 4
@HDMI_HTPLG_INT_32K_CLR = common dso_local global i32 0, align 4
@HDMI_PORD_INT_32K_EN = common dso_local global i32 0, align 4
@RX_INT_32K_EN = common dso_local global i32 0, align 4
@HDMI_HTPLG_INT_32K_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cec*)* @mtk_cec_htplg_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cec_htplg_irq_init(%struct.mtk_cec* %0) #0 {
  %2 = alloca %struct.mtk_cec*, align 8
  store %struct.mtk_cec* %0, %struct.mtk_cec** %2, align 8
  %3 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %4 = load i32, i32* @CEC_CKGEN, align 4
  %5 = load i32, i32* @CEC_32K_PDN, align 4
  %6 = or i32 0, %5
  %7 = load i32, i32* @PDN, align 4
  %8 = load i32, i32* @CEC_32K_PDN, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mtk_cec_mask(%struct.mtk_cec* %3, i32 %4, i32 %6, i32 %9)
  %11 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %12 = load i32, i32* @RX_GEN_WD, align 4
  %13 = load i32, i32* @HDMI_PORD_INT_32K_CLR, align 4
  %14 = load i32, i32* @RX_INT_32K_CLR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @HDMI_HTPLG_INT_32K_CLR, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mtk_cec_set_bits(%struct.mtk_cec* %11, i32 %12, i32 %17)
  %19 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %20 = load i32, i32* @RX_GEN_WD, align 4
  %21 = load i32, i32* @HDMI_PORD_INT_32K_CLR, align 4
  %22 = load i32, i32* @RX_INT_32K_CLR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HDMI_HTPLG_INT_32K_CLR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HDMI_PORD_INT_32K_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RX_INT_32K_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HDMI_HTPLG_INT_32K_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @mtk_cec_mask(%struct.mtk_cec* %19, i32 %20, i32 0, i32 %31)
  ret void
}

declare dso_local i32 @mtk_cec_mask(%struct.mtk_cec*, i32, i32, i32) #1

declare dso_local i32 @mtk_cec_set_bits(%struct.mtk_cec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
