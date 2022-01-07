; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_blowfish.c_dsp_bf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_blowfish.c_dsp_bf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp = type { i32*, i32, i32, i64, i64, i64, i32*, i64, i64 }

@dsp_silence = common dso_local global i32 0, align 4
@bf_sbox = common dso_local global i32* null, align 8
@bf_pbox = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsp_bf_init(%struct.dsp* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsp*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.dsp* %0, %struct.dsp** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.dsp*, %struct.dsp** %5, align 8
  %16 = getelementptr inbounds %struct.dsp, %struct.dsp* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %13, align 8
  %19 = load %struct.dsp*, %struct.dsp** %5, align 8
  %20 = getelementptr inbounds %struct.dsp, %struct.dsp* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %14, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 56
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %3
  store i32 1, i32* %4, align 4
  br label %255

29:                                               ; preds = %25
  store i16 0, i16* %8, align 2
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i16, i16* %8, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp slt i32 %32, 9
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.dsp*, %struct.dsp** %5, align 8
  %36 = getelementptr inbounds %struct.dsp, %struct.dsp* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i16, i16* %8, align 2
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 255, i32* %40, align 4
  %41 = load i32, i32* @dsp_silence, align 4
  %42 = load %struct.dsp*, %struct.dsp** %5, align 8
  %43 = getelementptr inbounds %struct.dsp, %struct.dsp* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = load i16, i16* %8, align 2
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load i16, i16* %8, align 2
  %49 = add i16 %48, 1
  store i16 %49, i16* %8, align 2
  br label %30

50:                                               ; preds = %30
  %51 = load %struct.dsp*, %struct.dsp** %5, align 8
  %52 = getelementptr inbounds %struct.dsp, %struct.dsp* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.dsp*, %struct.dsp** %5, align 8
  %54 = getelementptr inbounds %struct.dsp, %struct.dsp* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.dsp*, %struct.dsp** %5, align 8
  %56 = getelementptr inbounds %struct.dsp, %struct.dsp* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.dsp*, %struct.dsp** %5, align 8
  %58 = getelementptr inbounds %struct.dsp, %struct.dsp* %57, i32 0, i32 1
  store i32 511, i32* %58, align 8
  %59 = load %struct.dsp*, %struct.dsp** %5, align 8
  %60 = getelementptr inbounds %struct.dsp, %struct.dsp* %59, i32 0, i32 2
  store i32 1, i32* %60, align 4
  store i16 0, i16* %8, align 2
  store i16 0, i16* %10, align 2
  br label %61

61:                                               ; preds = %86, %50
  %62 = load i16, i16* %8, align 2
  %63 = sext i16 %62 to i32
  %64 = icmp slt i32 %63, 256
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  store i16 0, i16* %9, align 2
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i16, i16* %9, align 2
  %68 = sext i16 %67 to i32
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i32*, i32** @bf_sbox, align 8
  %72 = load i16, i16* %10, align 2
  %73 = sext i16 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = load i16, i16* %10, align 2
  %78 = sext i16 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i16, i16* %9, align 2
  %82 = add i16 %81, 1
  store i16 %82, i16* %9, align 2
  %83 = load i16, i16* %10, align 2
  %84 = add i16 %83, 1
  store i16 %84, i16* %10, align 2
  br label %66

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85
  %87 = load i16, i16* %8, align 2
  %88 = add i16 %87, 1
  store i16 %88, i16* %8, align 2
  br label %61

89:                                               ; preds = %61
  store i16 0, i16* %8, align 2
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i16, i16* %8, align 2
  %92 = sext i16 %91 to i32
  %93 = icmp slt i32 %92, 18
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i32*, i32** @bf_pbox, align 8
  %96 = load i16, i16* %8, align 2
  %97 = sext i16 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = load i16, i16* %8, align 2
  %102 = sext i16 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %94
  %105 = load i16, i16* %8, align 2
  %106 = add i16 %105, 1
  store i16 %106, i16* %8, align 2
  br label %90

107:                                              ; preds = %90
  store i16 0, i16* %9, align 2
  store i16 0, i16* %8, align 2
  br label %108

108:                                              ; preds = %172, %107
  %109 = load i16, i16* %8, align 2
  %110 = sext i16 %109 to i32
  %111 = icmp slt i32 %110, 18
  br i1 %111, label %112, label %175

112:                                              ; preds = %108
  %113 = load i64*, i64** %6, align 8
  %114 = load i16, i16* %9, align 2
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = shl i32 %118, 24
  %120 = load i64*, i64** %6, align 8
  %121 = load i16, i16* %9, align 2
  %122 = sext i16 %121 to i32
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %7, align 4
  %125 = srem i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %120, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = shl i32 %129, 16
  %131 = or i32 %119, %130
  %132 = load i64*, i64** %6, align 8
  %133 = load i16, i16* %9, align 2
  %134 = sext i16 %133 to i32
  %135 = add nsw i32 %134, 2
  %136 = load i32, i32* %7, align 4
  %137 = srem i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %132, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = shl i32 %141, 8
  %143 = or i32 %131, %142
  %144 = load i64*, i64** %6, align 8
  %145 = load i16, i16* %9, align 2
  %146 = sext i16 %145 to i32
  %147 = add nsw i32 %146, 3
  %148 = load i32, i32* %7, align 4
  %149 = srem i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %144, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = or i32 %143, %153
  store i32 %154, i32* %12, align 4
  %155 = load i32*, i32** %13, align 8
  %156 = load i16, i16* %8, align 2
  %157 = sext i16 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %12, align 4
  %161 = xor i32 %159, %160
  %162 = load i32*, i32** %13, align 8
  %163 = load i16, i16* %8, align 2
  %164 = sext i16 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %161, i32* %165, align 4
  %166 = load i16, i16* %9, align 2
  %167 = sext i16 %166 to i32
  %168 = add nsw i32 %167, 4
  %169 = load i32, i32* %7, align 4
  %170 = srem i32 %168, %169
  %171 = trunc i32 %170 to i16
  store i16 %171, i16* %9, align 2
  br label %172

172:                                              ; preds = %112
  %173 = load i16, i16* %8, align 2
  %174 = add i16 %173, 1
  store i16 %174, i16* %8, align 2
  br label %108

175:                                              ; preds = %108
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %176, align 4
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %177, align 4
  store i16 0, i16* %8, align 2
  br label %178

178:                                              ; preds = %202, %175
  %179 = load i16, i16* %8, align 2
  %180 = sext i16 %179 to i32
  %181 = icmp slt i32 %180, 18
  br i1 %181, label %182, label %207

182:                                              ; preds = %178
  %183 = load i32*, i32** %13, align 8
  %184 = load i32*, i32** %14, align 8
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %187 = call i32 @encrypt_block(i32* %183, i32* %184, i32* %185, i32* %186)
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %13, align 8
  %191 = load i16, i16* %8, align 2
  %192 = sext i16 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %189, i32* %193, align 4
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %13, align 8
  %197 = load i16, i16* %8, align 2
  %198 = sext i16 %197 to i32
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  store i32 %195, i32* %201, align 4
  br label %202

202:                                              ; preds = %182
  %203 = load i16, i16* %8, align 2
  %204 = sext i16 %203 to i32
  %205 = add nsw i32 %204, 2
  %206 = trunc i32 %205 to i16
  store i16 %206, i16* %8, align 2
  br label %178

207:                                              ; preds = %178
  store i16 0, i16* %8, align 2
  br label %208

208:                                              ; preds = %251, %207
  %209 = load i16, i16* %8, align 2
  %210 = sext i16 %209 to i32
  %211 = icmp slt i32 %210, 4
  br i1 %211, label %212, label %254

212:                                              ; preds = %208
  store i16 0, i16* %9, align 2
  %213 = load i16, i16* %8, align 2
  %214 = sext i16 %213 to i32
  %215 = mul nsw i32 %214, 256
  %216 = trunc i32 %215 to i16
  store i16 %216, i16* %10, align 2
  br label %217

217:                                              ; preds = %241, %212
  %218 = load i16, i16* %9, align 2
  %219 = sext i16 %218 to i32
  %220 = icmp slt i32 %219, 256
  br i1 %220, label %221, label %250

221:                                              ; preds = %217
  %222 = load i32*, i32** %13, align 8
  %223 = load i32*, i32** %14, align 8
  %224 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %226 = call i32 @encrypt_block(i32* %222, i32* %223, i32* %224, i32* %225)
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %14, align 8
  %230 = load i16, i16* %10, align 2
  %231 = sext i16 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %228, i32* %232, align 4
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %14, align 8
  %236 = load i16, i16* %10, align 2
  %237 = sext i16 %236 to i32
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %235, i64 %239
  store i32 %234, i32* %240, align 4
  br label %241

241:                                              ; preds = %221
  %242 = load i16, i16* %9, align 2
  %243 = sext i16 %242 to i32
  %244 = add nsw i32 %243, 2
  %245 = trunc i32 %244 to i16
  store i16 %245, i16* %9, align 2
  %246 = load i16, i16* %10, align 2
  %247 = sext i16 %246 to i32
  %248 = add nsw i32 %247, 2
  %249 = trunc i32 %248 to i16
  store i16 %249, i16* %10, align 2
  br label %217

250:                                              ; preds = %217
  br label %251

251:                                              ; preds = %250
  %252 = load i16, i16* %8, align 2
  %253 = add i16 %252, 1
  store i16 %253, i16* %8, align 2
  br label %208

254:                                              ; preds = %208
  store i32 0, i32* %4, align 4
  br label %255

255:                                              ; preds = %254, %28
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i32 @encrypt_block(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
