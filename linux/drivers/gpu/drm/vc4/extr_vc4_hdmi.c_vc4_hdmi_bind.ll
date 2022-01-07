; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { %struct.vc4_dev* }
%struct.vc4_dev = type { %struct.vc4_hdmi* }
%struct.vc4_hdmi = type { i32, i32, %struct.TYPE_8__*, i8*, i32*, i8*, i32, i8*, %struct.TYPE_7__, i8*, %struct.TYPE_6__, i8*, %struct.platform_device* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.vc4_hdmi_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VC4_ENCODER_TYPE_HDMI = common dso_local global i32 0, align 4
@hdmi_regs = common dso_local global i8* null, align 8
@hd_regs = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to get pixel clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to get HDMI state machine clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to find ddc node in device tree\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Failed to get ddc i2c adapter by node\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@HSM_CLOCK_FREQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to set HSM clock rate: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Failed to turn on HDMI state machine clock: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"hpd-gpios\00", align 1
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@VC4_HD_M_CTL = common dso_local global i32 0, align 4
@VC4_HD_M_ENABLE = common dso_local global i32 0, align 4
@VC4_HD_M_SW_RST = common dso_local global i32 0, align 4
@vc4_hdmi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@vc4_hdmi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"hdmi_regs\00", align 1
@vc4_hdmi_debugfs_regs = common dso_local global i32 0, align 4
@CEC_CAP_LOG_ADDRS = common dso_local global i32 0, align 4
@CEC_CAP_PASSTHROUGH = common dso_local global i32 0, align 4
@CEC_CAP_RC = common dso_local global i32 0, align 4
@CEC_CAP_TRANSMIT = common dso_local global i32 0, align 4
@VC4_HDMI_CEC_ADDR_MASK = common dso_local global i32 0, align 4
@VC4_HDMI_CEC_CNTRL_1 = common dso_local global i32 0, align 4
@VC4_HDMI_CEC_DIV_CLK_CNT_MASK = common dso_local global i32 0, align 4
@VC4_HDMI_CEC_DIV_CLK_CNT_SHIFT = common dso_local global i32 0, align 4
@VC4_HDMI_CPU_MASK_SET = common dso_local global i32 0, align 4
@vc4_cec_irq_handler = common dso_local global i32 0, align 4
@vc4_cec_irq_handler_thread = common dso_local global i32 0, align 4
@vc4_hdmi_cec_adap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vc4_hdmi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_hdmi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_hdmi*, align 8
  %12 = alloca %struct.vc4_hdmi_encoder*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.platform_device* @to_platform_device(%struct.device* %17)
  store %struct.platform_device* %18, %struct.platform_device** %8, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %19)
  store %struct.drm_device* %20, %struct.drm_device** %9, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.vc4_dev*, %struct.vc4_dev** %22, align 8
  store %struct.vc4_dev* %23, %struct.vc4_dev** %10, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.device* %24, i32 128, i32 %25)
  %27 = bitcast i8* %26 to %struct.vc4_hdmi*
  store %struct.vc4_hdmi* %27, %struct.vc4_hdmi** %11, align 8
  %28 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %29 = icmp ne %struct.vc4_hdmi* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %300

33:                                               ; preds = %3
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kzalloc(%struct.device* %34, i32 8, i32 %35)
  %37 = bitcast i8* %36 to %struct.vc4_hdmi_encoder*
  store %struct.vc4_hdmi_encoder* %37, %struct.vc4_hdmi_encoder** %12, align 8
  %38 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %12, align 8
  %39 = icmp ne %struct.vc4_hdmi_encoder* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %300

43:                                               ; preds = %33
  %44 = load i32, i32* @VC4_ENCODER_TYPE_HDMI, align 4
  %45 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %12, align 8
  %46 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.vc4_hdmi_encoder*, %struct.vc4_hdmi_encoder** %12, align 8
  %49 = getelementptr inbounds %struct.vc4_hdmi_encoder, %struct.vc4_hdmi_encoder* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %52 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %54 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %55 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %54, i32 0, i32 12
  store %struct.platform_device* %53, %struct.platform_device** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %57 = call i8* @vc4_ioremap_regs(%struct.platform_device* %56, i32 0)
  %58 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %59 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %58, i32 0, i32 11
  store i8* %57, i8** %59, align 8
  %60 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %61 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %60, i32 0, i32 11
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %43
  %66 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %67 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %66, i32 0, i32 11
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %4, align 4
  br label %300

70:                                               ; preds = %43
  %71 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %72 = call i8* @vc4_ioremap_regs(%struct.platform_device* %71, i32 1)
  %73 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %74 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %73, i32 0, i32 9
  store i8* %72, i8** %74, align 8
  %75 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %76 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %75, i32 0, i32 9
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %82 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %81, i32 0, i32 9
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %4, align 4
  br label %300

85:                                               ; preds = %70
  %86 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %87 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %86, i32 0, i32 11
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %90 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %89, i32 0, i32 10
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @hdmi_regs, align 8
  %93 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %94 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load i8*, i8** @hdmi_regs, align 8
  %97 = call i8* @ARRAY_SIZE(i8* %96)
  %98 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %99 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %102 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %101, i32 0, i32 9
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %105 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** @hd_regs, align 8
  %108 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %109 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %108, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** @hd_regs, align 8
  %112 = call i8* @ARRAY_SIZE(i8* %111)
  %113 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %114 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = call i8* @devm_clk_get(%struct.device* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %118 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %119 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %118, i32 0, i32 7
  store i8* %117, i8** %119, align 8
  %120 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %121 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %120, i32 0, i32 7
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @IS_ERR(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %85
  %126 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %128 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %127, i32 0, i32 7
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @PTR_ERR(i8* %129)
  store i32 %130, i32* %4, align 4
  br label %300

131:                                              ; preds = %85
  %132 = load %struct.device*, %struct.device** %5, align 8
  %133 = call i8* @devm_clk_get(%struct.device* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %134 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %135 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %137 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @IS_ERR(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %131
  %142 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %143 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %144 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @PTR_ERR(i8* %145)
  store i32 %146, i32* %4, align 4
  br label %300

147:                                              ; preds = %131
  %148 = load %struct.device*, %struct.device** %5, align 8
  %149 = getelementptr inbounds %struct.device, %struct.device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call %struct.device_node* @of_parse_phandle(i32 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.device_node* %151, %struct.device_node** %13, align 8
  %152 = load %struct.device_node*, %struct.device_node** %13, align 8
  %153 = icmp ne %struct.device_node* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %147
  %155 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %300

158:                                              ; preds = %147
  %159 = load %struct.device_node*, %struct.device_node** %13, align 8
  %160 = call %struct.TYPE_8__* @of_find_i2c_adapter_by_node(%struct.device_node* %159)
  %161 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %162 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %161, i32 0, i32 2
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %162, align 8
  %163 = load %struct.device_node*, %struct.device_node** %13, align 8
  %164 = call i32 @of_node_put(%struct.device_node* %163)
  %165 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %166 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %165, i32 0, i32 2
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = icmp ne %struct.TYPE_8__* %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %158
  %170 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %171 = load i32, i32* @EPROBE_DEFER, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %300

173:                                              ; preds = %158
  %174 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %175 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* @HSM_CLOCK_FREQ, align 4
  %178 = call i32 @clk_set_rate(i8* %176, i32 %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load i32, i32* %15, align 4
  %183 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %182)
  br label %293

184:                                              ; preds = %173
  %185 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %186 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @clk_prepare_enable(i8* %187)
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load i32, i32* %15, align 4
  %193 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %192)
  br label %293

194:                                              ; preds = %184
  %195 = load %struct.device*, %struct.device** %5, align 8
  %196 = getelementptr inbounds %struct.device, %struct.device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @of_find_property(i32 %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %14)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %221

200:                                              ; preds = %194
  %201 = load %struct.device*, %struct.device** %5, align 8
  %202 = getelementptr inbounds %struct.device, %struct.device* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @of_get_named_gpio_flags(i32 %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* %16)
  %205 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %206 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %208 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %200
  %212 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %213 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %15, align 4
  br label %286

215:                                              ; preds = %200
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %218 = and i32 %216, %217
  %219 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %220 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %215, %194
  %222 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %223 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %224 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %223, i32 0, i32 0
  store %struct.vc4_hdmi* %222, %struct.vc4_hdmi** %224, align 8
  %225 = load i32, i32* @VC4_HD_M_CTL, align 4
  %226 = call i32 @HD_READ(i32 %225)
  %227 = load i32, i32* @VC4_HD_M_ENABLE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %240, label %230

230:                                              ; preds = %221
  %231 = load i32, i32* @VC4_HD_M_CTL, align 4
  %232 = load i32, i32* @VC4_HD_M_SW_RST, align 4
  %233 = call i32 @HD_WRITE(i32 %231, i32 %232)
  %234 = call i32 @udelay(i32 1)
  %235 = load i32, i32* @VC4_HD_M_CTL, align 4
  %236 = call i32 @HD_WRITE(i32 %235, i32 0)
  %237 = load i32, i32* @VC4_HD_M_CTL, align 4
  %238 = load i32, i32* @VC4_HD_M_ENABLE, align 4
  %239 = call i32 @HD_WRITE(i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %230, %221
  %241 = load %struct.device*, %struct.device** %5, align 8
  %242 = call i32 @pm_runtime_enable(%struct.device* %241)
  %243 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %244 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %245 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %248 = call i32 @drm_encoder_init(%struct.drm_device* %243, i32* %246, i32* @vc4_hdmi_encoder_funcs, i32 %247, i32* null)
  %249 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %250 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @drm_encoder_helper_add(i32* %251, i32* @vc4_hdmi_encoder_helper_funcs)
  %253 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %254 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %255 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = call i8* @vc4_hdmi_connector_init(%struct.drm_device* %253, i32* %256)
  %258 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %259 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %258, i32 0, i32 5
  store i8* %257, i8** %259, align 8
  %260 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %261 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %260, i32 0, i32 5
  %262 = load i8*, i8** %261, align 8
  %263 = call i64 @IS_ERR(i8* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %240
  %266 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %267 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %266, i32 0, i32 5
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @PTR_ERR(i8* %268)
  store i32 %269, i32* %15, align 4
  br label %281

270:                                              ; preds = %240
  %271 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %272 = call i32 @vc4_hdmi_audio_init(%struct.vc4_hdmi* %271)
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %281

276:                                              ; preds = %270
  %277 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %278 = load i32, i32* @vc4_hdmi_debugfs_regs, align 4
  %279 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %280 = call i32 @vc4_debugfs_add_file(%struct.drm_device* %277, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %278, %struct.vc4_hdmi* %279)
  store i32 0, i32* %4, align 4
  br label %300

281:                                              ; preds = %275, %265
  %282 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %283 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %282, i32 0, i32 4
  %284 = load i32*, i32** %283, align 8
  %285 = call i32 @vc4_hdmi_encoder_destroy(i32* %284)
  br label %286

286:                                              ; preds = %281, %211
  %287 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %288 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %287, i32 0, i32 3
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @clk_disable_unprepare(i8* %289)
  %291 = load %struct.device*, %struct.device** %5, align 8
  %292 = call i32 @pm_runtime_disable(%struct.device* %291)
  br label %293

293:                                              ; preds = %286, %191, %181
  %294 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %11, align 8
  %295 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %294, i32 0, i32 2
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = call i32 @put_device(i32* %297)
  %299 = load i32, i32* %15, align 4
  store i32 %299, i32* %4, align 4
  br label %300

300:                                              ; preds = %293, %276, %169, %154, %141, %125, %80, %65, %40, %30
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @vc4_ioremap_regs(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i64 @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @of_get_named_gpio_flags(i32, i8*, i32, i32*) #1

declare dso_local i32 @HD_READ(i32) #1

declare dso_local i32 @HD_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(i32*, i32*) #1

declare dso_local i8* @vc4_hdmi_connector_init(%struct.drm_device*, i32*) #1

declare dso_local i32 @vc4_hdmi_audio_init(%struct.vc4_hdmi*) #1

declare dso_local i32 @vc4_debugfs_add_file(%struct.drm_device*, i8*, i32, %struct.vc4_hdmi*) #1

declare dso_local i32 @vc4_hdmi_encoder_destroy(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
