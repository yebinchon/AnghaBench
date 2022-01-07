; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_calculate_abs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_calculate_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp = type { i32*, i32*, i32* }

@threshold = common dso_local global i32 0, align 4
@ATP_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atp*, i32, i32, i32, i32*, i32*)* @atp_calculate_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_calculate_abs(%struct.atp* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.atp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.atp* %0, %struct.atp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.atp*, %struct.atp** %8, align 8
  %21 = getelementptr inbounds %struct.atp, %struct.atp* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load i32*, i32** %13, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %89, %6
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %92

31:                                               ; preds = %27
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @threshold, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %88

44:                                               ; preds = %31
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %63, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %50, %44
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  store i32 1, i32* %19, align 4
  br label %87

67:                                               ; preds = %50, %47
  %68 = load i32, i32* %14, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %76, %81
  %83 = load i32, i32* @threshold, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  store i32 0, i32* %19, align 4
  br label %86

86:                                               ; preds = %85, %70, %67
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87, %43
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %27

92:                                               ; preds = %27
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 0, i32* %7, align 4
  br label %285

97:                                               ; preds = %92
  %98 = load %struct.atp*, %struct.atp** %8, align 8
  %99 = getelementptr inbounds %struct.atp, %struct.atp* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @memset(i32* %100, i32 0, i32 16)
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %121, %97
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load i32*, i32** %16, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ATP_SCALE, align 4
  %113 = shl i32 %111, %112
  %114 = load %struct.atp*, %struct.atp** %8, align 8
  %115 = getelementptr inbounds %struct.atp, %struct.atp* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %102

124:                                              ; preds = %102
  %125 = load %struct.atp*, %struct.atp** %8, align 8
  %126 = getelementptr inbounds %struct.atp, %struct.atp* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = call i32 @memset(i32* %131, i32 0, i32 16)
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %226, %124
  %134 = load i32, i32* %15, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %229

136:                                              ; preds = %133
  %137 = load %struct.atp*, %struct.atp** %8, align 8
  %138 = getelementptr inbounds %struct.atp, %struct.atp* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.atp*, %struct.atp** %8, align 8
  %143 = getelementptr inbounds %struct.atp, %struct.atp* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %141, %146
  %148 = sdiv i32 %147, 2
  %149 = load %struct.atp*, %struct.atp** %8, align 8
  %150 = getelementptr inbounds %struct.atp, %struct.atp* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %148, i32* %152, align 4
  store i32 1, i32* %14, align 4
  br label %153

153:                                              ; preds = %192, %136
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 7
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %195

158:                                              ; preds = %153
  %159 = load %struct.atp*, %struct.atp** %8, align 8
  %160 = getelementptr inbounds %struct.atp, %struct.atp* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.atp*, %struct.atp** %8, align 8
  %168 = getelementptr inbounds %struct.atp, %struct.atp* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %173, 2
  %175 = add nsw i32 %166, %174
  %176 = load %struct.atp*, %struct.atp** %8, align 8
  %177 = getelementptr inbounds %struct.atp, %struct.atp* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %175, %183
  %185 = sdiv i32 %184, 4
  %186 = load %struct.atp*, %struct.atp** %8, align 8
  %187 = getelementptr inbounds %struct.atp, %struct.atp* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %185, i32* %191, align 4
  br label %192

192:                                              ; preds = %158
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %153

195:                                              ; preds = %153
  %196 = load %struct.atp*, %struct.atp** %8, align 8
  %197 = getelementptr inbounds %struct.atp, %struct.atp* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.atp*, %struct.atp** %8, align 8
  %205 = getelementptr inbounds %struct.atp, %struct.atp* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %203, %210
  %212 = sdiv i32 %211, 2
  %213 = load %struct.atp*, %struct.atp** %8, align 8
  %214 = getelementptr inbounds %struct.atp, %struct.atp* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %212, i32* %218, align 4
  %219 = load %struct.atp*, %struct.atp** %8, align 8
  %220 = getelementptr inbounds %struct.atp, %struct.atp* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.atp*, %struct.atp** %8, align 8
  %223 = getelementptr inbounds %struct.atp, %struct.atp* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @memcpy(i32* %221, i32* %224, i32 8)
  br label %226

226:                                              ; preds = %195
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4
  br label %133

229:                                              ; preds = %133
  store i32 0, i32* %14, align 4
  br label %230

230:                                              ; preds = %268, %229
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 8
  %234 = icmp slt i32 %231, %233
  br i1 %234, label %235, label %271

235:                                              ; preds = %230
  %236 = load %struct.atp*, %struct.atp** %8, align 8
  %237 = getelementptr inbounds %struct.atp, %struct.atp* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @ATP_SCALE, align 4
  %244 = ashr i32 %242, %243
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %267

246:                                              ; preds = %235
  %247 = load %struct.atp*, %struct.atp** %8, align 8
  %248 = getelementptr inbounds %struct.atp, %struct.atp* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %14, align 4
  %255 = mul nsw i32 %253, %254
  %256 = load i32, i32* %17, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %17, align 4
  %258 = load %struct.atp*, %struct.atp** %8, align 8
  %259 = getelementptr inbounds %struct.atp, %struct.atp* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %14, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %18, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %18, align 4
  br label %267

267:                                              ; preds = %246, %235
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  br label %230

271:                                              ; preds = %230
  %272 = load i32, i32* %18, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %271
  %275 = load i32, i32* %18, align 4
  %276 = load i32, i32* @ATP_SCALE, align 4
  %277 = ashr i32 %275, %276
  %278 = load i32*, i32** %12, align 8
  store i32 %277, i32* %278, align 4
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* %11, align 4
  %281 = mul nsw i32 %279, %280
  %282 = load i32, i32* %18, align 4
  %283 = sdiv i32 %281, %282
  store i32 %283, i32* %7, align 4
  br label %285

284:                                              ; preds = %271
  store i32 0, i32* %7, align 4
  br label %285

285:                                              ; preds = %284, %274, %96
  %286 = load i32, i32* %7, align 4
  ret i32 %286
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
