; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_write_nosync_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_write_nosync_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32 }

@DSS_DSI_CONTENT_DCS = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM = common dso_local global i32 0, align 4
@DSS_DSI_CONTENT_GENERIC = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_DCS_SHORT_WRITE = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_DCS_SHORT_WRITE_PARAM = common dso_local global i32 0, align 4
@MIPI_DSI_GENERIC_LONG_WRITE = common dso_local global i32 0, align 4
@MIPI_DSI_DCS_LONG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32, i32*, i32, i32)* @dsi_vc_write_nosync_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_write_nosync_common(%struct.dsi_data* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @DSS_DSI_CONTENT_DCS, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM, align 4
  %23 = call i32 @dsi_vc_send_short(%struct.dsi_data* %20, i32 %21, i32 %22, i32 0, i32 0)
  store i32 %23, i32* %11, align 4
  br label %84

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @MIPI_DSI_DCS_SHORT_WRITE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dsi_vc_send_short(%struct.dsi_data* %28, i32 %29, i32 %38, i32 %41, i32 0)
  store i32 %42, i32* %11, align 4
  br label %83

43:                                               ; preds = %24
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @MIPI_DSI_DCS_SHORT_WRITE_PARAM, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %60, %64
  %66 = call i32 @dsi_vc_send_short(%struct.dsi_data* %47, i32 %48, i32 %57, i32 %65, i32 0)
  store i32 %66, i32* %11, align 4
  br label %82

67:                                               ; preds = %43
  %68 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @MIPI_DSI_GENERIC_LONG_WRITE, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @MIPI_DSI_DCS_LONG_WRITE, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @dsi_vc_send_long(%struct.dsi_data* %68, i32 %69, i32 %78, i32* %79, i32 %80, i32 0)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %77, %56
  br label %83

83:                                               ; preds = %82, %37
  br label %84

84:                                               ; preds = %83, %14
  %85 = load i32, i32* %11, align 4
  ret i32 %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dsi_vc_send_short(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_vc_send_long(%struct.dsi_data*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
