; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_compute_blocknr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_compute_blocknr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i32, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"md/raid:%s: compute_blocknr: map not correct\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raid5_compute_blocknr(%struct.stripe_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r5conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.stripe_head, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %23 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %22, i32 0, i32 4
  %24 = load %struct.r5conf*, %struct.r5conf** %23, align 8
  store %struct.r5conf* %24, %struct.r5conf** %8, align 8
  %25 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %26 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %30 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %46

42:                                               ; preds = %3
  %43 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %44 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %52 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %56 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @sector_div(i32 %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %67 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %280

71:                                               ; preds = %58
  %72 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %73 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %234 [
    i32 4, label %75
    i32 5, label %76
    i32 6, label %112
  ]

75:                                               ; preds = %71
  br label %234

76:                                               ; preds = %71
  %77 = load i32, i32* %14, align 4
  switch i32 %77, label %109 [
    i32 141, label %78
    i32 134, label %78
    i32 139, label %88
    i32 132, label %88
    i32 137, label %105
    i32 135, label %108
  ]

78:                                               ; preds = %76, %76
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %81 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %78
  br label %111

88:                                               ; preds = %76, %76
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %91 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %100 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %111

105:                                              ; preds = %76
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %111

108:                                              ; preds = %76
  br label %111

109:                                              ; preds = %76
  %110 = call i32 (...) @BUG()
  br label %111

111:                                              ; preds = %109, %108, %105, %98, %87
  br label %234

112:                                              ; preds = %71
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %115 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %280

119:                                              ; preds = %112
  %120 = load i32, i32* %14, align 4
  switch i32 %120, label %231 [
    i32 141, label %121
    i32 134, label %121
    i32 128, label %121
    i32 129, label %121
    i32 139, label %142
    i32 132, label %142
    i32 137, label %170
    i32 135, label %173
    i32 130, label %174
    i32 140, label %200
    i32 133, label %200
    i32 138, label %210
    i32 131, label %210
    i32 136, label %228
  ]

121:                                              ; preds = %119, %119, %119, %119
  %122 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %123 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %6, align 4
  br label %141

131:                                              ; preds = %121
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %134 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %138, 2
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %137, %131
  br label %141

141:                                              ; preds = %140, %128
  br label %233

142:                                              ; preds = %119, %119
  %143 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %144 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %6, align 4
  br label %169

152:                                              ; preds = %142
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %155 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %152
  %163 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %164 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 2
  %167 = load i32, i32* %6, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %162, %149
  br label %233

170:                                              ; preds = %119
  %171 = load i32, i32* %6, align 4
  %172 = sub nsw i32 %171, 2
  store i32 %172, i32* %6, align 4
  br label %233

173:                                              ; preds = %119
  br label %233

174:                                              ; preds = %119
  %175 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %176 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %6, align 4
  br label %199

182:                                              ; preds = %174
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %185 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %188, %182
  %193 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %194 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %6, align 4
  %198 = sub nsw i32 %197, %196
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %192, %179
  br label %233

200:                                              ; preds = %119, %119
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %203 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp sgt i32 %201, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %206, %200
  br label %233

210:                                              ; preds = %119, %119
  %211 = load i32, i32* %6, align 4
  %212 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %213 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %216, %210
  %222 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %223 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  %226 = load i32, i32* %6, align 4
  %227 = sub nsw i32 %226, %225
  store i32 %227, i32* %6, align 4
  br label %233

228:                                              ; preds = %119
  %229 = load i32, i32* %6, align 4
  %230 = sub nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %233

231:                                              ; preds = %119
  %232 = call i32 (...) @BUG()
  br label %233

233:                                              ; preds = %231, %228, %221, %209, %199, %173, %170, %169, %141
  br label %234

234:                                              ; preds = %71, %233, %111, %75
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* %10, align 4
  %237 = mul nsw i32 %235, %236
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %237, %238
  store i32 %239, i32* %17, align 4
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %13, align 4
  %242 = mul nsw i32 %240, %241
  %243 = load i32, i32* %16, align 4
  %244 = add nsw i32 %242, %243
  store i32 %244, i32* %20, align 4
  %245 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @raid5_compute_sector(%struct.r5conf* %245, i32 %246, i32 %247, i32* %18, %struct.stripe_head* %21)
  store i32 %248, i32* %12, align 4
  %249 = load i32, i32* %12, align 4
  %250 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %251 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %249, %252
  br i1 %253, label %272, label %254

254:                                              ; preds = %234
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %19, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %272, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %262 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %260, %263
  br i1 %264, label %272, label %265

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %269 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %267, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %265, %258, %254, %234
  %273 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %274 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @mdname(i32 %275)
  %277 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %276)
  store i32 0, i32* %4, align 4
  br label %280

278:                                              ; preds = %265
  %279 = load i32, i32* %20, align 4
  store i32 %279, i32* %4, align 4
  br label %280

280:                                              ; preds = %278, %272, %118, %70
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, %struct.stripe_head*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mdname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
