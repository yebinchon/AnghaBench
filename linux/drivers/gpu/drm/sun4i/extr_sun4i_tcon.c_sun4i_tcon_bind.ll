; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { %struct.sun4i_drv* }
%struct.sun4i_drv = type { i32 }
%struct.sunxi_engine = type { i32 }
%struct.device_node = type { i32 }
%struct.sun4i_tcon = type { %struct.sunxi_engine*, %struct.TYPE_2__*, i32, i32, i32, %struct.sunxi_engine*, %struct.sunxi_engine*, %struct.sunxi_engine*, %struct.device*, %struct.drm_device* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.reset_control = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Couldn't find matching engine\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"edp\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't get edp reset line\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Couldn't deassert edp reset line\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Couldn't deassert our reset line\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"lvds\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"lvds-alt\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Couldn't get the LVDS PLL\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Missing LVDS properties, Please upgrade your DT\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"LVDS output disabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Couldn't init our TCON clocks\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Couldn't init our TCON regmap\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Couldn't create our TCON dot clock\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Couldn't init our TCON interrupts\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Couldn't create our CRTC\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"panel-lvds\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SUN4I_TCON0_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CTL_SRC_SEL_MASK = common dso_local global i32 0, align 4
@SUN4I_TCON1_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON1_CTL_SRC_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @sun4i_tcon_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tcon_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.sun4i_drv*, align 8
  %10 = alloca %struct.sunxi_engine*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.sun4i_tcon*, align 8
  %13 = alloca %struct.reset_control*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.drm_device*
  store %struct.drm_device* %19, %struct.drm_device** %8, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.sun4i_drv*, %struct.sun4i_drv** %21, align 8
  store %struct.sun4i_drv* %22, %struct.sun4i_drv** %9, align 8
  %23 = load %struct.sun4i_drv*, %struct.sun4i_drv** %9, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sunxi_engine* @sun4i_tcon_find_engine(%struct.sun4i_drv* %23, i32 %26)
  store %struct.sunxi_engine* %27, %struct.sunxi_engine** %10, align 8
  %28 = load %struct.sunxi_engine*, %struct.sunxi_engine** %10, align 8
  %29 = call i64 @IS_ERR(%struct.sunxi_engine* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %368

36:                                               ; preds = %3
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.sun4i_tcon* @devm_kzalloc(%struct.device* %37, i32 72, i32 %38)
  store %struct.sun4i_tcon* %39, %struct.sun4i_tcon** %12, align 8
  %40 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %41 = icmp ne %struct.sun4i_tcon* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %368

45:                                               ; preds = %36
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %48 = call i32 @dev_set_drvdata(%struct.device* %46, %struct.sun4i_tcon* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %50 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %51 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %50, i32 0, i32 9
  store %struct.drm_device* %49, %struct.drm_device** %51, align 8
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %54 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %53, i32 0, i32 8
  store %struct.device* %52, %struct.device** %54, align 8
  %55 = load %struct.sunxi_engine*, %struct.sunxi_engine** %10, align 8
  %56 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %59 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %60)
  %62 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %63 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %62, i32 0, i32 1
  store %struct.TYPE_2__* %61, %struct.TYPE_2__** %63, align 8
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call %struct.sunxi_engine* @devm_reset_control_get(%struct.device* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %67 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %66, i32 0, i32 0
  store %struct.sunxi_engine* %65, %struct.sunxi_engine** %67, align 8
  %68 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %69 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %68, i32 0, i32 0
  %70 = load %struct.sunxi_engine*, %struct.sunxi_engine** %69, align 8
  %71 = call i64 @IS_ERR(%struct.sunxi_engine* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %45
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %77 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %76, i32 0, i32 0
  %78 = load %struct.sunxi_engine*, %struct.sunxi_engine** %77, align 8
  %79 = call i32 @PTR_ERR(%struct.sunxi_engine* %78)
  store i32 %79, i32* %4, align 4
  br label %368

80:                                               ; preds = %45
  %81 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %82 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %80
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call %struct.sunxi_engine* @devm_reset_control_get_shared(%struct.device* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %90 = bitcast %struct.sunxi_engine* %89 to %struct.reset_control*
  store %struct.reset_control* %90, %struct.reset_control** %13, align 8
  %91 = load %struct.reset_control*, %struct.reset_control** %13, align 8
  %92 = bitcast %struct.reset_control* %91 to %struct.sunxi_engine*
  %93 = call i64 @IS_ERR(%struct.sunxi_engine* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.reset_control*, %struct.reset_control** %13, align 8
  %99 = bitcast %struct.reset_control* %98 to %struct.sunxi_engine*
  %100 = call i32 @PTR_ERR(%struct.sunxi_engine* %99)
  store i32 %100, i32* %4, align 4
  br label %368

101:                                              ; preds = %87
  %102 = load %struct.reset_control*, %struct.reset_control** %13, align 8
  %103 = bitcast %struct.reset_control* %102 to %struct.sunxi_engine*
  %104 = call i32 @reset_control_deassert(%struct.sunxi_engine* %103)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* %17, align 4
  store i32 %110, i32* %4, align 4
  br label %368

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %114 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %113, i32 0, i32 0
  %115 = load %struct.sunxi_engine*, %struct.sunxi_engine** %114, align 8
  %116 = call i32 @reset_control_reset(%struct.sunxi_engine* %115)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.device*, %struct.device** %5, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %4, align 4
  br label %368

123:                                              ; preds = %112
  %124 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %125 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %215

130:                                              ; preds = %123
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = call %struct.sunxi_engine* @devm_reset_control_get_optional(%struct.device* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %133 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %134 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %133, i32 0, i32 7
  store %struct.sunxi_engine* %132, %struct.sunxi_engine** %134, align 8
  %135 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %136 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %135, i32 0, i32 7
  %137 = load %struct.sunxi_engine*, %struct.sunxi_engine** %136, align 8
  %138 = call i64 @IS_ERR(%struct.sunxi_engine* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %130
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = call i32 @dev_err(%struct.device* %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %144 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %143, i32 0, i32 7
  %145 = load %struct.sunxi_engine*, %struct.sunxi_engine** %144, align 8
  %146 = call i32 @PTR_ERR(%struct.sunxi_engine* %145)
  store i32 %146, i32* %4, align 4
  br label %368

147:                                              ; preds = %130
  %148 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %149 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %148, i32 0, i32 7
  %150 = load %struct.sunxi_engine*, %struct.sunxi_engine** %149, align 8
  %151 = icmp ne %struct.sunxi_engine* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  store i32 1, i32* %14, align 4
  %153 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %154 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %153, i32 0, i32 7
  %155 = load %struct.sunxi_engine*, %struct.sunxi_engine** %154, align 8
  %156 = call i32 @reset_control_reset(%struct.sunxi_engine* %155)
  br label %158

157:                                              ; preds = %147
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %157, %152
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %161 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %195

166:                                              ; preds = %159
  %167 = load %struct.device*, %struct.device** %5, align 8
  %168 = call %struct.sunxi_engine* @devm_clk_get(%struct.device* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %169 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %170 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %169, i32 0, i32 6
  store %struct.sunxi_engine* %168, %struct.sunxi_engine** %170, align 8
  %171 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %172 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %171, i32 0, i32 6
  %173 = load %struct.sunxi_engine*, %struct.sunxi_engine** %172, align 8
  %174 = call i64 @IS_ERR(%struct.sunxi_engine* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %166
  %177 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %178 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %177, i32 0, i32 6
  %179 = load %struct.sunxi_engine*, %struct.sunxi_engine** %178, align 8
  %180 = call i32 @PTR_ERR(%struct.sunxi_engine* %179)
  %181 = load i32, i32* @ENOENT, align 4
  %182 = sub nsw i32 0, %181
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  store i32 0, i32* %15, align 4
  br label %192

185:                                              ; preds = %176
  %186 = load %struct.device*, %struct.device** %5, align 8
  %187 = call i32 @dev_err(%struct.device* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %188 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %189 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %188, i32 0, i32 6
  %190 = load %struct.sunxi_engine*, %struct.sunxi_engine** %189, align 8
  %191 = call i32 @PTR_ERR(%struct.sunxi_engine* %190)
  store i32 %191, i32* %4, align 4
  br label %368

192:                                              ; preds = %184
  br label %194

193:                                              ; preds = %166
  store i32 1, i32* %15, align 4
  br label %194

194:                                              ; preds = %193, %192
  br label %195

195:                                              ; preds = %194, %159
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %200 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %199, i32 0, i32 1
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %198
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %205, %195
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = call i32 @dev_warn(%struct.device* %209, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %211 = load %struct.device*, %struct.device** %5, align 8
  %212 = call i32 @dev_warn(%struct.device* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %214

213:                                              ; preds = %205, %198
  store i32 1, i32* %16, align 4
  br label %214

214:                                              ; preds = %213, %208
  br label %216

215:                                              ; preds = %123
  store i32 0, i32* %16, align 4
  br label %216

216:                                              ; preds = %215, %214
  %217 = load %struct.device*, %struct.device** %5, align 8
  %218 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %219 = call i32 @sun4i_tcon_init_clocks(%struct.device* %217, %struct.sun4i_tcon* %218)
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* %17, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load %struct.device*, %struct.device** %5, align 8
  %224 = call i32 @dev_err(%struct.device* %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %362

225:                                              ; preds = %216
  %226 = load %struct.device*, %struct.device** %5, align 8
  %227 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %228 = call i32 @sun4i_tcon_init_regmap(%struct.device* %226, %struct.sun4i_tcon* %227)
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = load %struct.device*, %struct.device** %5, align 8
  %233 = call i32 @dev_err(%struct.device* %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  br label %359

234:                                              ; preds = %225
  %235 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %236 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %235, i32 0, i32 1
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %234
  %242 = load %struct.device*, %struct.device** %5, align 8
  %243 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %244 = call i32 @sun4i_dclk_create(%struct.device* %242, %struct.sun4i_tcon* %243)
  store i32 %244, i32* %17, align 4
  %245 = load i32, i32* %17, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load %struct.device*, %struct.device** %5, align 8
  %249 = call i32 @dev_err(%struct.device* %248, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %359

250:                                              ; preds = %241
  br label %251

251:                                              ; preds = %250, %234
  %252 = load %struct.device*, %struct.device** %5, align 8
  %253 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %254 = call i32 @sun4i_tcon_init_irq(%struct.device* %252, %struct.sun4i_tcon* %253)
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* %17, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %251
  %258 = load %struct.device*, %struct.device** %5, align 8
  %259 = call i32 @dev_err(%struct.device* %258, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  br label %348

260:                                              ; preds = %251
  %261 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %262 = load %struct.sunxi_engine*, %struct.sunxi_engine** %10, align 8
  %263 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %264 = call %struct.sunxi_engine* @sun4i_crtc_init(%struct.drm_device* %261, %struct.sunxi_engine* %262, %struct.sun4i_tcon* %263)
  %265 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %266 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %265, i32 0, i32 5
  store %struct.sunxi_engine* %264, %struct.sunxi_engine** %266, align 8
  %267 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %268 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %267, i32 0, i32 5
  %269 = load %struct.sunxi_engine*, %struct.sunxi_engine** %268, align 8
  %270 = call i64 @IS_ERR(%struct.sunxi_engine* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %260
  %273 = load %struct.device*, %struct.device** %5, align 8
  %274 = call i32 @dev_err(%struct.device* %273, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %275 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %276 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %275, i32 0, i32 5
  %277 = load %struct.sunxi_engine*, %struct.sunxi_engine** %276, align 8
  %278 = call i32 @PTR_ERR(%struct.sunxi_engine* %277)
  store i32 %278, i32* %17, align 4
  br label %348

279:                                              ; preds = %260
  %280 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %281 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %280, i32 0, i32 1
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %316

286:                                              ; preds = %279
  %287 = load %struct.device*, %struct.device** %5, align 8
  %288 = getelementptr inbounds %struct.device, %struct.device* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call %struct.device_node* @of_graph_get_remote_node(i32 %289, i32 1, i32 0)
  store %struct.device_node* %290, %struct.device_node** %11, align 8
  %291 = load %struct.device_node*, %struct.device_node** %11, align 8
  %292 = call i64 @of_device_is_compatible(%struct.device_node* %291, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %286
  %295 = load i32, i32* %16, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %299 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %300 = call i32 @sun4i_lvds_init(%struct.drm_device* %298, %struct.sun4i_tcon* %299)
  store i32 %300, i32* %17, align 4
  br label %304

301:                                              ; preds = %294
  %302 = load i32, i32* @EINVAL, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %17, align 4
  br label %304

304:                                              ; preds = %301, %297
  br label %309

305:                                              ; preds = %286
  %306 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %307 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %308 = call i32 @sun4i_rgb_init(%struct.drm_device* %306, %struct.sun4i_tcon* %307)
  store i32 %308, i32* %17, align 4
  br label %309

309:                                              ; preds = %305, %304
  %310 = load %struct.device_node*, %struct.device_node** %11, align 8
  %311 = call i32 @of_node_put(%struct.device_node* %310)
  %312 = load i32, i32* %17, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %309
  br label %348

315:                                              ; preds = %309
  br label %316

316:                                              ; preds = %315, %279
  %317 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %318 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %317, i32 0, i32 1
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %342

323:                                              ; preds = %316
  %324 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %325 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @SUN4I_TCON0_CTL_REG, align 4
  %328 = load i32, i32* @SUN4I_TCON0_CTL_SRC_SEL_MASK, align 4
  %329 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %330 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @regmap_update_bits(i32 %326, i32 %327, i32 %328, i32 %331)
  %333 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %334 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @SUN4I_TCON1_CTL_REG, align 4
  %337 = load i32, i32* @SUN4I_TCON1_CTL_SRC_SEL_MASK, align 4
  %338 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %339 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @regmap_update_bits(i32 %335, i32 %336, i32 %337, i32 %340)
  br label %342

342:                                              ; preds = %323, %316
  %343 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %344 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %343, i32 0, i32 2
  %345 = load %struct.sun4i_drv*, %struct.sun4i_drv** %9, align 8
  %346 = getelementptr inbounds %struct.sun4i_drv, %struct.sun4i_drv* %345, i32 0, i32 0
  %347 = call i32 @list_add_tail(i32* %344, i32* %346)
  store i32 0, i32* %4, align 4
  br label %368

348:                                              ; preds = %314, %272, %257
  %349 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %350 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %349, i32 0, i32 1
  %351 = load %struct.TYPE_2__*, %struct.TYPE_2__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %348
  %356 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %357 = call i32 @sun4i_dclk_free(%struct.sun4i_tcon* %356)
  br label %358

358:                                              ; preds = %355, %348
  br label %359

359:                                              ; preds = %358, %247, %231
  %360 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %361 = call i32 @sun4i_tcon_free_clocks(%struct.sun4i_tcon* %360)
  br label %362

362:                                              ; preds = %359, %222
  %363 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %12, align 8
  %364 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %363, i32 0, i32 0
  %365 = load %struct.sunxi_engine*, %struct.sunxi_engine** %364, align 8
  %366 = call i32 @reset_control_assert(%struct.sunxi_engine* %365)
  %367 = load i32, i32* %17, align 4
  store i32 %367, i32* %4, align 4
  br label %368

368:                                              ; preds = %362, %342, %185, %140, %119, %107, %95, %73, %42, %31
  %369 = load i32, i32* %4, align 4
  ret i32 %369
}

declare dso_local %struct.sunxi_engine* @sun4i_tcon_find_engine(%struct.sun4i_drv*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sunxi_engine*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.sun4i_tcon* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.sun4i_tcon*) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.sunxi_engine* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.sunxi_engine*) #1

declare dso_local %struct.sunxi_engine* @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_deassert(%struct.sunxi_engine*) #1

declare dso_local i32 @reset_control_reset(%struct.sunxi_engine*) #1

declare dso_local %struct.sunxi_engine* @devm_reset_control_get_optional(%struct.device*, i8*) #1

declare dso_local %struct.sunxi_engine* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @sun4i_tcon_init_clocks(%struct.device*, %struct.sun4i_tcon*) #1

declare dso_local i32 @sun4i_tcon_init_regmap(%struct.device*, %struct.sun4i_tcon*) #1

declare dso_local i32 @sun4i_dclk_create(%struct.device*, %struct.sun4i_tcon*) #1

declare dso_local i32 @sun4i_tcon_init_irq(%struct.device*, %struct.sun4i_tcon*) #1

declare dso_local %struct.sunxi_engine* @sun4i_crtc_init(%struct.drm_device*, %struct.sunxi_engine*, %struct.sun4i_tcon*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @sun4i_lvds_init(%struct.drm_device*, %struct.sun4i_tcon*) #1

declare dso_local i32 @sun4i_rgb_init(%struct.drm_device*, %struct.sun4i_tcon*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sun4i_dclk_free(%struct.sun4i_tcon*) #1

declare dso_local i32 @sun4i_tcon_free_clocks(%struct.sun4i_tcon*) #1

declare dso_local i32 @reset_control_assert(%struct.sunxi_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
