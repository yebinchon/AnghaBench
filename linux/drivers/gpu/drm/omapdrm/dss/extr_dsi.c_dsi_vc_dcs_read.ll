; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_dcs_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_dcs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { i32 }

@DSS_DSI_CONTENT_DCS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dsi_vc_dcs_read(ch %d, cmd 0x%02x) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32, i32, i32*, i32)* @dsi_vc_dcs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_dcs_read(%struct.omap_dss_device* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsi_data*, align 8
  %13 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %15 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %14)
  store %struct.dsi_data* %15, %struct.dsi_data** %12, align 8
  %16 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @dsi_vc_dcs_send_read_request(%struct.dsi_data* %16, i32 %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %48

23:                                               ; preds = %5
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dsi_vc_send_bta_sync(%struct.omap_dss_device* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %48

30:                                               ; preds = %23
  %31 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @DSS_DSI_CONTENT_DCS, align 4
  %36 = call i32 @dsi_vc_read_rx_fifo(%struct.dsi_data* %31, i32 %32, i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %48

47:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %53

48:                                               ; preds = %44, %39, %29, %22
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @DSSERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %47
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dsi_vc_dcs_send_read_request(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dsi_vc_send_bta_sync(%struct.omap_dss_device*, i32) #1

declare dso_local i32 @dsi_vc_read_rx_fifo(%struct.dsi_data*, i32, i32*, i32, i32) #1

declare dso_local i32 @DSSERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
