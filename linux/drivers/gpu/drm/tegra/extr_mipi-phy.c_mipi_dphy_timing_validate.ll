; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_mipi-phy.c_mipi_dphy_timing_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_mipi-phy.c_mipi_dphy_timing_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mipi_dphy_timing_validate(%struct.mipi_dphy_timing* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dphy_timing*, align 8
  %5 = alloca i64, align 8
  store %struct.mipi_dphy_timing* %0, %struct.mipi_dphy_timing** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %7 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 60
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %279

13:                                               ; preds = %2
  %14 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %15 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %5, align 8
  %19 = mul i64 52, %18
  %20 = add i64 60, %19
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %279

25:                                               ; preds = %13
  %26 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %27 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %279

33:                                               ; preds = %25
  %34 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %35 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 38
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %40 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 95
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %279

46:                                               ; preds = %38
  %47 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %48 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 95
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %53 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 300
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %279

59:                                               ; preds = %51
  %60 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %61 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 38
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %279

67:                                               ; preds = %59
  %68 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %69 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 60
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %279

75:                                               ; preds = %67
  %76 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %77 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %80 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = icmp slt i32 %82, 300
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %279

87:                                               ; preds = %75
  %88 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %89 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %5, align 8
  %93 = mul i64 4, %92
  %94 = add i64 35, %93
  %95 = icmp ugt i64 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %279

99:                                               ; preds = %87
  %100 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %101 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %5, align 8
  %105 = mul i64 12, %104
  %106 = add i64 105, %105
  %107 = icmp ugt i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %279

111:                                              ; preds = %99
  %112 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %113 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 100
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %279

119:                                              ; preds = %111
  %120 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %121 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %5, align 8
  %125 = mul i64 4, %124
  %126 = add i64 40, %125
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %119
  %129 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %130 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %5, align 8
  %134 = mul i64 6, %133
  %135 = add i64 85, %134
  %136 = icmp ugt i64 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %128, %119
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %279

140:                                              ; preds = %128
  %141 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %142 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %145 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %144, i32 0, i32 12
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %143, %146
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %5, align 8
  %150 = mul i64 10, %149
  %151 = add i64 145, %150
  %152 = icmp ult i64 %148, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %140
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %279

156:                                              ; preds = %140
  %157 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %158 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %157, i32 0, i32 13
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %5, align 8
  %162 = mul i64 6, %161
  %163 = add i64 85, %162
  %164 = icmp ult i64 %160, %163
  br i1 %164, label %174, label %165

165:                                              ; preds = %156
  %166 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %167 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %5, align 8
  %171 = mul i64 10, %170
  %172 = add i64 145, %171
  %173 = icmp ugt i64 %169, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %165, %156
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %279

177:                                              ; preds = %165
  %178 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %179 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %178, i32 0, i32 14
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %180, 40
  br i1 %181, label %191, label %182

182:                                              ; preds = %177
  %183 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %184 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %183, i32 0, i32 14
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %5, align 8
  %188 = mul i64 4, %187
  %189 = add i64 55, %188
  %190 = icmp ugt i64 %186, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %182, %177
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %279

194:                                              ; preds = %182
  %195 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %196 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %195, i32 0, i32 15
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %5, align 8
  %199 = mul i64 8, %198
  %200 = trunc i64 %199 to i32
  %201 = load i64, i64* %5, align 8
  %202 = mul i64 4, %201
  %203 = add i64 60, %202
  %204 = trunc i64 %203 to i32
  %205 = call i64 @max(i32 %200, i32 %204)
  %206 = icmp slt i64 %197, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %194
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %3, align 4
  br label %279

210:                                              ; preds = %194
  %211 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %212 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %211, i32 0, i32 16
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %213, 100000
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %3, align 4
  br label %279

218:                                              ; preds = %210
  %219 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %220 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %219, i32 0, i32 17
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %221, 50
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %279

226:                                              ; preds = %218
  %227 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %228 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %227, i32 0, i32 18
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %231 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %230, i32 0, i32 17
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 5, %232
  %234 = icmp ne i32 %229, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %226
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %279

238:                                              ; preds = %226
  %239 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %240 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %239, i32 0, i32 19
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %243 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %242, i32 0, i32 17
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 4, %244
  %246 = icmp ne i32 %241, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %238
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %3, align 4
  br label %279

250:                                              ; preds = %238
  %251 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %252 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %251, i32 0, i32 20
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %255 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %254, i32 0, i32 17
  %256 = load i32, i32* %255, align 4
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %267, label %258

258:                                              ; preds = %250
  %259 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %260 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %259, i32 0, i32 20
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %263 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %262, i32 0, i32 17
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 2, %264
  %266 = icmp sgt i32 %261, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %258, %250
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %3, align 4
  br label %279

270:                                              ; preds = %258
  %271 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %4, align 8
  %272 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %271, i32 0, i32 21
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %273, 1000000
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load i32, i32* @EINVAL, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %3, align 4
  br label %279

278:                                              ; preds = %270
  store i32 0, i32* %3, align 4
  br label %279

279:                                              ; preds = %278, %275, %267, %247, %235, %223, %215, %207, %191, %174, %153, %137, %116, %108, %96, %84, %72, %64, %56, %43, %30, %22, %10
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
