; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_adm1026_fixup_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_adm1026_fixup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adm1026_data = type { i32*, i32, i32 }

@gpio_output = common dso_local global i32* null, align 8
@gpio_input = common dso_local global i32* null, align 8
@gpio_inverted = common dso_local global i32* null, align 8
@gpio_normal = common dso_local global i32* null, align 8
@gpio_fan = common dso_local global i32* null, align 8
@ADM1026_REG_CONFIG2 = common dso_local global i64 0, align 8
@ADM1026_REG_CONFIG3 = common dso_local global i64 0, align 8
@ADM1026_REG_GPIO_CFG_0_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @adm1026_fixup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm1026_fixup_gpio(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.adm1026_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.adm1026_data* %7, %struct.adm1026_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 16
  br i1 %10, label %11, label %67

11:                                               ; preds = %8
  %12 = load i32*, i32** @gpio_output, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %11
  %19 = load i32*, i32** @gpio_output, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 16
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %27 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** @gpio_output, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %28, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %25, %18, %11
  %39 = load i32*, i32** @gpio_output, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load i32*, i32** @gpio_output, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 7
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i32*, i32** @gpio_output, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %60 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %52, %45, %38
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %8

67:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %124, %67
  %69 = load i32, i32* %4, align 4
  %70 = icmp sle i32 %69, 16
  br i1 %70, label %71, label %127

71:                                               ; preds = %68
  %72 = load i32*, i32** @gpio_input, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %71
  %79 = load i32*, i32** @gpio_input, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 16
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %87 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** @gpio_input, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, -2
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %85, %78, %71
  %99 = load i32*, i32** @gpio_input, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load i32*, i32** @gpio_input, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp sle i32 %110, 7
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load i32*, i32** @gpio_input, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 1, %117
  %119 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %120 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %112, %105, %98
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %68

127:                                              ; preds = %68
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %159, %127
  %129 = load i32, i32* %4, align 4
  %130 = icmp sle i32 %129, 16
  br i1 %130, label %131, label %162

131:                                              ; preds = %128
  %132 = load i32*, i32** @gpio_inverted, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %131
  %139 = load i32*, i32** @gpio_inverted, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp sle i32 %143, 16
  br i1 %144, label %145, label %158

145:                                              ; preds = %138
  %146 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %147 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32*, i32** @gpio_inverted, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, -3
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %145, %138, %131
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %4, align 4
  br label %128

162:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %194, %162
  %164 = load i32, i32* %4, align 4
  %165 = icmp sle i32 %164, 16
  br i1 %165, label %166, label %197

166:                                              ; preds = %163
  %167 = load i32*, i32** @gpio_normal, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %166
  %174 = load i32*, i32** @gpio_normal, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %178, 16
  br i1 %179, label %180, label %193

180:                                              ; preds = %173
  %181 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %182 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32*, i32** @gpio_normal, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %183, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, 2
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %180, %173, %166
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %4, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %4, align 4
  br label %163

197:                                              ; preds = %163
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %228, %197
  %199 = load i32, i32* %4, align 4
  %200 = icmp sle i32 %199, 7
  br i1 %200, label %201, label %231

201:                                              ; preds = %198
  %202 = load i32*, i32** @gpio_fan, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %201
  %209 = load i32*, i32** @gpio_fan, align 8
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp sle i32 %213, 7
  br i1 %214, label %215, label %227

215:                                              ; preds = %208
  %216 = load i32*, i32** @gpio_fan, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = shl i32 1, %220
  %222 = xor i32 %221, -1
  %223 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %224 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %215, %208, %201
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %4, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %4, align 4
  br label %198

231:                                              ; preds = %198
  %232 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %233 = load i64, i64* @ADM1026_REG_CONFIG2, align 8
  %234 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %235 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @adm1026_write_value(%struct.i2c_client* %232, i64 %233, i32 %236)
  %238 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %239 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 63
  %242 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %243 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 16
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 3
  %248 = shl i32 %247, 6
  %249 = or i32 %241, %248
  %250 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %251 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 4
  %252 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %253 = load i64, i64* @ADM1026_REG_CONFIG3, align 8
  %254 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %255 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @adm1026_write_value(%struct.i2c_client* %252, i64 %253, i32 %256)
  store i32 15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %258

258:                                              ; preds = %287, %231
  %259 = load i32, i32* %4, align 4
  %260 = icmp sge i32 %259, 0
  br i1 %260, label %261, label %290

261:                                              ; preds = %258
  %262 = load i32, i32* %5, align 4
  %263 = shl i32 %262, 2
  store i32 %263, i32* %5, align 4
  %264 = load %struct.adm1026_data*, %struct.adm1026_data** %3, align 8
  %265 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = and i32 %270, 3
  %272 = load i32, i32* %5, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %5, align 4
  %274 = load i32, i32* %4, align 4
  %275 = and i32 %274, 3
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %261
  %278 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %279 = load i64, i64* @ADM1026_REG_GPIO_CFG_0_3, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sdiv i32 %280, 4
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %279, %282
  %284 = load i32, i32* %5, align 4
  %285 = call i32 @adm1026_write_value(%struct.i2c_client* %278, i64 %283, i32 %284)
  store i32 0, i32* %5, align 4
  br label %286

286:                                              ; preds = %277, %261
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %4, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %4, align 4
  br label %258

290:                                              ; preds = %258
  %291 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %292 = call i32 @adm1026_print_gpio(%struct.i2c_client* %291)
  ret void
}

declare dso_local %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @adm1026_print_gpio(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
