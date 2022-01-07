; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c___dw_hdmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c___dw_hdmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.dw_hdmi = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_8__*, i8*, i8*, i32, i32, %struct.TYPE_7__, i32*, %struct.TYPE_6__, i32*, i32*, i32*, %struct.TYPE_5__, %struct.device*, i32*, i32, i32, i32, i32, %struct.dw_hdmi_plat_data* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device_node*, i32*, %struct.dw_hdmi* }
%struct.device_node = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.platform_device = type { %struct.device }
%struct.dw_hdmi_plat_data = type { i32* }
%struct.platform_device_info = type { i8*, i32, i8*, %struct.dw_hdmi_i2s_audio_data*, i32, %struct.device* }
%struct.dw_hdmi_i2s_audio_data = type { i32, i32 (%struct.dw_hdmi.0*, i32)*, i32*, %struct.dw_hdmi*, i32, i32, i32*, i32 }
%struct.dw_hdmi.0 = type opaque
%struct.dw_hdmi_cec_data = type { i32, i32 (%struct.dw_hdmi*, i32)*, i32*, %struct.dw_hdmi*, i32, i32, i32*, i32 }
%struct.resource = type { i32 }
%struct.dw_hdmi_audio_data = type { i32, i32 (%struct.dw_hdmi*, i32)*, i32*, %struct.dw_hdmi*, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HDMI_PHY_HPD = common dso_local global i32 0, align 4
@HDMI_PHY_RX_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to read ddc node\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no ddc property found\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@hdmi_regmap_32bit_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@hdmi_regmap_8bit_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"reg-io-width must be 1 or 4\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to configure regmap\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"isfr\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Unable to get HDMI isfr clk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Cannot enable HDMI isfr clock: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"iahb\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Unable to get HDMI iahb clk: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Cannot enable HDMI iahb clock: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Cannot get HDMI cec clock: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Cannot enable HDMI cec clock: %d\0A\00", align 1
@HDMI_DESIGN_ID = common dso_local global i32 0, align 4
@HDMI_REVISION_ID = common dso_local global i32 0, align 4
@HDMI_PRODUCT_ID0 = common dso_local global i32 0, align 4
@HDMI_PRODUCT_ID1 = common dso_local global i32 0, align 4
@HDMI_PRODUCT_ID0_HDMI_TX = common dso_local global i32 0, align 4
@HDMI_PRODUCT_ID1_HDCP = common dso_local global i32 0, align 4
@HDMI_PRODUCT_ID1_HDMI_TX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [46 x i8] c"Unsupported HDMI controller (%04x:%02x:%02x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [51 x i8] c"Detected HDMI TX controller v%x.%03x %s HDCP (%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@dw_hdmi_hardirq = common dso_local global i32 0, align 4
@dw_hdmi_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"unwedge\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Unwedge requires default pinctrl\0A\00", align 1
@dw_hdmi_bridge_funcs = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@HDMI_CONFIG0_ID = common dso_local global i32 0, align 4
@HDMI_CONFIG3_ID = common dso_local global i32 0, align 4
@HDMI_CONFIG3_AHBAUDDMA = common dso_local global i32 0, align 4
@dw_hdmi_ahb_audio_enable = common dso_local global i32 0, align 4
@dw_hdmi_ahb_audio_disable = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"dw-hdmi-ahb-audio\00", align 1
@HDMI_CONFIG0_I2S = common dso_local global i32 0, align 4
@hdmi_writeb = common dso_local global i32 0, align 4
@dw_hdmi_i2s_audio_enable = common dso_local global i32 0, align 4
@dw_hdmi_i2s_audio_disable = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"dw-hdmi-i2s-audio\00", align 1
@HDMI_CONFIG0_CEC = common dso_local global i32 0, align 4
@dw_hdmi_cec_ops = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"dw-hdmi-cec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dw_hdmi* (%struct.platform_device*, %struct.dw_hdmi_plat_data*)* @__dw_hdmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dw_hdmi* @__dw_hdmi_probe(%struct.platform_device* %0, %struct.dw_hdmi_plat_data* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dw_hdmi_plat_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.platform_device_info, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.dw_hdmi_cec_data, align 8
  %11 = alloca %struct.dw_hdmi*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.regmap_config*, align 8
  %21 = alloca %struct.dw_hdmi_audio_data, align 8
  %22 = alloca %struct.dw_hdmi_i2s_audio_data, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.dw_hdmi_plat_data* %1, %struct.dw_hdmi_plat_data** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %6, align 8
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  store %struct.device_node* %27, %struct.device_node** %7, align 8
  store %struct.resource* null, %struct.resource** %12, align 8
  store i32 1, i32* %15, align 4
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.dw_hdmi* @devm_kzalloc(%struct.device* %28, i32 208, i32 %29)
  store %struct.dw_hdmi* %30, %struct.dw_hdmi** %11, align 8
  %31 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %32 = icmp ne %struct.dw_hdmi* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.dw_hdmi* @ERR_PTR(i32 %35)
  store %struct.dw_hdmi* %36, %struct.dw_hdmi** %3, align 8
  br label %603

37:                                               ; preds = %2
  %38 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %5, align 8
  %39 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %40 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %39, i32 0, i32 29
  store %struct.dw_hdmi_plat_data* %38, %struct.dw_hdmi_plat_data** %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %43 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %42, i32 0, i32 23
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %45 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %44, i32 0, i32 0
  store i32 48000, i32* %45, align 8
  %46 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %47 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %49 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @HDMI_PHY_HPD, align 4
  %51 = load i32, i32* @HDMI_PHY_RX_SENSE, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %55 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %57 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %56, i32 0, i32 4
  store i32 127, i32* %57, align 8
  %58 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %59 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %58, i32 0, i32 28
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %62 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %61, i32 0, i32 27
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %65 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %64, i32 0, i32 26
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %68 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %67, i32 0, i32 25
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.device_node*, %struct.device_node** %7, align 8
  %71 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %71, %struct.device_node** %9, align 8
  %72 = load %struct.device_node*, %struct.device_node** %9, align 8
  %73 = icmp ne %struct.device_node* %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %37
  %75 = load %struct.device_node*, %struct.device_node** %9, align 8
  %76 = call i32* @of_get_i2c_adapter_by_node(%struct.device_node* %75)
  %77 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %78 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %77, i32 0, i32 7
  store i32* %76, i32** %78, align 8
  %79 = load %struct.device_node*, %struct.device_node** %9, align 8
  %80 = call i32 @of_node_put(%struct.device_node* %79)
  %81 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %82 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %74
  %86 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %87 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %86, i32 0, i32 23
  %88 = load %struct.device*, %struct.device** %87, align 8
  %89 = call i32 @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EPROBE_DEFER, align 4
  %91 = sub nsw i32 0, %90
  %92 = call %struct.dw_hdmi* @ERR_PTR(i32 %91)
  store %struct.dw_hdmi* %92, %struct.dw_hdmi** %3, align 8
  br label %603

93:                                               ; preds = %74
  br label %99

94:                                               ; preds = %37
  %95 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %96 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %95, i32 0, i32 23
  %97 = load %struct.device*, %struct.device** %96, align 8
  %98 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %93
  %100 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %5, align 8
  %101 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %159, label %104

104:                                              ; preds = %99
  %105 = load %struct.device_node*, %struct.device_node** %7, align 8
  %106 = call i32 @of_property_read_u32(%struct.device_node* %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %15)
  %107 = load i32, i32* %15, align 4
  switch i32 %107, label %112 [
    i32 4, label %108
    i32 1, label %111
  ]

108:                                              ; preds = %104
  store %struct.regmap_config* @hdmi_regmap_32bit_config, %struct.regmap_config** %20, align 8
  %109 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %110 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %109, i32 0, i32 5
  store i32 2, i32* %110, align 4
  br label %118

111:                                              ; preds = %104
  store %struct.regmap_config* @hdmi_regmap_8bit_config, %struct.regmap_config** %20, align 8
  br label %118

112:                                              ; preds = %104
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.dw_hdmi* @ERR_PTR(i32 %116)
  store %struct.dw_hdmi* %117, %struct.dw_hdmi** %3, align 8
  br label %603

118:                                              ; preds = %111, %108
  %119 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %120 = load i32, i32* @IORESOURCE_MEM, align 4
  %121 = call %struct.resource* @platform_get_resource(%struct.platform_device* %119, i32 %120, i32 0)
  store %struct.resource* %121, %struct.resource** %12, align 8
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = load %struct.resource*, %struct.resource** %12, align 8
  %124 = call i32* @devm_ioremap_resource(%struct.device* %122, %struct.resource* %123)
  %125 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %126 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %125, i32 0, i32 17
  store i32* %124, i32** %126, align 8
  %127 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %128 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %127, i32 0, i32 17
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @IS_ERR(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %118
  %133 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %134 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %133, i32 0, i32 17
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @PTR_ERR(i32* %135)
  store i32 %136, i32* %14, align 4
  br label %596

137:                                              ; preds = %118
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %140 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %139, i32 0, i32 17
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.regmap_config*, %struct.regmap_config** %20, align 8
  %143 = call i32* @devm_regmap_init_mmio(%struct.device* %138, i32* %141, %struct.regmap_config* %142)
  %144 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %145 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %144, i32 0, i32 24
  store i32* %143, i32** %145, align 8
  %146 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %147 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %146, i32 0, i32 24
  %148 = load i32*, i32** %147, align 8
  %149 = call i64 @IS_ERR(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %137
  %152 = load %struct.device*, %struct.device** %6, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %154 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %155 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %154, i32 0, i32 24
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @PTR_ERR(i32* %156)
  store i32 %157, i32* %14, align 4
  br label %596

158:                                              ; preds = %137
  br label %165

159:                                              ; preds = %99
  %160 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %5, align 8
  %161 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %164 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %163, i32 0, i32 24
  store i32* %162, i32** %164, align 8
  br label %165

165:                                              ; preds = %159, %158
  %166 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %167 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %166, i32 0, i32 23
  %168 = load %struct.device*, %struct.device** %167, align 8
  %169 = call i8* @devm_clk_get(%struct.device* %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %170 = bitcast i8* %169 to i32*
  %171 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %172 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %171, i32 0, i32 8
  store i32* %170, i32** %172, align 8
  %173 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %174 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %173, i32 0, i32 8
  %175 = load i32*, i32** %174, align 8
  %176 = call i64 @IS_ERR(i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %165
  %179 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %180 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %179, i32 0, i32 8
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @PTR_ERR(i32* %181)
  store i32 %182, i32* %14, align 4
  %183 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %184 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %183, i32 0, i32 23
  %185 = load %struct.device*, %struct.device** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  br label %596

188:                                              ; preds = %165
  %189 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %190 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %189, i32 0, i32 8
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @clk_prepare_enable(i32* %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %197 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %196, i32 0, i32 23
  %198 = load %struct.device*, %struct.device** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %199)
  br label %596

201:                                              ; preds = %188
  %202 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %203 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %202, i32 0, i32 23
  %204 = load %struct.device*, %struct.device** %203, align 8
  %205 = call i8* @devm_clk_get(%struct.device* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %208 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %207, i32 0, i32 10
  store i32* %206, i32** %208, align 8
  %209 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %210 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %209, i32 0, i32 10
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @IS_ERR(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %201
  %215 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %216 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %215, i32 0, i32 10
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @PTR_ERR(i32* %217)
  store i32 %218, i32* %14, align 4
  %219 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %220 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %219, i32 0, i32 23
  %221 = load %struct.device*, %struct.device** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %222)
  br label %591

224:                                              ; preds = %201
  %225 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %226 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %225, i32 0, i32 10
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @clk_prepare_enable(i32* %227)
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %224
  %232 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %233 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %232, i32 0, i32 23
  %234 = load %struct.device*, %struct.device** %233, align 8
  %235 = load i32, i32* %14, align 4
  %236 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %235)
  br label %591

237:                                              ; preds = %224
  %238 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %239 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %238, i32 0, i32 23
  %240 = load %struct.device*, %struct.device** %239, align 8
  %241 = call i8* @devm_clk_get(%struct.device* %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %242 = bitcast i8* %241 to i32*
  %243 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %244 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %243, i32 0, i32 9
  store i32* %242, i32** %244, align 8
  %245 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %246 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %245, i32 0, i32 9
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @PTR_ERR(i32* %247)
  %249 = load i32, i32* @ENOENT, align 4
  %250 = sub nsw i32 0, %249
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %237
  %253 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %254 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %253, i32 0, i32 9
  store i32* null, i32** %254, align 8
  br label %294

255:                                              ; preds = %237
  %256 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %257 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %256, i32 0, i32 9
  %258 = load i32*, i32** %257, align 8
  %259 = call i64 @IS_ERR(i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %279

261:                                              ; preds = %255
  %262 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %263 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %262, i32 0, i32 9
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @PTR_ERR(i32* %264)
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* @EPROBE_DEFER, align 4
  %268 = sub nsw i32 0, %267
  %269 = icmp ne i32 %266, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %261
  %271 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %272 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %271, i32 0, i32 23
  %273 = load %struct.device*, %struct.device** %272, align 8
  %274 = load i32, i32* %14, align 4
  %275 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %273, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %270, %261
  %277 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %278 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %277, i32 0, i32 9
  store i32* null, i32** %278, align 8
  br label %563

279:                                              ; preds = %255
  %280 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %281 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %280, i32 0, i32 9
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @clk_prepare_enable(i32* %282)
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* %14, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %279
  %287 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %288 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %287, i32 0, i32 23
  %289 = load %struct.device*, %struct.device** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %289, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %290)
  br label %563

292:                                              ; preds = %279
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293, %252
  %295 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %296 = load i32, i32* @HDMI_DESIGN_ID, align 4
  %297 = call i32 @hdmi_readb(%struct.dw_hdmi* %295, i32 %296)
  %298 = shl i32 %297, 8
  %299 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %300 = load i32, i32* @HDMI_REVISION_ID, align 4
  %301 = call i32 @hdmi_readb(%struct.dw_hdmi* %299, i32 %300)
  %302 = shl i32 %301, 0
  %303 = or i32 %298, %302
  %304 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %305 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %304, i32 0, i32 6
  store i32 %303, i32* %305, align 8
  %306 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %307 = load i32, i32* @HDMI_PRODUCT_ID0, align 4
  %308 = call i32 @hdmi_readb(%struct.dw_hdmi* %306, i32 %307)
  store i32 %308, i32* %16, align 4
  %309 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %310 = load i32, i32* @HDMI_PRODUCT_ID1, align 4
  %311 = call i32 @hdmi_readb(%struct.dw_hdmi* %309, i32 %310)
  store i32 %311, i32* %17, align 4
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* @HDMI_PRODUCT_ID0_HDMI_TX, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %322, label %315

315:                                              ; preds = %294
  %316 = load i32, i32* %17, align 4
  %317 = load i32, i32* @HDMI_PRODUCT_ID1_HDCP, align 4
  %318 = xor i32 %317, -1
  %319 = and i32 %316, %318
  %320 = load i32, i32* @HDMI_PRODUCT_ID1_HDMI_TX, align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %332

322:                                              ; preds = %315, %294
  %323 = load %struct.device*, %struct.device** %6, align 8
  %324 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %325 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %16, align 4
  %328 = load i32, i32* %17, align 4
  %329 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %323, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %326, i32 %327, i32 %328)
  %330 = load i32, i32* @ENODEV, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %14, align 4
  br label %563

332:                                              ; preds = %315
  %333 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %334 = call i32 @dw_hdmi_detect_phy(%struct.dw_hdmi* %333)
  store i32 %334, i32* %14, align 4
  %335 = load i32, i32* %14, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  br label %563

338:                                              ; preds = %332
  %339 = load %struct.device*, %struct.device** %6, align 8
  %340 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %341 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = ashr i32 %342, 12
  %344 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %345 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %346, 4095
  %348 = load i32, i32* %17, align 4
  %349 = load i32, i32* @HDMI_PRODUCT_ID1_HDCP, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)
  %354 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %355 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %354, i32 0, i32 22
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @dev_info(%struct.device* %339, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0), i32 %343, i32 %347, i8* %353, i32 %357)
  %359 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %360 = call i32 @dw_hdmi_init_hw(%struct.dw_hdmi* %359)
  %361 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %362 = call i32 @platform_get_irq(%struct.platform_device* %361, i32 0)
  store i32 %362, i32* %13, align 4
  %363 = load i32, i32* %13, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %338
  %366 = load i32, i32* %13, align 4
  store i32 %366, i32* %14, align 4
  br label %563

367:                                              ; preds = %338
  %368 = load %struct.device*, %struct.device** %6, align 8
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* @dw_hdmi_hardirq, align 4
  %371 = load i32, i32* @dw_hdmi_irq, align 4
  %372 = load i32, i32* @IRQF_SHARED, align 4
  %373 = load %struct.device*, %struct.device** %6, align 8
  %374 = call i32 @dev_name(%struct.device* %373)
  %375 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %376 = call i32 @devm_request_threaded_irq(%struct.device* %368, i32 %369, i32 %370, i32 %371, i32 %372, i32 %374, %struct.dw_hdmi* %375)
  store i32 %376, i32* %14, align 4
  %377 = load i32, i32* %14, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %367
  br label %563

380:                                              ; preds = %367
  %381 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %382 = call i32 @hdmi_init_clk_regenerator(%struct.dw_hdmi* %381)
  %383 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %384 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %383, i32 0, i32 7
  %385 = load i32*, i32** %384, align 8
  %386 = icmp ne i32* %385, null
  br i1 %386, label %452, label %387

387:                                              ; preds = %380
  %388 = load %struct.device*, %struct.device** %6, align 8
  %389 = call i32* @devm_pinctrl_get(%struct.device* %388)
  %390 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %391 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %390, i32 0, i32 21
  store i32* %389, i32** %391, align 8
  %392 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %393 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %392, i32 0, i32 21
  %394 = load i32*, i32** %393, align 8
  %395 = call i64 @IS_ERR(i32* %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %438, label %397

397:                                              ; preds = %387
  %398 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %399 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %398, i32 0, i32 21
  %400 = load i32*, i32** %399, align 8
  %401 = call i8* @pinctrl_lookup_state(i32* %400, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %402 = bitcast i8* %401 to i32*
  %403 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %404 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %403, i32 0, i32 19
  store i32* %402, i32** %404, align 8
  %405 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %406 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %405, i32 0, i32 21
  %407 = load i32*, i32** %406, align 8
  %408 = call i8* @pinctrl_lookup_state(i32* %407, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %409 = bitcast i8* %408 to i32*
  %410 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %411 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %410, i32 0, i32 20
  store i32* %409, i32** %411, align 8
  %412 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %413 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %412, i32 0, i32 20
  %414 = load i32*, i32** %413, align 8
  %415 = call i64 @IS_ERR(i32* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %423, label %417

417:                                              ; preds = %397
  %418 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %419 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %418, i32 0, i32 19
  %420 = load i32*, i32** %419, align 8
  %421 = call i64 @IS_ERR(i32* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %437

423:                                              ; preds = %417, %397
  %424 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %425 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %424, i32 0, i32 19
  %426 = load i32*, i32** %425, align 8
  %427 = call i64 @IS_ERR(i32* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %423
  %430 = load %struct.device*, %struct.device** %6, align 8
  %431 = call i32 @dev_warn(%struct.device* %430, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  br label %432

432:                                              ; preds = %429, %423
  %433 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %434 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %433, i32 0, i32 20
  store i32* null, i32** %434, align 8
  %435 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %436 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %435, i32 0, i32 19
  store i32* null, i32** %436, align 8
  br label %437

437:                                              ; preds = %432, %417
  br label %438

438:                                              ; preds = %437, %387
  %439 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %440 = call i32* @dw_hdmi_i2c_adapter(%struct.dw_hdmi* %439)
  %441 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %442 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %441, i32 0, i32 7
  store i32* %440, i32** %442, align 8
  %443 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %444 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %443, i32 0, i32 7
  %445 = load i32*, i32** %444, align 8
  %446 = call i64 @IS_ERR(i32* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %438
  %449 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %450 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %449, i32 0, i32 7
  store i32* null, i32** %450, align 8
  br label %451

451:                                              ; preds = %448, %438
  br label %452

452:                                              ; preds = %451, %380
  %453 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %454 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %455 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %454, i32 0, i32 18
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 2
  store %struct.dw_hdmi* %453, %struct.dw_hdmi** %456, align 8
  %457 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %458 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %457, i32 0, i32 18
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 1
  store i32* @dw_hdmi_bridge_funcs, i32** %459, align 8
  %460 = call i32 @memset(%struct.platform_device_info* %8, i32 0, i32 48)
  %461 = load %struct.device*, %struct.device** %6, align 8
  %462 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 5
  store %struct.device* %461, %struct.device** %462, align 8
  %463 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %464 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 4
  store i32 %463, i32* %464, align 8
  %465 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %466 = load i32, i32* @HDMI_CONFIG0_ID, align 4
  %467 = call i32 @hdmi_readb(%struct.dw_hdmi* %465, i32 %466)
  store i32 %467, i32* %18, align 4
  %468 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %469 = load i32, i32* @HDMI_CONFIG3_ID, align 4
  %470 = call i32 @hdmi_readb(%struct.dw_hdmi* %468, i32 %469)
  store i32 %470, i32* %19, align 4
  %471 = load %struct.resource*, %struct.resource** %12, align 8
  %472 = icmp ne %struct.resource* %471, null
  br i1 %472, label %473, label %511

473:                                              ; preds = %452
  %474 = load i32, i32* %19, align 4
  %475 = load i32, i32* @HDMI_CONFIG3_AHBAUDDMA, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %511

478:                                              ; preds = %473
  %479 = load %struct.resource*, %struct.resource** %12, align 8
  %480 = getelementptr inbounds %struct.resource, %struct.resource* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = getelementptr inbounds %struct.dw_hdmi_audio_data, %struct.dw_hdmi_audio_data* %21, i32 0, i32 7
  store i32 %481, i32* %482, align 8
  %483 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %484 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %483, i32 0, i32 17
  %485 = load i32*, i32** %484, align 8
  %486 = getelementptr inbounds %struct.dw_hdmi_audio_data, %struct.dw_hdmi_audio_data* %21, i32 0, i32 6
  store i32* %485, i32** %486, align 8
  %487 = load i32, i32* %13, align 4
  %488 = getelementptr inbounds %struct.dw_hdmi_audio_data, %struct.dw_hdmi_audio_data* %21, i32 0, i32 0
  store i32 %487, i32* %488, align 8
  %489 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %490 = getelementptr inbounds %struct.dw_hdmi_audio_data, %struct.dw_hdmi_audio_data* %21, i32 0, i32 3
  store %struct.dw_hdmi* %489, %struct.dw_hdmi** %490, align 8
  %491 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %492 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %491, i32 0, i32 16
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = getelementptr inbounds %struct.dw_hdmi_audio_data, %struct.dw_hdmi_audio_data* %21, i32 0, i32 5
  store i32 %494, i32* %495, align 4
  %496 = load i32, i32* @dw_hdmi_ahb_audio_enable, align 4
  %497 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %498 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %497, i32 0, i32 15
  store i32 %496, i32* %498, align 4
  %499 = load i32, i32* @dw_hdmi_ahb_audio_disable, align 4
  %500 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %501 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %500, i32 0, i32 14
  store i32 %499, i32* %501, align 8
  %502 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8** %502, align 8
  %503 = bitcast %struct.dw_hdmi_audio_data* %21 to %struct.dw_hdmi_i2s_audio_data*
  %504 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 3
  store %struct.dw_hdmi_i2s_audio_data* %503, %struct.dw_hdmi_i2s_audio_data** %504, align 8
  %505 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 1
  store i32 56, i32* %505, align 8
  %506 = call i8* @DMA_BIT_MASK(i32 32)
  %507 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 2
  store i8* %506, i8** %507, align 8
  %508 = call i8* @platform_device_register_full(%struct.platform_device_info* %8)
  %509 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %510 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %509, i32 0, i32 13
  store i8* %508, i8** %510, align 8
  br label %542

511:                                              ; preds = %473, %452
  %512 = load i32, i32* %18, align 4
  %513 = load i32, i32* @HDMI_CONFIG0_I2S, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %541

516:                                              ; preds = %511
  %517 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %518 = getelementptr inbounds %struct.dw_hdmi_i2s_audio_data, %struct.dw_hdmi_i2s_audio_data* %22, i32 0, i32 3
  store %struct.dw_hdmi* %517, %struct.dw_hdmi** %518, align 8
  %519 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %520 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %519, i32 0, i32 16
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = getelementptr inbounds %struct.dw_hdmi_i2s_audio_data, %struct.dw_hdmi_i2s_audio_data* %22, i32 0, i32 5
  store i32 %522, i32* %523, align 4
  %524 = load i32, i32* @hdmi_writeb, align 4
  %525 = getelementptr inbounds %struct.dw_hdmi_i2s_audio_data, %struct.dw_hdmi_i2s_audio_data* %22, i32 0, i32 4
  store i32 %524, i32* %525, align 8
  %526 = getelementptr inbounds %struct.dw_hdmi_i2s_audio_data, %struct.dw_hdmi_i2s_audio_data* %22, i32 0, i32 1
  store i32 (%struct.dw_hdmi.0*, i32)* bitcast (i32 (%struct.dw_hdmi*, i32)* @hdmi_readb to i32 (%struct.dw_hdmi.0*, i32)*), i32 (%struct.dw_hdmi.0*, i32)** %526, align 8
  %527 = load i32, i32* @dw_hdmi_i2s_audio_enable, align 4
  %528 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %529 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %528, i32 0, i32 15
  store i32 %527, i32* %529, align 4
  %530 = load i32, i32* @dw_hdmi_i2s_audio_disable, align 4
  %531 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %532 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %531, i32 0, i32 14
  store i32 %530, i32* %532, align 8
  %533 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8** %533, align 8
  %534 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 3
  store %struct.dw_hdmi_i2s_audio_data* %22, %struct.dw_hdmi_i2s_audio_data** %534, align 8
  %535 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 1
  store i32 56, i32* %535, align 8
  %536 = call i8* @DMA_BIT_MASK(i32 32)
  %537 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 2
  store i8* %536, i8** %537, align 8
  %538 = call i8* @platform_device_register_full(%struct.platform_device_info* %8)
  %539 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %540 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %539, i32 0, i32 13
  store i8* %538, i8** %540, align 8
  br label %541

541:                                              ; preds = %516, %511
  br label %542

542:                                              ; preds = %541, %478
  %543 = load i32, i32* %18, align 4
  %544 = load i32, i32* @HDMI_CONFIG0_CEC, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %561

547:                                              ; preds = %542
  %548 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %549 = getelementptr inbounds %struct.dw_hdmi_cec_data, %struct.dw_hdmi_cec_data* %10, i32 0, i32 3
  store %struct.dw_hdmi* %548, %struct.dw_hdmi** %549, align 8
  %550 = getelementptr inbounds %struct.dw_hdmi_cec_data, %struct.dw_hdmi_cec_data* %10, i32 0, i32 2
  store i32* @dw_hdmi_cec_ops, i32** %550, align 8
  %551 = load i32, i32* %13, align 4
  %552 = getelementptr inbounds %struct.dw_hdmi_cec_data, %struct.dw_hdmi_cec_data* %10, i32 0, i32 0
  store i32 %551, i32* %552, align 8
  %553 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8** %553, align 8
  %554 = bitcast %struct.dw_hdmi_cec_data* %10 to %struct.dw_hdmi_i2s_audio_data*
  %555 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 3
  store %struct.dw_hdmi_i2s_audio_data* %554, %struct.dw_hdmi_i2s_audio_data** %555, align 8
  %556 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 1
  store i32 56, i32* %556, align 8
  %557 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 2
  store i8* null, i8** %557, align 8
  %558 = call i8* @platform_device_register_full(%struct.platform_device_info* %8)
  %559 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %560 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %559, i32 0, i32 12
  store i8* %558, i8** %560, align 8
  br label %561

561:                                              ; preds = %547, %542
  %562 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  store %struct.dw_hdmi* %562, %struct.dw_hdmi** %3, align 8
  br label %603

563:                                              ; preds = %379, %365, %337, %322, %286, %276
  %564 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %565 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %564, i32 0, i32 11
  %566 = load %struct.TYPE_8__*, %struct.TYPE_8__** %565, align 8
  %567 = icmp ne %struct.TYPE_8__* %566, null
  br i1 %567, label %568, label %576

568:                                              ; preds = %563
  %569 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %570 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %569, i32 0, i32 11
  %571 = load %struct.TYPE_8__*, %struct.TYPE_8__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %571, i32 0, i32 0
  %573 = call i32 @i2c_del_adapter(i32* %572)
  %574 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %575 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %574, i32 0, i32 7
  store i32* null, i32** %575, align 8
  br label %576

576:                                              ; preds = %568, %563
  %577 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %578 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %577, i32 0, i32 10
  %579 = load i32*, i32** %578, align 8
  %580 = call i32 @clk_disable_unprepare(i32* %579)
  %581 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %582 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %581, i32 0, i32 9
  %583 = load i32*, i32** %582, align 8
  %584 = icmp ne i32* %583, null
  br i1 %584, label %585, label %590

585:                                              ; preds = %576
  %586 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %587 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %586, i32 0, i32 9
  %588 = load i32*, i32** %587, align 8
  %589 = call i32 @clk_disable_unprepare(i32* %588)
  br label %590

590:                                              ; preds = %585, %576
  br label %591

591:                                              ; preds = %590, %231, %214
  %592 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %593 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %592, i32 0, i32 8
  %594 = load i32*, i32** %593, align 8
  %595 = call i32 @clk_disable_unprepare(i32* %594)
  br label %596

596:                                              ; preds = %591, %195, %178, %151, %132
  %597 = load %struct.dw_hdmi*, %struct.dw_hdmi** %11, align 8
  %598 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %597, i32 0, i32 7
  %599 = load i32*, i32** %598, align 8
  %600 = call i32 @i2c_put_adapter(i32* %599)
  %601 = load i32, i32* %14, align 4
  %602 = call %struct.dw_hdmi* @ERR_PTR(i32 %601)
  store %struct.dw_hdmi* %602, %struct.dw_hdmi** %3, align 8
  br label %603

603:                                              ; preds = %596, %561, %112, %85, %33
  %604 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  ret %struct.dw_hdmi* %604
}

declare dso_local %struct.dw_hdmi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dw_hdmi* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32* @of_get_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_regmap_init_mmio(%struct.device*, i32*, %struct.regmap_config*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @hdmi_readb(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dw_hdmi_detect_phy(%struct.dw_hdmi*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @dw_hdmi_init_hw(%struct.dw_hdmi*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.dw_hdmi*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @hdmi_init_clk_regenerator(%struct.dw_hdmi*) #1

declare dso_local i32* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i8* @pinctrl_lookup_state(i32*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32* @dw_hdmi_i2c_adapter(%struct.dw_hdmi*) #1

declare dso_local i32 @memset(%struct.platform_device_info*, i32, i32) #1

declare dso_local i8* @DMA_BIT_MASK(i32) #1

declare dso_local i8* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @i2c_put_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
