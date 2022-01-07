; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.ili9322 = type { i64, i64, i64, i32*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64, i64 }

@ILI9322_GLOBAL_RESET = common dso_local global i64 0, align 8
@ILI9322_GLOBAL_RESET_ASSERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"can't issue GRESET (%d)\0A\00", align 1
@U8_MAX = common dso_local global i64 0, align 8
@ILI9322_VREG1_VOLTAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"can't set up VREG1OUT (%d)\0A\00", align 1
@ILI9322_VCOM_AMP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"can't set up VCOM amplitude (%d)\0A\00", align 1
@ILI9322_VCOM_HIGH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"can't set up VCOM high (%d)\0A\00", align 1
@ILI9322_GAMMA_1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"can't write gamma V%d to 0x%02x (%d)\0A\00", align 1
@ILI9322_POL_DCLK = common dso_local global i32 0, align 4
@ILI9322_POL_DE = common dso_local global i32 0, align 4
@ILI9322_POL_HSYNC = common dso_local global i32 0, align 4
@ILI9322_POL_VSYNC = common dso_local global i32 0, align 4
@ILI9322_POL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"can't write POL register (%d)\0A\00", align 1
@ILI9322_IF_CTRL_LINE_INVERSION = common dso_local global i32 0, align 4
@ILI9322_IF_CTRL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"can't write IF CTRL register (%d)\0A\00", align 1
@ILI9322_ENTRY_HDIR = common dso_local global i32 0, align 4
@ILI9322_ENTRY_VDIR = common dso_local global i32 0, align 4
@ILI9322_ENTRY_AUTODETECT = common dso_local global i32 0, align 4
@ILI9322_ENTRY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"can't write ENTRY reg (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"display is in %s mode, syncmode %02x\0A\00", align 1
@ili9322_inputs = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"initialized display\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*, %struct.ili9322*)* @ili9322_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9322_init(%struct.drm_panel* %0, %struct.ili9322* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_panel*, align 8
  %5 = alloca %struct.ili9322*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %4, align 8
  store %struct.ili9322* %1, %struct.ili9322** %5, align 8
  %9 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %10 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* @ILI9322_GLOBAL_RESET, align 8
  %13 = load i32, i32* @ILI9322_GLOBAL_RESET_ASSERT, align 4
  %14 = call i32 @regmap_write(i32 %11, i64 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %19 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %293

24:                                               ; preds = %2
  %25 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %26 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @U8_MAX, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %32 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @ILI9322_VREG1_VOLTAGE, align 8
  %35 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %36 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @regmap_write(i32 %33, i64 %34, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %44 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %293

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %24
  %51 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %52 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @U8_MAX, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %58 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @ILI9322_VCOM_AMP, align 8
  %61 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %62 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @regmap_write(i32 %59, i64 %60, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %56
  %69 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %70 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %293

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %50
  %77 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %78 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @U8_MAX, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %84 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* @ILI9322_VCOM_HIGH, align 8
  %87 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %88 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @regmap_write(i32 %85, i64 %86, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %82
  %95 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %96 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %293

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101, %76
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %142, %102
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %106 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @ARRAY_SIZE(i32* %107)
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %145

110:                                              ; preds = %103
  %111 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %112 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* @ILI9322_GAMMA_1, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %119 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @regmap_write(i32 %113, i64 %117, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %110
  %129 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %130 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i64, i64* @ILI9322_GAMMA_1, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = load i32, i32* %7, align 4
  %139 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %133, i64 %137, i32 %138)
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %3, align 4
  br label %293

141:                                              ; preds = %110
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %103

145:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  %146 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %147 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %146, i32 0, i32 6
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @ILI9322_POL_DCLK, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %152, %145
  %155 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %156 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %155, i32 0, i32 6
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @ILI9322_POL_DE, align 4
  %163 = load i32, i32* %6, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %167 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %166, i32 0, i32 6
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i32, i32* @ILI9322_POL_HSYNC, align 4
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %172, %165
  %177 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %178 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %177, i32 0, i32 6
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %176
  %184 = load i32, i32* @ILI9322_POL_VSYNC, align 4
  %185 = load i32, i32* %6, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %183, %176
  %188 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %189 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* @ILI9322_POL, align 8
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @regmap_write(i32 %190, i64 %191, i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %187
  %197 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %198 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %199, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %3, align 4
  br label %293

203:                                              ; preds = %187
  %204 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %205 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %204, i32 0, i32 6
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* @ILI9322_IF_CTRL_LINE_INVERSION, align 4
  %210 = load i32, i32* %6, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %6, align 4
  %212 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %213 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 8
  %215 = load i64, i64* @ILI9322_IF_CTRL, align 8
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @regmap_write(i32 %214, i64 %215, i32 %216)
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %203
  %221 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %222 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %223, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %3, align 4
  br label %293

227:                                              ; preds = %203
  %228 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %229 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = shl i32 %230, 4
  store i32 %231, i32* %6, align 4
  %232 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %233 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %232, i32 0, i32 6
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %227
  %239 = load i32, i32* @ILI9322_ENTRY_HDIR, align 4
  %240 = load i32, i32* %6, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %238, %227
  %243 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %244 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %243, i32 0, i32 6
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %242
  %250 = load i32, i32* @ILI9322_ENTRY_VDIR, align 4
  %251 = load i32, i32* %6, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %249, %242
  %254 = load i32, i32* @ILI9322_ENTRY_AUTODETECT, align 4
  %255 = load i32, i32* %6, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %6, align 4
  %257 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %258 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = load i64, i64* @ILI9322_ENTRY, align 8
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @regmap_write(i32 %259, i64 %260, i32 %261)
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %253
  %266 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %267 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %7, align 4
  %270 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %268, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %3, align 4
  br label %293

272:                                              ; preds = %253
  %273 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %274 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** @ili9322_inputs, align 8
  %277 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %278 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %284 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %283, i32 0, i32 6
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 (i32, i8*, ...) @dev_info(i32 %275, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %282, i32 %287)
  %289 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %290 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (i32, i8*, ...) @dev_info(i32 %291, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %293

293:                                              ; preds = %272, %265, %220, %196, %128, %94, %68, %42, %17
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
