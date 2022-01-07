; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_write_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_write_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"rx fifo not empty after write, dumping data:\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"dsi_vc_write_common(ch %d, cmd 0x%02x, len %d) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32, i32*, i32, i32)* @dsi_vc_write_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_write_common(%struct.omap_dss_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsi_data*, align 8
  %13 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %15 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %14)
  store %struct.dsi_data* %15, %struct.dsi_data** %12, align 8
  %16 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @dsi_vc_write_nosync_common(%struct.dsi_data* %16, i32 %17, i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %46

25:                                               ; preds = %5
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dsi_vc_send_bta_sync(%struct.omap_dss_device* %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %46

32:                                               ; preds = %25
  %33 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @DSI_VC_CTRL(i32 %34)
  %36 = call i64 @REG_GET(%struct.dsi_data* %33, i32 %35, i32 20, i32 20)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.dsi_data*, %struct.dsi_data** %12, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dsi_vc_flush_receive_data(%struct.dsi_data* %40, i32 %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  br label %46

45:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %54

46:                                               ; preds = %38, %31, %24
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %46, %45
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dsi_vc_write_nosync_common(%struct.dsi_data*, i32, i32*, i32, i32) #1

declare dso_local i32 @dsi_vc_send_bta_sync(%struct.omap_dss_device*, i32) #1

declare dso_local i64 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @dsi_vc_flush_receive_data(%struct.dsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
