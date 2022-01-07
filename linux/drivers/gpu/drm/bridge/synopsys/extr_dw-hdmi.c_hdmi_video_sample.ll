; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_video_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_video_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE = common dso_local global i32 0, align 4
@HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET = common dso_local global i32 0, align 4
@HDMI_TX_INVID0_VIDEO_MAPPING_MASK = common dso_local global i32 0, align 4
@HDMI_TX_INVID0 = common dso_local global i32 0, align 4
@HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE = common dso_local global i32 0, align 4
@HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE = common dso_local global i32 0, align 4
@HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE = common dso_local global i32 0, align 4
@HDMI_TX_INSTUFFING = common dso_local global i32 0, align 4
@HDMI_TX_GYDATA0 = common dso_local global i32 0, align 4
@HDMI_TX_GYDATA1 = common dso_local global i32 0, align 4
@HDMI_TX_RCRDATA0 = common dso_local global i32 0, align 4
@HDMI_TX_RCRDATA1 = common dso_local global i32 0, align 4
@HDMI_TX_BCBDATA0 = common dso_local global i32 0, align 4
@HDMI_TX_BCBDATA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @hdmi_video_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_video_sample(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %6 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 139, label %9
    i32 142, label %10
    i32 141, label %11
    i32 140, label %12
    i32 128, label %13
    i32 132, label %13
    i32 131, label %14
    i32 135, label %14
    i32 130, label %15
    i32 134, label %15
    i32 129, label %16
    i32 133, label %16
    i32 136, label %17
    i32 138, label %18
    i32 137, label %19
  ]

9:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %21

10:                                               ; preds = %1
  store i32 3, i32* %3, align 4
  br label %21

11:                                               ; preds = %1
  store i32 5, i32* %3, align 4
  br label %21

12:                                               ; preds = %1
  store i32 7, i32* %3, align 4
  br label %21

13:                                               ; preds = %1, %1
  store i32 9, i32* %3, align 4
  br label %21

14:                                               ; preds = %1, %1
  store i32 11, i32* %3, align 4
  br label %21

15:                                               ; preds = %1, %1
  store i32 13, i32* %3, align 4
  br label %21

16:                                               ; preds = %1, %1
  store i32 15, i32* %3, align 4
  br label %21

17:                                               ; preds = %1
  store i32 22, i32* %3, align 4
  br label %21

18:                                               ; preds = %1
  store i32 20, i32* %3, align 4
  br label %21

19:                                               ; preds = %1
  store i32 18, i32* %3, align 4
  br label %21

20:                                               ; preds = %1
  br label %60

21:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %22 = load i32, i32* @HDMI_TX_INVID0_INTERNAL_DE_GENERATOR_DISABLE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @HDMI_TX_INVID0_VIDEO_MAPPING_OFFSET, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @HDMI_TX_INVID0_VIDEO_MAPPING_MASK, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %22, %27
  store i32 %28, i32* %4, align 4
  %29 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @HDMI_TX_INVID0, align 4
  %32 = call i32 @hdmi_writeb(%struct.dw_hdmi* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @HDMI_TX_INSTUFFING_BDBDATA_STUFFING_ENABLE, align 4
  %34 = load i32, i32* @HDMI_TX_INSTUFFING_RCRDATA_STUFFING_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @HDMI_TX_INSTUFFING_GYDATA_STUFFING_ENABLE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @HDMI_TX_INSTUFFING, align 4
  %41 = call i32 @hdmi_writeb(%struct.dw_hdmi* %38, i32 %39, i32 %40)
  %42 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %43 = load i32, i32* @HDMI_TX_GYDATA0, align 4
  %44 = call i32 @hdmi_writeb(%struct.dw_hdmi* %42, i32 0, i32 %43)
  %45 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %46 = load i32, i32* @HDMI_TX_GYDATA1, align 4
  %47 = call i32 @hdmi_writeb(%struct.dw_hdmi* %45, i32 0, i32 %46)
  %48 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %49 = load i32, i32* @HDMI_TX_RCRDATA0, align 4
  %50 = call i32 @hdmi_writeb(%struct.dw_hdmi* %48, i32 0, i32 %49)
  %51 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %52 = load i32, i32* @HDMI_TX_RCRDATA1, align 4
  %53 = call i32 @hdmi_writeb(%struct.dw_hdmi* %51, i32 0, i32 %52)
  %54 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %55 = load i32, i32* @HDMI_TX_BCBDATA0, align 4
  %56 = call i32 @hdmi_writeb(%struct.dw_hdmi* %54, i32 0, i32 %55)
  %57 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %58 = load i32, i32* @HDMI_TX_BCBDATA1, align 4
  %59 = call i32 @hdmi_writeb(%struct.dw_hdmi* %57, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
