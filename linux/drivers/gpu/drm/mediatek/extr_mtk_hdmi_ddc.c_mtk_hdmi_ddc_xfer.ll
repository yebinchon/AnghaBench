; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_mtk_hdmi_ddc_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_ddc.c_mtk_hdmi_ddc_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_2__, %struct.mtk_hdmi_ddc* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mtk_hdmi_ddc = type { i32 }
%struct.i2c_msg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid arguments\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DDC_DDCMCTL0 = common dso_local global i32 0, align 4
@DDCM_SCL_STRECH = common dso_local global i32 0, align 4
@DDCM_SM0EN = common dso_local global i32 0, align 4
@DDCM_ODRAIN = common dso_local global i32 0, align 4
@DDC_DDCMCTL1 = common dso_local global i32 0, align 4
@DDCM_TRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ddc line is busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DDCM_CLK_DIV_MASK = common dso_local global i32 0, align 4
@DDCM_CLK_DIV_OFFSET = common dso_local global i32 0, align 4
@SIF1_CLOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"i2c msg, adr:0x%x, flags:%d, len :0x%x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@DDCM_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ddc failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mtk_hdmi_ddc_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_ddc_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_hdmi_ddc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 1
  %15 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %14, align 8
  store %struct.mtk_hdmi_ddc* %15, %struct.mtk_hdmi_ddc** %8, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %9, align 8
  %20 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %21 = icmp ne %struct.mtk_hdmi_ddc* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %9, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %111

27:                                               ; preds = %3
  %28 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %29 = load i32, i32* @DDC_DDCMCTL0, align 4
  %30 = load i32, i32* @DDCM_SCL_STRECH, align 4
  %31 = call i32 @sif_set_bit(%struct.mtk_hdmi_ddc* %28, i32 %29, i32 %30)
  %32 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %33 = load i32, i32* @DDC_DDCMCTL0, align 4
  %34 = load i32, i32* @DDCM_SM0EN, align 4
  %35 = call i32 @sif_set_bit(%struct.mtk_hdmi_ddc* %32, i32 %33, i32 %34)
  %36 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %37 = load i32, i32* @DDC_DDCMCTL0, align 4
  %38 = load i32, i32* @DDCM_ODRAIN, align 4
  %39 = call i32 @sif_clr_bit(%struct.mtk_hdmi_ddc* %36, i32 %37, i32 %38)
  %40 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %41 = load i32, i32* @DDC_DDCMCTL1, align 4
  %42 = load i32, i32* @DDCM_TRI, align 4
  %43 = call i64 @sif_bit_is_set(%struct.mtk_hdmi_ddc* %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %27
  %46 = load %struct.device*, %struct.device** %9, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %111

50:                                               ; preds = %27
  %51 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %52 = load i32, i32* @DDC_DDCMCTL0, align 4
  %53 = load i32, i32* @DDCM_CLK_DIV_MASK, align 4
  %54 = load i32, i32* @DDCM_CLK_DIV_OFFSET, align 4
  %55 = load i32, i32* @SIF1_CLOK, align 4
  %56 = call i32 @sif_write_mask(%struct.mtk_hdmi_ddc* %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %96, %50
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i64 %64
  store %struct.i2c_msg* %65, %struct.i2c_msg** %12, align 8
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72, i32 %75)
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @I2C_M_RD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %61
  %84 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %85 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %86 = call i32 @mtk_hdmi_ddc_read_msg(%struct.mtk_hdmi_ddc* %84, %struct.i2c_msg* %85)
  store i32 %86, i32* %10, align 4
  br label %91

87:                                               ; preds = %61
  %88 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  %90 = call i32 @mtk_hdmi_ddc_write_msg(%struct.mtk_hdmi_ddc* %88, %struct.i2c_msg* %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %104

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %57

99:                                               ; preds = %57
  %100 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %101 = load i32, i32* @DDCM_STOP, align 4
  %102 = call i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc* %100, i32 %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %111

104:                                              ; preds = %94
  %105 = load %struct.mtk_hdmi_ddc*, %struct.mtk_hdmi_ddc** %8, align 8
  %106 = load i32, i32* @DDCM_STOP, align 4
  %107 = call i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc* %105, i32 %106)
  %108 = load %struct.device*, %struct.device** %9, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %104, %99, %45, %22
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sif_set_bit(%struct.mtk_hdmi_ddc*, i32, i32) #1

declare dso_local i32 @sif_clr_bit(%struct.mtk_hdmi_ddc*, i32, i32) #1

declare dso_local i64 @sif_bit_is_set(%struct.mtk_hdmi_ddc*, i32, i32) #1

declare dso_local i32 @sif_write_mask(%struct.mtk_hdmi_ddc*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @mtk_hdmi_ddc_read_msg(%struct.mtk_hdmi_ddc*, %struct.i2c_msg*) #1

declare dso_local i32 @mtk_hdmi_ddc_write_msg(%struct.mtk_hdmi_ddc*, %struct.i2c_msg*) #1

declare dso_local i32 @ddcm_trigger_mode(%struct.mtk_hdmi_ddc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
