; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_video_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_hdmi_video_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDMI_CSC_CFG_INTMODE_DISABLE = common dso_local global i32 0, align 4
@HDMI_CSC_CFG_INTMODE_CHROMA_INT_FORMULA1 = common dso_local global i32 0, align 4
@HDMI_CSC_CFG_DECMODE_CHROMA_INT_FORMULA3 = common dso_local global i32 0, align 4
@HDMI_CSC_SCALE_CSC_COLORDE_PTH_24BPP = common dso_local global i32 0, align 4
@HDMI_CSC_SCALE_CSC_COLORDE_PTH_30BPP = common dso_local global i32 0, align 4
@HDMI_CSC_SCALE_CSC_COLORDE_PTH_36BPP = common dso_local global i32 0, align 4
@HDMI_CSC_SCALE_CSC_COLORDE_PTH_48BPP = common dso_local global i32 0, align 4
@HDMI_CSC_CFG = common dso_local global i32 0, align 4
@HDMI_CSC_SCALE_CSC_COLORDE_PTH_MASK = common dso_local global i32 0, align 4
@HDMI_CSC_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*)* @hdmi_video_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_video_csc(%struct.dw_hdmi* %0) #0 {
  %2 = alloca %struct.dw_hdmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @HDMI_CSC_CFG_INTMODE_DISABLE, align 4
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %8 = call i64 @is_color_space_interpolation(%struct.dw_hdmi* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @HDMI_CSC_CFG_INTMODE_CHROMA_INT_FORMULA1, align 4
  store i32 %11, i32* %4, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %14 = call i64 @is_color_space_decimation(%struct.dw_hdmi* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @HDMI_CSC_CFG_DECMODE_CHROMA_INT_FORMULA3, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %18, %10
  %20 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %21 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hdmi_bus_fmt_color_depth(i32 %23)
  switch i32 %24, label %33 [
    i32 8, label %25
    i32 10, label %27
    i32 12, label %29
    i32 16, label %31
  ]

25:                                               ; preds = %19
  %26 = load i32, i32* @HDMI_CSC_SCALE_CSC_COLORDE_PTH_24BPP, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %19
  %28 = load i32, i32* @HDMI_CSC_SCALE_CSC_COLORDE_PTH_30BPP, align 4
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @HDMI_CSC_SCALE_CSC_COLORDE_PTH_36BPP, align 4
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @HDMI_CSC_SCALE_CSC_COLORDE_PTH_48BPP, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %19
  br label %48

34:                                               ; preds = %31, %29, %27, %25
  %35 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @HDMI_CSC_CFG, align 4
  %40 = call i32 @hdmi_writeb(%struct.dw_hdmi* %35, i32 %38, i32 %39)
  %41 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @HDMI_CSC_SCALE_CSC_COLORDE_PTH_MASK, align 4
  %44 = load i32, i32* @HDMI_CSC_SCALE, align 4
  %45 = call i32 @hdmi_modb(%struct.dw_hdmi* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.dw_hdmi*, %struct.dw_hdmi** %2, align 8
  %47 = call i32 @dw_hdmi_update_csc_coeffs(%struct.dw_hdmi* %46)
  br label %48

48:                                               ; preds = %34, %33
  ret void
}

declare dso_local i64 @is_color_space_interpolation(%struct.dw_hdmi*) #1

declare dso_local i64 @is_color_space_decimation(%struct.dw_hdmi*) #1

declare dso_local i32 @hdmi_bus_fmt_color_depth(i32) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i32 @hdmi_modb(%struct.dw_hdmi*, i32, i32, i32) #1

declare dso_local i32 @dw_hdmi_update_csc_coeffs(%struct.dw_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
