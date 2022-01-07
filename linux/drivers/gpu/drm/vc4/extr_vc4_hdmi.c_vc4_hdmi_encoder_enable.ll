; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device*, %struct.TYPE_5__* }
%struct.drm_device = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vc4_hdmi_encoder = type { i32, i64 }
%struct.vc4_dev = type { %struct.vc4_hdmi* }
%struct.vc4_hdmi = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_printer = type { i32 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@VC4_HDMI_VERTA_VSP = common dso_local global i32 0, align 4
@VC4_HDMI_VERTA_VFP = common dso_local global i32 0, align 4
@VC4_HDMI_VERTA_VAL = common dso_local global i32 0, align 4
@VC4_HDMI_VERTB_VSPO = common dso_local global i32 0, align 4
@VC4_HDMI_VERTB_VBP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to retain power domain: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set pixel clock rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to turn on pixel clock: %d\0A\00", align 1
@VC4_HDMI_SW_RESET_CONTROL = common dso_local global i32 0, align 4
@VC4_HDMI_SW_RESET_HDMI = common dso_local global i32 0, align 4
@VC4_HDMI_SW_RESET_FORMAT_DETECT = common dso_local global i32 0, align 4
@VC4_HDMI_TX_PHY_RESET_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"HDMI regs before:\0A\00", align 1
@VC4_HD_VID_CTL = common dso_local global i32 0, align 4
@VC4_HDMI_SCHEDULER_CONTROL = common dso_local global i32 0, align 4
@VC4_HDMI_SCHEDULER_CONTROL_MANUAL_FORMAT = common dso_local global i32 0, align 4
@VC4_HDMI_SCHEDULER_CONTROL_IGNORE_VSYNC_PREDICTS = common dso_local global i32 0, align 4
@VC4_HDMI_HORZA = common dso_local global i32 0, align 4
@VC4_HDMI_HORZA_VPOS = common dso_local global i32 0, align 4
@VC4_HDMI_HORZA_HPOS = common dso_local global i32 0, align 4
@VC4_HDMI_HORZA_HAP = common dso_local global i32 0, align 4
@VC4_HDMI_HORZB = common dso_local global i32 0, align 4
@VC4_HDMI_HORZB_HBP = common dso_local global i32 0, align 4
@VC4_HDMI_HORZB_HSP = common dso_local global i32 0, align 4
@VC4_HDMI_HORZB_HFP = common dso_local global i32 0, align 4
@VC4_HDMI_VERTA0 = common dso_local global i32 0, align 4
@VC4_HDMI_VERTA1 = common dso_local global i32 0, align 4
@VC4_HDMI_VERTB0 = common dso_local global i32 0, align 4
@VC4_HDMI_VERTB1 = common dso_local global i32 0, align 4
@VC4_HD_VID_CTL_VSYNC_LOW = common dso_local global i32 0, align 4
@VC4_HD_VID_CTL_HSYNC_LOW = common dso_local global i32 0, align 4
@VC4_HD_CSC_CTL_ORDER_BGR = common dso_local global i32 0, align 4
@VC4_HD_CSC_CTL_ORDER = common dso_local global i32 0, align 4
@HDMI_QUANTIZATION_RANGE_LIMITED = common dso_local global i64 0, align 8
@VC4_HD_CSC_CTL_ENABLE = common dso_local global i32 0, align 4
@VC4_HD_CSC_CTL_RGB2YCC = common dso_local global i32 0, align 4
@VC4_HD_CSC_CTL_MODE_CUSTOM = common dso_local global i32 0, align 4
@VC4_HD_CSC_CTL_MODE = common dso_local global i32 0, align 4
@VC4_HD_CSC_12_11 = common dso_local global i32 0, align 4
@VC4_HD_CSC_14_13 = common dso_local global i32 0, align 4
@VC4_HD_CSC_22_21 = common dso_local global i32 0, align 4
@VC4_HD_CSC_24_23 = common dso_local global i32 0, align 4
@VC4_HD_CSC_32_31 = common dso_local global i32 0, align 4
@VC4_HD_CSC_34_33 = common dso_local global i32 0, align 4
@VC4_HD_CSC_CTL = common dso_local global i32 0, align 4
@VC4_HDMI_FIFO_CTL = common dso_local global i32 0, align 4
@VC4_HDMI_FIFO_CTL_MASTER_SLAVE_N = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"HDMI regs after:\0A\00", align 1
@VC4_HD_VID_CTL_ENABLE = common dso_local global i32 0, align 4
@VC4_HD_VID_CTL_UNDERFLOW_ENABLE = common dso_local global i32 0, align 4
@VC4_HD_VID_CTL_FRAME_COUNTER_RESET = common dso_local global i32 0, align 4
@VC4_HDMI_SCHEDULER_CONTROL_MODE_HDMI = common dso_local global i32 0, align 4
@VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"Timeout waiting for VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\0A\00", align 1
@VC4_HDMI_RAM_PACKET_CONFIG = common dso_local global i32 0, align 4
@VC4_HDMI_RAM_PACKET_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"Timeout waiting for !VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\0A\00", align 1
@VC4_HDMI_SCHEDULER_CONTROL_VERT_ALWAYS_KEEPOUT = common dso_local global i32 0, align 4
@VC4_HDMI_FIFO_VALID_WRITE_MASK = common dso_local global i32 0, align 4
@VC4_HDMI_FIFO_CTL_RECENTER = common dso_local global i32 0, align 4
@VC4_HDMI_FIFO_CTL_RECENTER_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"Timeout waiting for VC4_HDMI_FIFO_CTL_RECENTER_DONE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @vc4_hdmi_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_hdmi_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.vc4_hdmi_encoder*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca %struct.vc4_hdmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.drm_printer, align 4
  %19 = alloca %struct.drm_printer, align 4
  %20 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %3, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %28 = call %struct.vc4_hdmi_encoder* @to_vc4_hdmi_encoder(%struct.drm_encoder* %27)
  store %struct.vc4_hdmi_encoder* %28, %struct.vc4_hdmi_encoder** %4, align 8
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %30 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %29, i32 0, i32 0
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  store %struct.drm_device* %31, %struct.drm_device** %5, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %32)
  store %struct.vc4_dev* %33, %struct.vc4_dev** %6, align 8
  %34 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %35 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %34, i32 0, i32 0
  %36 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %35, align 8
  store %struct.vc4_hdmi* %36, %struct.vc4_hdmi** %7, align 8
  store i32 0, i32* %8, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 2, i32 1
  store i32 %59, i32* %12, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = load i32, i32* @VC4_HDMI_VERTA_VSP, align 4
  %68 = call i32 @VC4_SET_FIELD(i32 %66, i32 %67)
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = load i32, i32* @VC4_HDMI_VERTA_VFP, align 4
  %77 = call i32 @VC4_SET_FIELD(i32 %75, i32 %76)
  %78 = or i32 %68, %77
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @VC4_HDMI_VERTA_VAL, align 4
  %83 = call i32 @VC4_SET_FIELD(i32 %81, i32 %82)
  %84 = or i32 %78, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @VC4_HDMI_VERTB_VSPO, align 4
  %86 = call i32 @VC4_SET_FIELD(i32 0, i32 %85)
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  %94 = load i32, i32* @VC4_HDMI_VERTB_VBP, align 4
  %95 = call i32 @VC4_SET_FIELD(i32 %93, i32 %94)
  %96 = or i32 %86, %95
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* @VC4_HDMI_VERTB_VSPO, align 4
  %98 = call i32 @VC4_SET_FIELD(i32 0, i32 %97)
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %101, %104
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* @VC4_HDMI_VERTB_VBP, align 4
  %109 = call i32 @VC4_SET_FIELD(i32 %107, i32 %108)
  %110 = or i32 %98, %109
  store i32 %110, i32* %15, align 4
  %111 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %112 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = call i32 @pm_runtime_get_sync(i32* %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %1
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %470

121:                                              ; preds = %1
  %122 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %123 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 1000
  %129 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %130 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 2, i32 1
  %137 = mul nsw i32 %128, %136
  %138 = call i32 @clk_set_rate(i32 %124, i32 %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %121
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  br label %470

144:                                              ; preds = %121
  %145 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %146 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @clk_prepare_enable(i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i32, i32* %17, align 4
  %153 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %470

154:                                              ; preds = %144
  %155 = load i32, i32* @VC4_HDMI_SW_RESET_CONTROL, align 4
  %156 = load i32, i32* @VC4_HDMI_SW_RESET_HDMI, align 4
  %157 = load i32, i32* @VC4_HDMI_SW_RESET_FORMAT_DETECT, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @HDMI_WRITE(i32 %155, i32 %158)
  %160 = load i32, i32* @VC4_HDMI_SW_RESET_CONTROL, align 4
  %161 = call i32 @HDMI_WRITE(i32 %160, i32 0)
  %162 = load i32, i32* @VC4_HDMI_TX_PHY_RESET_CTL, align 4
  %163 = call i32 @HDMI_WRITE(i32 %162, i32 983040)
  %164 = load i32, i32* @VC4_HDMI_TX_PHY_RESET_CTL, align 4
  %165 = call i32 @HDMI_WRITE(i32 %164, i32 0)
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %154
  %169 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %170 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %169, i32 0, i32 2
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = call i32 @drm_info_printer(i32* %172)
  %174 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %18, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  %175 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %176 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %175, i32 0, i32 2
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = call i32 @dev_info(i32* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %180 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %181 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %180, i32 0, i32 1
  %182 = call i32 @drm_print_regset32(%struct.drm_printer* %18, i32* %181)
  %183 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %184 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %183, i32 0, i32 0
  %185 = call i32 @drm_print_regset32(%struct.drm_printer* %18, i32* %184)
  br label %186

186:                                              ; preds = %168, %154
  %187 = load i32, i32* @VC4_HD_VID_CTL, align 4
  %188 = call i32 @HD_WRITE(i32 %187, i32 0)
  %189 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %190 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %191 = call i32 @HDMI_READ(i32 %190)
  %192 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL_MANUAL_FORMAT, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL_IGNORE_VSYNC_PREDICTS, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @HDMI_WRITE(i32 %189, i32 %195)
  %197 = load i32, i32* @VC4_HDMI_HORZA, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %186
  %201 = load i32, i32* @VC4_HDMI_HORZA_VPOS, align 4
  br label %203

202:                                              ; preds = %186
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ %201, %200 ], [ 0, %202 ]
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i32, i32* @VC4_HDMI_HORZA_HPOS, align 4
  br label %210

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %207
  %211 = phi i32 [ %208, %207 ], [ 0, %209 ]
  %212 = or i32 %204, %211
  %213 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %214 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %12, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32, i32* @VC4_HDMI_HORZA_HAP, align 4
  %219 = call i32 @VC4_SET_FIELD(i32 %217, i32 %218)
  %220 = or i32 %212, %219
  %221 = call i32 @HDMI_WRITE(i32 %197, i32 %220)
  %222 = load i32, i32* @VC4_HDMI_HORZB, align 4
  %223 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %224 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %227 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  %230 = load i32, i32* %12, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* @VC4_HDMI_HORZB_HBP, align 4
  %233 = call i32 @VC4_SET_FIELD(i32 %231, i32 %232)
  %234 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %235 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %238 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %236, %239
  %241 = load i32, i32* %12, align 4
  %242 = mul nsw i32 %240, %241
  %243 = load i32, i32* @VC4_HDMI_HORZB_HSP, align 4
  %244 = call i32 @VC4_SET_FIELD(i32 %242, i32 %243)
  %245 = or i32 %233, %244
  %246 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %247 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %246, i32 0, i32 9
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %250 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %248, %251
  %253 = load i32, i32* %12, align 4
  %254 = mul nsw i32 %252, %253
  %255 = load i32, i32* @VC4_HDMI_HORZB_HFP, align 4
  %256 = call i32 @VC4_SET_FIELD(i32 %254, i32 %255)
  %257 = or i32 %245, %256
  %258 = call i32 @HDMI_WRITE(i32 %222, i32 %257)
  %259 = load i32, i32* @VC4_HDMI_VERTA0, align 4
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @HDMI_WRITE(i32 %259, i32 %260)
  %262 = load i32, i32* @VC4_HDMI_VERTA1, align 4
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @HDMI_WRITE(i32 %262, i32 %263)
  %265 = load i32, i32* @VC4_HDMI_VERTB0, align 4
  %266 = load i32, i32* %15, align 4
  %267 = call i32 @HDMI_WRITE(i32 %265, i32 %266)
  %268 = load i32, i32* @VC4_HDMI_VERTB1, align 4
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @HDMI_WRITE(i32 %268, i32 %269)
  %271 = load i32, i32* @VC4_HD_VID_CTL, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %210
  br label %277

275:                                              ; preds = %210
  %276 = load i32, i32* @VC4_HD_VID_CTL_VSYNC_LOW, align 4
  br label %277

277:                                              ; preds = %275, %274
  %278 = phi i32 [ 0, %274 ], [ %276, %275 ]
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %277
  br label %284

282:                                              ; preds = %277
  %283 = load i32, i32* @VC4_HD_VID_CTL_HSYNC_LOW, align 4
  br label %284

284:                                              ; preds = %282, %281
  %285 = phi i32 [ 0, %281 ], [ %283, %282 ]
  %286 = or i32 %278, %285
  %287 = call i32 @HD_WRITE(i32 %271, i32 %286)
  %288 = load i32, i32* @VC4_HD_CSC_CTL_ORDER_BGR, align 4
  %289 = load i32, i32* @VC4_HD_CSC_CTL_ORDER, align 4
  %290 = call i32 @VC4_SET_FIELD(i32 %288, i32 %289)
  store i32 %290, i32* %16, align 4
  %291 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %4, align 8
  %292 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %326

295:                                              ; preds = %284
  %296 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %297 = call i64 @drm_default_rgb_quant_range(%struct.drm_display_mode* %296)
  %298 = load i64, i64* @HDMI_QUANTIZATION_RANGE_LIMITED, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %326

300:                                              ; preds = %295
  %301 = load i32, i32* @VC4_HD_CSC_CTL_ENABLE, align 4
  %302 = load i32, i32* %16, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %16, align 4
  %304 = load i32, i32* @VC4_HD_CSC_CTL_RGB2YCC, align 4
  %305 = load i32, i32* %16, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %16, align 4
  %307 = load i32, i32* @VC4_HD_CSC_CTL_MODE_CUSTOM, align 4
  %308 = load i32, i32* @VC4_HD_CSC_CTL_MODE, align 4
  %309 = call i32 @VC4_SET_FIELD(i32 %307, i32 %308)
  %310 = load i32, i32* %16, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %16, align 4
  %312 = load i32, i32* @VC4_HD_CSC_12_11, align 4
  %313 = call i32 @HD_WRITE(i32 %312, i32 0)
  %314 = load i32, i32* @VC4_HD_CSC_14_13, align 4
  %315 = call i32 @HD_WRITE(i32 %314, i32 16778976)
  %316 = load i32, i32* @VC4_HD_CSC_22_21, align 4
  %317 = call i32 @HD_WRITE(i32 %316, i32 115343360)
  %318 = load i32, i32* @VC4_HD_CSC_24_23, align 4
  %319 = call i32 @HD_WRITE(i32 %318, i32 16777216)
  %320 = load i32, i32* @VC4_HD_CSC_32_31, align 4
  %321 = call i32 @HD_WRITE(i32 %320, i32 1760)
  %322 = load i32, i32* @VC4_HD_CSC_34_33, align 4
  %323 = call i32 @HD_WRITE(i32 %322, i32 16777216)
  %324 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %4, align 8
  %325 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %324, i32 0, i32 0
  store i32 1, i32* %325, align 8
  br label %329

326:                                              ; preds = %295, %284
  %327 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %4, align 8
  %328 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %327, i32 0, i32 0
  store i32 0, i32* %328, align 8
  br label %329

329:                                              ; preds = %326, %300
  %330 = load i32, i32* @VC4_HD_CSC_CTL, align 4
  %331 = load i32, i32* %16, align 4
  %332 = call i32 @HD_WRITE(i32 %330, i32 %331)
  %333 = load i32, i32* @VC4_HDMI_FIFO_CTL, align 4
  %334 = load i32, i32* @VC4_HDMI_FIFO_CTL_MASTER_SLAVE_N, align 4
  %335 = call i32 @HDMI_WRITE(i32 %333, i32 %334)
  %336 = load i32, i32* %8, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %356

338:                                              ; preds = %329
  %339 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %340 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %339, i32 0, i32 2
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = call i32 @drm_info_printer(i32* %342)
  %344 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %19, i32 0, i32 0
  store i32 %343, i32* %344, align 4
  %345 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %346 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %345, i32 0, i32 2
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 0
  %349 = call i32 @dev_info(i32* %348, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %350 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %351 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %350, i32 0, i32 1
  %352 = call i32 @drm_print_regset32(%struct.drm_printer* %19, i32* %351)
  %353 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %7, align 8
  %354 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %353, i32 0, i32 0
  %355 = call i32 @drm_print_regset32(%struct.drm_printer* %19, i32* %354)
  br label %356

356:                                              ; preds = %338, %329
  %357 = load i32, i32* @VC4_HD_VID_CTL, align 4
  %358 = load i32, i32* @VC4_HD_VID_CTL, align 4
  %359 = call i32 @HD_READ(i32 %358)
  %360 = load i32, i32* @VC4_HD_VID_CTL_ENABLE, align 4
  %361 = or i32 %359, %360
  %362 = load i32, i32* @VC4_HD_VID_CTL_UNDERFLOW_ENABLE, align 4
  %363 = or i32 %361, %362
  %364 = load i32, i32* @VC4_HD_VID_CTL_FRAME_COUNTER_RESET, align 4
  %365 = or i32 %363, %364
  %366 = call i32 @HD_WRITE(i32 %357, i32 %365)
  %367 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %4, align 8
  %368 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %385

371:                                              ; preds = %356
  %372 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %373 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %374 = call i32 @HDMI_READ(i32 %373)
  %375 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL_MODE_HDMI, align 4
  %376 = or i32 %374, %375
  %377 = call i32 @HDMI_WRITE(i32 %372, i32 %376)
  %378 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %379 = call i32 @HDMI_READ(i32 %378)
  %380 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE, align 4
  %381 = and i32 %379, %380
  %382 = call i32 @wait_for(i32 %381, i32 1000)
  store i32 %382, i32* %17, align 4
  %383 = load i32, i32* %17, align 4
  %384 = call i32 @WARN_ONCE(i32 %383, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  br label %410

385:                                              ; preds = %356
  %386 = load i32, i32* @VC4_HDMI_RAM_PACKET_CONFIG, align 4
  %387 = load i32, i32* @VC4_HDMI_RAM_PACKET_CONFIG, align 4
  %388 = call i32 @HDMI_READ(i32 %387)
  %389 = load i32, i32* @VC4_HDMI_RAM_PACKET_ENABLE, align 4
  %390 = xor i32 %389, -1
  %391 = and i32 %388, %390
  %392 = call i32 @HDMI_WRITE(i32 %386, i32 %391)
  %393 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %394 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %395 = call i32 @HDMI_READ(i32 %394)
  %396 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL_MODE_HDMI, align 4
  %397 = xor i32 %396, -1
  %398 = and i32 %395, %397
  %399 = call i32 @HDMI_WRITE(i32 %393, i32 %398)
  %400 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %401 = call i32 @HDMI_READ(i32 %400)
  %402 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  %405 = xor i1 %404, true
  %406 = zext i1 %405 to i32
  %407 = call i32 @wait_for(i32 %406, i32 1000)
  store i32 %407, i32* %17, align 4
  %408 = load i32, i32* %17, align 4
  %409 = call i32 @WARN_ONCE(i32 %408, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  br label %410

410:                                              ; preds = %385, %371
  %411 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %4, align 8
  %412 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %470

415:                                              ; preds = %410
  %416 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %417 = call i32 @HDMI_READ(i32 %416)
  %418 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  %421 = xor i1 %420, true
  %422 = zext i1 %421 to i32
  %423 = call i32 @WARN_ON(i32 %422)
  %424 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %425 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL, align 4
  %426 = call i32 @HDMI_READ(i32 %425)
  %427 = load i32, i32* @VC4_HDMI_SCHEDULER_CONTROL_VERT_ALWAYS_KEEPOUT, align 4
  %428 = or i32 %426, %427
  %429 = call i32 @HDMI_WRITE(i32 %424, i32 %428)
  %430 = load i32, i32* @VC4_HDMI_RAM_PACKET_CONFIG, align 4
  %431 = load i32, i32* @VC4_HDMI_RAM_PACKET_ENABLE, align 4
  %432 = call i32 @HDMI_WRITE(i32 %430, i32 %431)
  %433 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %434 = call i32 @vc4_hdmi_set_infoframes(%struct.drm_encoder* %433)
  %435 = load i32, i32* @VC4_HDMI_FIFO_CTL, align 4
  %436 = call i32 @HDMI_READ(i32 %435)
  store i32 %436, i32* %20, align 4
  %437 = load i32, i32* @VC4_HDMI_FIFO_VALID_WRITE_MASK, align 4
  %438 = load i32, i32* %20, align 4
  %439 = and i32 %438, %437
  store i32 %439, i32* %20, align 4
  %440 = load i32, i32* @VC4_HDMI_FIFO_CTL, align 4
  %441 = load i32, i32* %20, align 4
  %442 = load i32, i32* @VC4_HDMI_FIFO_CTL_RECENTER, align 4
  %443 = xor i32 %442, -1
  %444 = and i32 %441, %443
  %445 = call i32 @HDMI_WRITE(i32 %440, i32 %444)
  %446 = load i32, i32* @VC4_HDMI_FIFO_CTL, align 4
  %447 = load i32, i32* %20, align 4
  %448 = load i32, i32* @VC4_HDMI_FIFO_CTL_RECENTER, align 4
  %449 = or i32 %447, %448
  %450 = call i32 @HDMI_WRITE(i32 %446, i32 %449)
  %451 = call i32 @usleep_range(i32 1000, i32 1100)
  %452 = load i32, i32* @VC4_HDMI_FIFO_CTL, align 4
  %453 = load i32, i32* %20, align 4
  %454 = load i32, i32* @VC4_HDMI_FIFO_CTL_RECENTER, align 4
  %455 = xor i32 %454, -1
  %456 = and i32 %453, %455
  %457 = call i32 @HDMI_WRITE(i32 %452, i32 %456)
  %458 = load i32, i32* @VC4_HDMI_FIFO_CTL, align 4
  %459 = load i32, i32* %20, align 4
  %460 = load i32, i32* @VC4_HDMI_FIFO_CTL_RECENTER, align 4
  %461 = or i32 %459, %460
  %462 = call i32 @HDMI_WRITE(i32 %458, i32 %461)
  %463 = load i32, i32* @VC4_HDMI_FIFO_CTL, align 4
  %464 = call i32 @HDMI_READ(i32 %463)
  %465 = load i32, i32* @VC4_HDMI_FIFO_CTL_RECENTER_DONE, align 4
  %466 = and i32 %464, %465
  %467 = call i32 @wait_for(i32 %466, i32 1)
  store i32 %467, i32* %17, align 4
  %468 = load i32, i32* %17, align 4
  %469 = call i32 @WARN_ONCE(i32 %468, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %470

470:                                              ; preds = %118, %141, %151, %415, %410
  ret void
}

declare dso_local %struct.vc4_hdmi_encoder* @to_vc4_hdmi_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @HDMI_WRITE(i32, i32) #1

declare dso_local i32 @drm_info_printer(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @drm_print_regset32(%struct.drm_printer*, i32*) #1

declare dso_local i32 @HD_WRITE(i32, i32) #1

declare dso_local i32 @HDMI_READ(i32) #1

declare dso_local i64 @drm_default_rgb_quant_range(%struct.drm_display_mode*) #1

declare dso_local i32 @HD_READ(i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vc4_hdmi_set_infoframes(%struct.drm_encoder*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
