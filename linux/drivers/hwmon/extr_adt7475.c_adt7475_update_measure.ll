; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_update_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_update_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7475_data = type { i32, i32, i32**, i32**, i32**, i32**, i32, i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@REG_STATUS2 = common dso_local global i32 0, align 4
@REG_STATUS1 = common dso_local global i32 0, align 4
@REG_EXTEND2 = common dso_local global i32 0, align 4
@REG_EXTEND1 = common dso_local global i32 0, align 4
@ADT7475_VOLTAGE_COUNT = common dso_local global i32 0, align 4
@INPUT = common dso_local global i64 0, align 8
@ADT7475_TEMP_COUNT = common dso_local global i32 0, align 4
@REG_STATUS4 = common dso_local global i32 0, align 4
@REG_EXTEND3 = common dso_local global i32 0, align 4
@REG_VTT = common dso_local global i32 0, align 4
@ADT7475_TACH_COUNT = common dso_local global i32 0, align 4
@ADT7475_PWM_COUNT = common dso_local global i32 0, align 4
@REG_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @adt7475_update_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7475_update_measure(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.adt7475_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.adt7475_data* %10, %struct.adt7475_data** %4, align 8
  %11 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %12 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %11, i32 0, i32 10
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load i32, i32* @REG_STATUS2, align 4
  %15 = call i32 @adt7475_read(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %272

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 8
  %23 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %24 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @REG_STATUS1, align 4
  %26 = call i32 @adt7475_read(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %272

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %34 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @REG_EXTEND2, align 4
  %38 = call i32 @adt7475_read(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %272

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 8
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @REG_EXTEND1, align 4
  %47 = call i32 @adt7475_read(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %272

52:                                               ; preds = %43
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %95, %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ADT7475_VOLTAGE_COUNT, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %56
  %61 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %62 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %95

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @VOLTAGE_REG(i32 %70)
  %72 = call i32 @adt7475_read(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %272

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %78, 2
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 2
  %83 = ashr i32 %80, %82
  %84 = and i32 %83, 3
  %85 = or i32 %79, %84
  %86 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %87 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %86, i32 0, i32 2
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* @INPUT, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %85, i32* %94, align 4
  br label %95

95:                                               ; preds = %77, %68
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %56

98:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %130, %98
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @ADT7475_TEMP_COUNT, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @TEMP_REG(i32 %104)
  %106 = call i32 @adt7475_read(i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %2, align 4
  br label %272

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 %112, 2
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 5
  %117 = mul nsw i32 %116, 2
  %118 = ashr i32 %114, %117
  %119 = and i32 %118, 3
  %120 = or i32 %113, %119
  %121 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %122 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %121, i32 0, i32 3
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* @INPUT, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %120, i32* %129, align 4
  br label %130

130:                                              ; preds = %111
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %99

133:                                              ; preds = %99
  %134 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %135 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %181

139:                                              ; preds = %133
  %140 = load i32, i32* @REG_STATUS4, align 4
  %141 = call i32 @adt7475_read(i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %272

146:                                              ; preds = %139
  %147 = load i32, i32* %8, align 4
  %148 = shl i32 %147, 24
  %149 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %150 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* @REG_EXTEND3, align 4
  %154 = call i32 @adt7475_read(i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %2, align 4
  br label %272

159:                                              ; preds = %146
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* @REG_VTT, align 4
  %162 = call i32 @adt7475_read(i32 %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %2, align 4
  br label %272

167:                                              ; preds = %159
  %168 = load i32, i32* %8, align 4
  %169 = shl i32 %168, 2
  %170 = load i32, i32* %6, align 4
  %171 = ashr i32 %170, 4
  %172 = and i32 %171, 3
  %173 = or i32 %169, %172
  %174 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %175 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %174, i32 0, i32 2
  %176 = load i32**, i32*** %175, align 8
  %177 = load i64, i64* @INPUT, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 5
  store i32 %173, i32* %180, align 4
  br label %181

181:                                              ; preds = %167, %133
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %215, %181
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @ADT7475_TACH_COUNT, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %218

186:                                              ; preds = %182
  %187 = load i32, i32* %7, align 4
  %188 = icmp eq i32 %187, 3
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %191 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  br label %215

195:                                              ; preds = %189, %186
  %196 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @TACH_REG(i32 %197)
  %199 = call i32 @adt7475_read_word(%struct.i2c_client* %196, i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %272

204:                                              ; preds = %195
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %207 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %206, i32 0, i32 4
  %208 = load i32**, i32*** %207, align 8
  %209 = load i64, i64* @INPUT, align 8
  %210 = getelementptr inbounds i32*, i32** %208, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 %205, i32* %214, align 4
  br label %215

215:                                              ; preds = %204, %194
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %182

218:                                              ; preds = %182
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %251, %218
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @ADT7475_PWM_COUNT, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %254

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %228 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %226
  br label %251

232:                                              ; preds = %226, %223
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @PWM_REG(i32 %233)
  %235 = call i32 @adt7475_read(i32 %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %2, align 4
  br label %272

240:                                              ; preds = %232
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %243 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %242, i32 0, i32 5
  %244 = load i32**, i32*** %243, align 8
  %245 = load i64, i64* @INPUT, align 8
  %246 = getelementptr inbounds i32*, i32** %244, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 %241, i32* %250, align 4
  br label %251

251:                                              ; preds = %240, %231
  %252 = load i32, i32* %7, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %7, align 4
  br label %219

254:                                              ; preds = %219
  %255 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %256 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %255, i32 0, i32 7
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %254
  %260 = load i32, i32* @REG_VID, align 4
  %261 = call i32 @adt7475_read(i32 %260)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %2, align 4
  br label %272

266:                                              ; preds = %259
  %267 = load i32, i32* %8, align 4
  %268 = and i32 %267, 63
  %269 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %270 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %269, i32 0, i32 6
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %266, %254
  store i32 0, i32* %2, align 4
  br label %272

272:                                              ; preds = %271, %264, %238, %202, %165, %157, %144, %109, %75, %50, %41, %29, %18
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @VOLTAGE_REG(i32) #1

declare dso_local i32 @TEMP_REG(i32) #1

declare dso_local i32 @adt7475_read_word(%struct.i2c_client*, i32) #1

declare dso_local i32 @TACH_REG(i32) #1

declare dso_local i32 @PWM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
