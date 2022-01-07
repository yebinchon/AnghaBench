; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_cec.c_mtk_cec_clear_htplg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_cec.c_mtk_cec_clear_htplg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cec = type { i32 }

@TR_CONFIG = common dso_local global i32 0, align 4
@CLEAR_CEC_IRQ = common dso_local global i32 0, align 4
@NORMAL_INT_CTRL = common dso_local global i32 0, align 4
@HDMI_HTPLG_INT_CLR = common dso_local global i32 0, align 4
@HDMI_PORD_INT_CLR = common dso_local global i32 0, align 4
@HDMI_FULL_INT_CLR = common dso_local global i32 0, align 4
@RX_GEN_WD = common dso_local global i32 0, align 4
@HDMI_PORD_INT_32K_CLR = common dso_local global i32 0, align 4
@RX_INT_32K_CLR = common dso_local global i32 0, align 4
@HDMI_HTPLG_INT_32K_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cec*)* @mtk_cec_clear_htplg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cec_clear_htplg_irq(%struct.mtk_cec* %0) #0 {
  %2 = alloca %struct.mtk_cec*, align 8
  store %struct.mtk_cec* %0, %struct.mtk_cec** %2, align 8
  %3 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %4 = load i32, i32* @TR_CONFIG, align 4
  %5 = load i32, i32* @CLEAR_CEC_IRQ, align 4
  %6 = call i32 @mtk_cec_set_bits(%struct.mtk_cec* %3, i32 %4, i32 %5)
  %7 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %8 = load i32, i32* @NORMAL_INT_CTRL, align 4
  %9 = load i32, i32* @HDMI_HTPLG_INT_CLR, align 4
  %10 = load i32, i32* @HDMI_PORD_INT_CLR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HDMI_FULL_INT_CLR, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mtk_cec_set_bits(%struct.mtk_cec* %7, i32 %8, i32 %13)
  %15 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %16 = load i32, i32* @RX_GEN_WD, align 4
  %17 = load i32, i32* @HDMI_PORD_INT_32K_CLR, align 4
  %18 = load i32, i32* @RX_INT_32K_CLR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HDMI_HTPLG_INT_32K_CLR, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @mtk_cec_set_bits(%struct.mtk_cec* %15, i32 %16, i32 %21)
  %23 = call i32 @usleep_range(i32 5, i32 10)
  %24 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %25 = load i32, i32* @NORMAL_INT_CTRL, align 4
  %26 = load i32, i32* @HDMI_HTPLG_INT_CLR, align 4
  %27 = load i32, i32* @HDMI_PORD_INT_CLR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HDMI_FULL_INT_CLR, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mtk_cec_clear_bits(%struct.mtk_cec* %24, i32 %25, i32 %30)
  %32 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %33 = load i32, i32* @TR_CONFIG, align 4
  %34 = load i32, i32* @CLEAR_CEC_IRQ, align 4
  %35 = call i32 @mtk_cec_clear_bits(%struct.mtk_cec* %32, i32 %33, i32 %34)
  %36 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %37 = load i32, i32* @RX_GEN_WD, align 4
  %38 = load i32, i32* @HDMI_PORD_INT_32K_CLR, align 4
  %39 = load i32, i32* @RX_INT_32K_CLR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @HDMI_HTPLG_INT_32K_CLR, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mtk_cec_clear_bits(%struct.mtk_cec* %36, i32 %37, i32 %42)
  ret void
}

declare dso_local i32 @mtk_cec_set_bits(%struct.mtk_cec*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mtk_cec_clear_bits(%struct.mtk_cec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
