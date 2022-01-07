; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_need_this_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_need_this_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i64, i64, i64, %struct.TYPE_4__*, i32, %struct.r5dev* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.r5dev = type { i32, i64, i64 }
%struct.stripe_head_state = type { i64*, i32, i32, i64, i64, i64 }

@R5_LOCKED = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_head*, %struct.stripe_head_state*, i32, i32)* @need_this_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_this_block(%struct.stripe_head* %0, %struct.stripe_head_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca %struct.stripe_head_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.r5dev*, align 8
  %11 = alloca [2 x %struct.r5dev*], align 16
  %12 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %6, align 8
  store %struct.stripe_head_state* %1, %struct.stripe_head_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %14 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %13, i32 0, i32 5
  %15 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %15, i64 %17
  store %struct.r5dev* %18, %struct.r5dev** %10, align 8
  %19 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 0
  %20 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %21 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %20, i32 0, i32 5
  %22 = load %struct.r5dev*, %struct.r5dev** %21, align 8
  %23 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %24 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %22, i64 %27
  store %struct.r5dev* %28, %struct.r5dev** %19, align 8
  %29 = getelementptr inbounds %struct.r5dev*, %struct.r5dev** %19, i64 1
  %30 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 5
  %32 = load %struct.r5dev*, %struct.r5dev** %31, align 8
  %33 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %34 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %32, i64 %37
  store %struct.r5dev* %38, %struct.r5dev** %29, align 8
  %39 = load i32, i32* @R5_LOCKED, align 4
  %40 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %41 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* @R5_UPTODATE, align 4
  %46 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %47 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %4
  store i32 0, i32* %5, align 4
  br label %259

51:                                               ; preds = %44
  %52 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %53 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %58 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* @R5_OVERWRITE, align 4
  %63 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %64 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %63, i32 0, i32 0
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61, %51
  store i32 1, i32* %5, align 4
  br label %259

68:                                               ; preds = %61, %56
  %69 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %70 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %68
  %74 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %75 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %80 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @want_replace(%struct.stripe_head* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %73, %68
  store i32 1, i32* %5, align 4
  br label %259

89:                                               ; preds = %83, %78
  %90 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %91 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 0
  %96 = load %struct.r5dev*, %struct.r5dev** %95, align 16
  %97 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %102 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %103, 2
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 1
  %107 = load %struct.r5dev*, %struct.r5dev** %106, align 8
  %108 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105, %94
  store i32 1, i32* %5, align 4
  br label %259

112:                                              ; preds = %105, %100
  %113 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %114 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %119 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117, %112
  store i32 0, i32* %5, align 4
  br label %259

123:                                              ; preds = %117
  %124 = load i32, i32* @R5_Insync, align 4
  %125 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %126 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %125, i32 0, i32 0
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %131 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %132 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %131, i32 0, i32 4
  %133 = call i64 @test_bit(i32 %130, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  store i32 0, i32* %5, align 4
  br label %259

136:                                              ; preds = %129, %123
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %176, %136
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %140 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 2
  br label %146

146:                                              ; preds = %143, %137
  %147 = phi i1 [ false, %137 ], [ %145, %143 ]
  br i1 %147, label %148, label %179

148:                                              ; preds = %146
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 %150
  %152 = load %struct.r5dev*, %struct.r5dev** %151, align 8
  %153 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %148
  %157 = load i32, i32* @R5_UPTODATE, align 4
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 %159
  %161 = load %struct.r5dev*, %struct.r5dev** %160, align 8
  %162 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %161, i32 0, i32 0
  %163 = call i64 @test_bit(i32 %157, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %156
  %166 = load i32, i32* @R5_OVERWRITE, align 4
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 %168
  %170 = load %struct.r5dev*, %struct.r5dev** %169, align 8
  %171 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %170, i32 0, i32 0
  %172 = call i64 @test_bit(i32 %166, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %165
  store i32 1, i32* %5, align 4
  br label %259

175:                                              ; preds = %165, %156, %148
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %137

179:                                              ; preds = %146
  %180 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %181 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %180, i32 0, i32 3
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 6
  br i1 %185, label %186, label %199

186:                                              ; preds = %179
  %187 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %188 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %191 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %190, i32 0, i32 3
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %189, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  store i32 0, i32* %5, align 4
  br label %259

199:                                              ; preds = %186, %179
  store i32 0, i32* %12, align 4
  br label %200

200:                                              ; preds = %255, %199
  %201 = load i32, i32* %12, align 4
  %202 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %203 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %207, 2
  br label %209

209:                                              ; preds = %206, %200
  %210 = phi i1 [ false, %200 ], [ %208, %206 ]
  br i1 %210, label %211, label %258

211:                                              ; preds = %209
  %212 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %213 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %220 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %218, %221
  br i1 %222, label %223, label %254

223:                                              ; preds = %211
  %224 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %225 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %224, i32 0, i32 0
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %232 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %230, %233
  br i1 %234, label %235, label %254

235:                                              ; preds = %223
  %236 = load i32, i32* @R5_UPTODATE, align 4
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 %238
  %240 = load %struct.r5dev*, %struct.r5dev** %239, align 8
  %241 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %240, i32 0, i32 0
  %242 = call i64 @test_bit(i32 %236, i32* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %235
  %245 = load i32, i32* @R5_OVERWRITE, align 4
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [2 x %struct.r5dev*], [2 x %struct.r5dev*]* %11, i64 0, i64 %247
  %249 = load %struct.r5dev*, %struct.r5dev** %248, align 8
  %250 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %249, i32 0, i32 0
  %251 = call i64 @test_bit(i32 %245, i32* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %244
  store i32 1, i32* %5, align 4
  br label %259

254:                                              ; preds = %244, %235, %223, %211
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %12, align 4
  br label %200

258:                                              ; preds = %209
  store i32 0, i32* %5, align 4
  br label %259

259:                                              ; preds = %258, %253, %198, %174, %135, %122, %111, %88, %67, %50
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @want_replace(%struct.stripe_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
