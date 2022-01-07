; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.fimd_context = type { i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.device* }
%struct.TYPE_2__ = type { i64 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"samsung,invert-vden\00", align 1
@VIDCON1_INV_VDEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"samsung,invert-vclk\00", align 1
@VIDCON1_INV_VCLK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"i80-if-timings\00", align 1
@VIDOUT_CON_F_I80_LDI0 = common dso_local global i32 0, align 4
@VIDCON0_VIDOUT_I80_LDI0 = common dso_local global i32 0, align 4
@VIDCON0_DSI_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"cs-setup\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"wr-setup\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"wr-active\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"wr-hold\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"samsung,sysreg\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to get system register.\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fimd\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"failed to get bus clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"sclk_fimd\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"failed to get lcd clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"lcd_sys\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"irq request failed.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@fimd_irq_handler = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"drm_fimd\00", align 1
@fimd_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fimd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fimd_context*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %280

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.fimd_context* @devm_kzalloc(%struct.device* %20, i32 96, i32 %21)
  store %struct.fimd_context* %22, %struct.fimd_context** %5, align 8
  %23 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %24 = icmp ne %struct.fimd_context* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %280

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %31 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %30, i32 0, i32 14
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %33 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %34)
  %36 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %37 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %36, i32 0, i32 12
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @of_property_read_bool(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load i32, i32* @VIDCON1_INV_VDEN, align 4
  %45 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %46 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %28
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @of_property_read_bool(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @VIDCON1_INV_VCLK, align 4
  %57 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %58 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %57, i32 0, i32 13
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.device_node* @of_get_child_by_name(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %65, %struct.device_node** %6, align 8
  %66 = load %struct.device_node*, %struct.device_node** %6, align 8
  %67 = icmp ne %struct.device_node* %66, null
  br i1 %67, label %68, label %137

68:                                               ; preds = %61
  %69 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %70 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %72 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %71, i32 0, i32 12
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load i32, i32* @VIDOUT_CON_F_I80_LDI0, align 4
  %79 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %80 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %89

83:                                               ; preds = %68
  %84 = load i32, i32* @VIDCON0_VIDOUT_I80_LDI0, align 4
  %85 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %86 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %77
  %90 = load i32, i32* @VIDCON0_DSI_EN, align 4
  %91 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %92 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.device_node*, %struct.device_node** %6, align 8
  %96 = call i64 @of_property_read_u32(%struct.device_node* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %89
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @LCD_CS_SETUP(i32 %100)
  %102 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %103 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 8
  %104 = load %struct.device_node*, %struct.device_node** %6, align 8
  %105 = call i64 @of_property_read_u32(%struct.device_node* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %99
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @LCD_WR_SETUP(i32 %109)
  %111 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %112 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.device_node*, %struct.device_node** %6, align 8
  %116 = call i64 @of_property_read_u32(%struct.device_node* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 1, i32* %9, align 4
  br label %119

119:                                              ; preds = %118, %108
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @LCD_WR_ACTIVE(i32 %120)
  %122 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %123 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.device_node*, %struct.device_node** %6, align 8
  %127 = call i64 @of_property_read_u32(%struct.device_node* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %129, %119
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @LCD_WR_HOLD(i32 %131)
  %133 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %134 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %130, %61
  %138 = load %struct.device_node*, %struct.device_node** %6, align 8
  %139 = call i32 @of_node_put(%struct.device_node* %138)
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = getelementptr inbounds %struct.device, %struct.device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32* @syscon_regmap_lookup_by_phandle(i32 %142, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %144 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %145 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %144, i32 0, i32 8
  store i32* %143, i32** %145, align 8
  %146 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %147 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %146, i32 0, i32 8
  %148 = load i32*, i32** %147, align 8
  %149 = call i64 @IS_ERR(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %137
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = call i32 @dev_warn(%struct.device* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %154 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %155 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %154, i32 0, i32 8
  store i32* null, i32** %155, align 8
  br label %156

156:                                              ; preds = %151, %137
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = call i8* @devm_clk_get(%struct.device* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %161 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %160, i32 0, i32 7
  store i32* %159, i32** %161, align 8
  %162 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %163 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = call i64 @IS_ERR(i32* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = call i32 @dev_err(%struct.device* %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %170 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %171 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @PTR_ERR(i32* %172)
  store i32 %173, i32* %2, align 4
  br label %280

174:                                              ; preds = %156
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = call i8* @devm_clk_get(%struct.device* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %177 = bitcast i8* %176 to i32*
  %178 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %179 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %178, i32 0, i32 6
  store i32* %177, i32** %179, align 8
  %180 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %181 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %180, i32 0, i32 6
  %182 = load i32*, i32** %181, align 8
  %183 = call i64 @IS_ERR(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %174
  %186 = load %struct.device*, %struct.device** %4, align 8
  %187 = call i32 @dev_err(%struct.device* %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %188 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %189 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @PTR_ERR(i32* %190)
  store i32 %191, i32* %2, align 4
  br label %280

192:                                              ; preds = %174
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = load i32, i32* @IORESOURCE_MEM, align 4
  %195 = call %struct.resource* @platform_get_resource(%struct.platform_device* %193, i32 %194, i32 0)
  store %struct.resource* %195, %struct.resource** %7, align 8
  %196 = load %struct.device*, %struct.device** %4, align 8
  %197 = load %struct.resource*, %struct.resource** %7, align 8
  %198 = call i32* @devm_ioremap_resource(%struct.device* %196, %struct.resource* %197)
  %199 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %200 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %199, i32 0, i32 5
  store i32* %198, i32** %200, align 8
  %201 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %202 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = call i64 @IS_ERR(i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %192
  %207 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %208 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @PTR_ERR(i32* %209)
  store i32 %210, i32* %2, align 4
  br label %280

211:                                              ; preds = %192
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = load i32, i32* @IORESOURCE_IRQ, align 4
  %214 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %215 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)
  %220 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %212, i32 %213, i8* %219)
  store %struct.resource* %220, %struct.resource** %7, align 8
  %221 = load %struct.resource*, %struct.resource** %7, align 8
  %222 = icmp ne %struct.resource* %221, null
  br i1 %222, label %228, label %223

223:                                              ; preds = %211
  %224 = load %struct.device*, %struct.device** %4, align 8
  %225 = call i32 @dev_err(%struct.device* %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %226 = load i32, i32* @ENXIO, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %2, align 4
  br label %280

228:                                              ; preds = %211
  %229 = load %struct.device*, %struct.device** %4, align 8
  %230 = load %struct.resource*, %struct.resource** %7, align 8
  %231 = getelementptr inbounds %struct.resource, %struct.resource* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @fimd_irq_handler, align 4
  %234 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %235 = call i32 @devm_request_irq(%struct.device* %229, i32 %232, i32 %233, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), %struct.fimd_context* %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %228
  %239 = load %struct.device*, %struct.device** %4, align 8
  %240 = call i32 @dev_err(%struct.device* %239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %2, align 4
  br label %280

242:                                              ; preds = %228
  %243 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %244 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %243, i32 0, i32 4
  %245 = call i32 @init_waitqueue_head(i32* %244)
  %246 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %247 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %246, i32 0, i32 3
  %248 = call i32 @atomic_set(i32* %247, i32 0)
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %251 = call i32 @platform_set_drvdata(%struct.platform_device* %249, %struct.fimd_context* %250)
  %252 = load %struct.device*, %struct.device** %4, align 8
  %253 = call i32* @exynos_dpi_probe(%struct.device* %252)
  %254 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %255 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %254, i32 0, i32 2
  store i32* %253, i32** %255, align 8
  %256 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %257 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = call i64 @IS_ERR(i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %242
  %262 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %263 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @PTR_ERR(i32* %264)
  store i32 %265, i32* %2, align 4
  br label %280

266:                                              ; preds = %242
  %267 = load %struct.device*, %struct.device** %4, align 8
  %268 = call i32 @pm_runtime_enable(%struct.device* %267)
  %269 = load %struct.device*, %struct.device** %4, align 8
  %270 = call i32 @component_add(%struct.device* %269, i32* @fimd_component_ops)
  store i32 %270, i32* %8, align 4
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %276

274:                                              ; preds = %266
  %275 = load i32, i32* %8, align 4
  store i32 %275, i32* %2, align 4
  br label %280

276:                                              ; preds = %273
  %277 = load %struct.device*, %struct.device** %4, align 8
  %278 = call i32 @pm_runtime_disable(%struct.device* %277)
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %276, %274, %261, %238, %223, %206, %185, %167, %25, %16
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local %struct.fimd_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @LCD_CS_SETUP(i32) #1

declare dso_local i32 @LCD_WR_SETUP(i32) #1

declare dso_local i32 @LCD_WR_ACTIVE(i32) #1

declare dso_local i32 @LCD_WR_HOLD(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.fimd_context*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fimd_context*) #1

declare dso_local i32* @exynos_dpi_probe(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
