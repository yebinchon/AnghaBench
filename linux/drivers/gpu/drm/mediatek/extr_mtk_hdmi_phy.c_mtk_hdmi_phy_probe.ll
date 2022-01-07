; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_phy.c_mtk_hdmi_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi_phy.c_mtk_hdmi_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_hdmi_phy = type { i32, i32, i32, i32, %struct.phy_provider*, i32, i32, %struct.TYPE_2__, %struct.mtk_hdmi_phy_conf*, %struct.device*, %struct.phy_provider* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i8**, i32 }
%struct.mtk_hdmi_phy_conf = type { i32 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.clk = type opaque
%struct.phy = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to get memory resource: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pll_ref\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to get PLL reference clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to read clock-output-names: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to register PLL: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"mediatek,ibias\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to get ibias: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"mediatek,ibias_up\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to get ibias up: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Using default TX DRV impedance: 4.2k/36\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed to create HDMI PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"Failed to register HDMI PHY\0A\00", align 1
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_hdmi_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_hdmi_phy*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca %struct.phy*, align 8
  %11 = alloca %struct.phy_provider*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i8** %8, i8*** %16, align 8
  %17 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mtk_hdmi_phy* @devm_kzalloc(%struct.device* %18, i32 64, i32 %19)
  store %struct.mtk_hdmi_phy* %20, %struct.mtk_hdmi_phy** %5, align 8
  %21 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %22 = icmp ne %struct.mtk_hdmi_phy* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %197

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %6, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %30, %struct.resource* %31)
  %33 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %33, i32 0, i32 10
  store %struct.phy_provider* %32, %struct.phy_provider** %34, align 8
  %35 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %35, i32 0, i32 10
  %37 = load %struct.phy_provider*, %struct.phy_provider** %36, align 8
  %38 = call i64 @IS_ERR(%struct.phy_provider* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %26
  %41 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %42 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %41, i32 0, i32 10
  %43 = load %struct.phy_provider*, %struct.phy_provider** %42, align 8
  %44 = call i32 @PTR_ERR(%struct.phy_provider* %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %2, align 4
  br label %197

49:                                               ; preds = %26
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call %struct.phy_provider* @devm_clk_get(%struct.device* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %52 = bitcast %struct.phy_provider* %51 to %struct.clk*
  store %struct.clk* %52, %struct.clk** %7, align 8
  %53 = load %struct.clk*, %struct.clk** %7, align 8
  %54 = bitcast %struct.clk* %53 to %struct.phy_provider*
  %55 = call i64 @IS_ERR(%struct.phy_provider* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.clk*, %struct.clk** %7, align 8
  %59 = bitcast %struct.clk* %58 to %struct.phy_provider*
  %60 = call i32 @PTR_ERR(%struct.phy_provider* %59)
  store i32 %60, i32* %12, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %2, align 4
  br label %197

66:                                               ; preds = %49
  %67 = load %struct.clk*, %struct.clk** %7, align 8
  %68 = bitcast %struct.clk* %67 to %struct.phy_provider*
  %69 = call i8* @__clk_get_name(%struct.phy_provider* %68)
  store i8* %69, i8** %8, align 8
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  %74 = call i32 @of_property_read_string(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %2, align 4
  br label %197

82:                                               ; preds = %66
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %85 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %84, i32 0, i32 9
  store %struct.device* %83, %struct.device** %85, align 8
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i64 @of_device_get_match_data(%struct.device* %86)
  %88 = inttoptr i64 %87 to %struct.mtk_hdmi_phy_conf*
  %89 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %90 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %89, i32 0, i32 8
  store %struct.mtk_hdmi_phy_conf* %88, %struct.mtk_hdmi_phy_conf** %90, align 8
  %91 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %92 = call i32 @mtk_hdmi_phy_clk_get_data(%struct.mtk_hdmi_phy* %91, %struct.clk_init_data* %9)
  %93 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %94 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %95, align 8
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %98 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %97, i32 0, i32 7
  %99 = call %struct.phy_provider* @devm_clk_register(%struct.device* %96, %struct.TYPE_2__* %98)
  %100 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %101 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %100, i32 0, i32 4
  store %struct.phy_provider* %99, %struct.phy_provider** %101, align 8
  %102 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %103 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %102, i32 0, i32 4
  %104 = load %struct.phy_provider*, %struct.phy_provider** %103, align 8
  %105 = call i64 @IS_ERR(%struct.phy_provider* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %82
  %108 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %109 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %108, i32 0, i32 4
  %110 = load %struct.phy_provider*, %struct.phy_provider** %109, align 8
  %111 = call i32 @PTR_ERR(%struct.phy_provider* %110)
  store i32 %111, i32* %12, align 4
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %2, align 4
  br label %197

116:                                              ; preds = %82
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = getelementptr inbounds %struct.device, %struct.device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %121 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %120, i32 0, i32 6
  %122 = call i32 @of_property_read_u32(i32 %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %2, align 4
  br label %197

131:                                              ; preds = %116
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = getelementptr inbounds %struct.device, %struct.device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %136 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %135, i32 0, i32 5
  %137 = call i32 @of_property_read_u32(i32 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* %12, align 4
  %144 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %2, align 4
  br label %197

146:                                              ; preds = %131
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = call i32 @dev_info(%struct.device* %147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %149 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %150 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %149, i32 0, i32 0
  store i32 48, i32* %150, align 8
  %151 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %152 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %151, i32 0, i32 1
  store i32 48, i32* %152, align 4
  %153 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %154 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %153, i32 0, i32 2
  store i32 48, i32* %154, align 8
  %155 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %156 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %155, i32 0, i32 3
  store i32 48, i32* %156, align 4
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %159 = call i32 @mtk_hdmi_phy_dev_get_ops(%struct.mtk_hdmi_phy* %158)
  %160 = call %struct.phy_provider* @devm_phy_create(%struct.device* %157, i32* null, i32 %159)
  %161 = bitcast %struct.phy_provider* %160 to %struct.phy*
  store %struct.phy* %161, %struct.phy** %10, align 8
  %162 = load %struct.phy*, %struct.phy** %10, align 8
  %163 = bitcast %struct.phy* %162 to %struct.phy_provider*
  %164 = call i64 @IS_ERR(%struct.phy_provider* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %146
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %169 = load %struct.phy*, %struct.phy** %10, align 8
  %170 = bitcast %struct.phy* %169 to %struct.phy_provider*
  %171 = call i32 @PTR_ERR(%struct.phy_provider* %170)
  store i32 %171, i32* %2, align 4
  br label %197

172:                                              ; preds = %146
  %173 = load %struct.phy*, %struct.phy** %10, align 8
  %174 = bitcast %struct.phy* %173 to %struct.phy_provider*
  %175 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %176 = call i32 @phy_set_drvdata(%struct.phy_provider* %174, %struct.mtk_hdmi_phy* %175)
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load i32, i32* @of_phy_simple_xlate, align 4
  %179 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %177, i32 %178)
  store %struct.phy_provider* %179, %struct.phy_provider** %11, align 8
  %180 = load %struct.phy_provider*, %struct.phy_provider** %11, align 8
  %181 = call i64 @IS_ERR(%struct.phy_provider* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %172
  %184 = load %struct.device*, %struct.device** %4, align 8
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %186 = load %struct.phy_provider*, %struct.phy_provider** %11, align 8
  %187 = call i32 @PTR_ERR(%struct.phy_provider* %186)
  store i32 %187, i32* %2, align 4
  br label %197

188:                                              ; preds = %172
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = getelementptr inbounds %struct.device, %struct.device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @of_clk_src_simple_get, align 4
  %193 = load %struct.mtk_hdmi_phy*, %struct.mtk_hdmi_phy** %5, align 8
  %194 = getelementptr inbounds %struct.mtk_hdmi_phy, %struct.mtk_hdmi_phy* %193, i32 0, i32 4
  %195 = load %struct.phy_provider*, %struct.phy_provider** %194, align 8
  %196 = call i32 @of_clk_add_provider(i32 %191, i32 %192, %struct.phy_provider* %195)
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %188, %183, %166, %140, %125, %107, %77, %57, %40, %23
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local %struct.mtk_hdmi_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.phy_provider* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @__clk_get_name(%struct.phy_provider*) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @mtk_hdmi_phy_clk_get_data(%struct.mtk_hdmi_phy*, %struct.clk_init_data*) #1

declare dso_local %struct.phy_provider* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32) #1

declare dso_local i32 @mtk_hdmi_phy_dev_get_ops(%struct.mtk_hdmi_phy*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.mtk_hdmi_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, %struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
