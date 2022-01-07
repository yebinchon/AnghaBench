; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_i2c_dev = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.clk = type { i32 }

@OMAP_I2C_REV_ON_3430_3530 = common dso_local global i64 0, align 8
@OMAP_I2C_WE_ALL = common dso_local global i32 0, align 4
@OMAP_I2C_FLAG_ALWAYS_ARMXOR_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"could not get fck: %i\0A\00", align 1
@OMAP_I2C_FLAG_SIMPLE_CLOCK = common dso_local global i32 0, align 4
@OMAP_I2C_FLAG_FORCE_19200_INT_CLK = common dso_local global i32 0, align 4
@OMAP_I2C_SCLL_HSSCLL = common dso_local global i32 0, align 4
@OMAP_I2C_SCLH_HSSCLH = common dso_local global i32 0, align 4
@OMAP_I2C_IE_XRDY = common dso_local global i32 0, align 4
@OMAP_I2C_IE_RRDY = common dso_local global i32 0, align 4
@OMAP_I2C_IE_ARDY = common dso_local global i32 0, align 4
@OMAP_I2C_IE_NACK = common dso_local global i32 0, align 4
@OMAP_I2C_IE_AL = common dso_local global i32 0, align 4
@OMAP_I2C_IE_RDR = common dso_local global i32 0, align 4
@OMAP_I2C_IE_XDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_i2c_dev*)* @omap_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_i2c_init(%struct.omap_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.clk*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.omap_i2c_dev* %0, %struct.omap_i2c_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 12000000, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %18 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OMAP_I2C_REV_ON_3430_3530, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @OMAP_I2C_WE_ALL, align 4
  %24 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %25 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %28 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OMAP_I2C_FLAG_ALWAYS_ARMXOR_CLK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %26
  %34 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %35 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.clk* @clk_get(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %37, %struct.clk** %13, align 8
  %38 = load %struct.clk*, %struct.clk** %13, align 8
  %39 = call i64 @IS_ERR(%struct.clk* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.clk*, %struct.clk** %13, align 8
  %43 = call i32 @PTR_ERR(%struct.clk* %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %45 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %2, align 4
  br label %286

50:                                               ; preds = %33
  %51 = load %struct.clk*, %struct.clk** %13, align 8
  %52 = call i32 @clk_get_rate(%struct.clk* %51)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %11, align 8
  %54 = load %struct.clk*, %struct.clk** %13, align 8
  %55 = call i32 @clk_put(%struct.clk* %54)
  %56 = load i64, i64* %11, align 8
  %57 = icmp ugt i64 %56, 12000000
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i64, i64* %11, align 8
  %60 = udiv i64 %59, 12000000
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %50
  br label %63

63:                                               ; preds = %62, %26
  %64 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %65 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @OMAP_I2C_FLAG_SIMPLE_CLOCK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %207, label %70

70:                                               ; preds = %63
  %71 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %72 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 400
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %77 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @OMAP_I2C_FLAG_FORCE_19200_INT_CLK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %70
  store i64 19200, i64* %12, align 8
  br label %91

83:                                               ; preds = %75
  %84 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %85 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 100
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i64 9600, i64* %12, align 8
  br label %90

89:                                               ; preds = %83
  store i64 4000, i64* %12, align 8
  br label %90

90:                                               ; preds = %89, %88
  br label %91

91:                                               ; preds = %90, %82
  %92 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %93 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = call %struct.clk* @clk_get(i32 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %95, %struct.clk** %13, align 8
  %96 = load %struct.clk*, %struct.clk** %13, align 8
  %97 = call i64 @IS_ERR(%struct.clk* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = load %struct.clk*, %struct.clk** %13, align 8
  %101 = call i32 @PTR_ERR(%struct.clk* %100)
  store i32 %101, i32* %14, align 4
  %102 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %103 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %2, align 4
  br label %286

108:                                              ; preds = %91
  %109 = load %struct.clk*, %struct.clk** %13, align 8
  %110 = call i32 @clk_get_rate(%struct.clk* %109)
  %111 = sdiv i32 %110, 1000
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %11, align 8
  %113 = load %struct.clk*, %struct.clk** %13, align 8
  %114 = call i32 @clk_put(%struct.clk* %113)
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = udiv i64 %115, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  %121 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %122 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 400
  br i1 %124, label %125, label %154

125:                                              ; preds = %108
  %126 = load i64, i64* %12, align 8
  %127 = udiv i64 %126, 400
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i64, i64* %15, align 8
  %130 = udiv i64 %129, 3
  %131 = sub i64 %128, %130
  %132 = sub i64 %131, 7
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %7, align 4
  %134 = load i64, i64* %15, align 8
  %135 = udiv i64 %134, 3
  %136 = sub i64 %135, 5
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %8, align 4
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %140 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = udiv i64 %138, %142
  store i64 %143, i64* %15, align 8
  %144 = load i64, i64* %15, align 8
  %145 = load i64, i64* %15, align 8
  %146 = udiv i64 %145, 3
  %147 = sub i64 %144, %146
  %148 = sub i64 %147, 7
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %9, align 4
  %150 = load i64, i64* %15, align 8
  %151 = udiv i64 %150, 3
  %152 = sub i64 %151, 5
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %10, align 4
  br label %196

154:                                              ; preds = %108
  %155 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %156 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %157, 100
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = load i64, i64* %12, align 8
  %161 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %162 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = udiv i64 %160, %164
  store i64 %165, i64* %16, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %16, align 8
  %168 = udiv i64 %167, 3
  %169 = sub i64 %166, %168
  %170 = sub i64 %169, 7
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %7, align 4
  %172 = load i64, i64* %16, align 8
  %173 = udiv i64 %172, 3
  %174 = sub i64 %173, 5
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %8, align 4
  br label %195

176:                                              ; preds = %154
  %177 = load i64, i64* %12, align 8
  %178 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %179 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = udiv i64 %177, %182
  %184 = sub i64 %183, 7
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %7, align 4
  %186 = load i64, i64* %12, align 8
  %187 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %188 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = udiv i64 %186, %191
  %193 = sub i64 %192, 5
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %176, %159
  br label %196

196:                                              ; preds = %195, %125
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* @OMAP_I2C_SCLL_HSSCLL, align 4
  %199 = shl i32 %197, %198
  %200 = load i32, i32* %7, align 4
  %201 = or i32 %199, %200
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @OMAP_I2C_SCLH_HSSCLH, align 4
  %204 = shl i32 %202, %203
  %205 = load i32, i32* %8, align 4
  %206 = or i32 %204, %205
  store i32 %206, i32* %6, align 4
  br label %242

207:                                              ; preds = %63
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  %210 = mul nsw i32 %209, 1000
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* %11, align 8
  %213 = udiv i64 %212, %211
  store i64 %213, i64* %11, align 8
  %214 = load i32, i32* %4, align 4
  %215 = icmp sgt i32 %214, 2
  br i1 %215, label %216, label %217

216:                                              ; preds = %207
  store i32 2, i32* %4, align 4
  br label %217

217:                                              ; preds = %216, %207
  %218 = load i64, i64* %11, align 8
  %219 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %220 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = udiv i64 %218, %223
  %225 = sub i64 %224, 7
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = add i64 %225, %227
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %5, align 4
  %230 = load i64, i64* %11, align 8
  %231 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %232 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = udiv i64 %230, %235
  %237 = sub i64 %236, 7
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = add i64 %237, %239
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %217, %196
  %243 = load i32, i32* @OMAP_I2C_IE_XRDY, align 4
  %244 = load i32, i32* @OMAP_I2C_IE_RRDY, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @OMAP_I2C_IE_ARDY, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @OMAP_I2C_IE_NACK, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @OMAP_I2C_IE_AL, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %253 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %252, i32 0, i32 8
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %242
  %257 = load i32, i32* @OMAP_I2C_IE_RDR, align 4
  %258 = load i32, i32* @OMAP_I2C_IE_XDR, align 4
  %259 = or i32 %257, %258
  br label %261

260:                                              ; preds = %242
  br label %261

261:                                              ; preds = %260, %256
  %262 = phi i32 [ %259, %256 ], [ 0, %260 ]
  %263 = or i32 %251, %262
  %264 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %265 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %4, align 4
  %267 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %268 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %5, align 4
  %270 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %271 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %270, i32 0, i32 5
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* %6, align 4
  %273 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %274 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %273, i32 0, i32 6
  store i32 %272, i32* %274, align 4
  %275 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %276 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @OMAP_I2C_REV_ON_3430_3530, align 8
  %279 = icmp sle i64 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %261
  %281 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %282 = getelementptr inbounds %struct.omap_i2c_dev, %struct.omap_i2c_dev* %281, i32 0, i32 7
  store i32 1, i32* %282, align 8
  br label %283

283:                                              ; preds = %280, %261
  %284 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %285 = call i32 @__omap_i2c_init(%struct.omap_i2c_dev* %284)
  store i32 0, i32* %2, align 4
  br label %286

286:                                              ; preds = %283, %99, %41
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local %struct.clk* @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @__omap_i2c_init(%struct.omap_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
