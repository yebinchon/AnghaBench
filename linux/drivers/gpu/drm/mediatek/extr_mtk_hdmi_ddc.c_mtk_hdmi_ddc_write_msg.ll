; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_mtk_hdmi_ddc_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_mtk_hdmi_ddc_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi_ddc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.i2c_msg = type { i32, i32* }

@DDCM_START = common dso_local global i32 0, align 4
@DDC_DDCMD0 = common dso_local global i32 0, align 4
@DDCM_DATA0 = common dso_local global i32 0, align 4
@DDCM_DATA1 = common dso_local global i32 0, align 4
@DDC_DDCMCTL1 = common dso_local global i32 0, align 4
@DDCM_PGLEN_MASK = common dso_local global i32 0, align 4
@DDCM_PGLEN_OFFSET = common dso_local global i32 0, align 4
@DDCM_WRITE_DATA = common dso_local global i32 0, align 4
@DDCM_ACK_MASK = common dso_local global i32 0, align 4
@DDCM_ACK_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ack = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"i2c ack err!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi_ddc*, %struct.i2c_msg*)* @mtk_hdmi_ddc_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_ddc_write_msg(%struct.mtk_hdmi_ddc* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hdmi_ddc*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_hdmi_ddc* %0, %struct.mtk_hdmi_ddc** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %8 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_hdmi_ddc, %struct.mtk_hdmi_ddc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %14 = load i32, i32* @DDCM_START, align 4
  %15 = call i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc* %13, i32 %14)
  %16 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %17 = load i32, i32* @DDC_DDCMD0, align 4
  %18 = load i32, i32* @DDCM_DATA0, align 4
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 1
  %23 = call i32 @sif_write_mask(%struct.mtk_hdmi_ddc* %16, i32 %17, i32 %18, i32 0, i32 %22)
  %24 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %25 = load i32, i32* @DDC_DDCMD0, align 4
  %26 = load i32, i32* @DDCM_DATA1, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sif_write_mask(%struct.mtk_hdmi_ddc* %24, i32 %25, i32 %26, i32 8, i32 %31)
  %33 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %34 = load i32, i32* @DDC_DDCMCTL1, align 4
  %35 = load i32, i32* @DDCM_PGLEN_MASK, align 4
  %36 = load i32, i32* @DDCM_PGLEN_OFFSET, align 4
  %37 = call i32 @sif_write_mask(%struct.mtk_hdmi_ddc* %33, i32 %34, i32 %35, i32 %36, i32 1)
  %38 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %39 = load i32, i32* @DDCM_WRITE_DATA, align 4
  %40 = call i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc* %38, i32 %39)
  %41 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %4, align 8
  %42 = load i32, i32* @DDC_DDCMCTL1, align 4
  %43 = load i32, i32* @DDCM_ACK_MASK, align 4
  %44 = load i32, i32* @DDCM_ACK_OFFSET, align 4
  %45 = call i32 @sif_read_mask(%struct.mtk_hdmi_ddc* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %56

51:                                               ; preds = %2
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc*, i32) #1

declare dso_local i32 @sif_write_mask(%struct.mtk_hdmi_ddc*, i32, i32, i32, i32) #1

declare dso_local i32 @sif_read_mask(%struct.mtk_hdmi_ddc*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
