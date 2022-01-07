; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_ycbcr_to_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_ycbcr_to_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i64, i32 }

@ycbcr_to_color.bt601 = internal constant [3 x [3 x i32]] [[3 x i32] [i32 4751, i32 0, i32 6512], [3 x i32] [i32 4751, i32 -1597, i32 -3316], [3 x i32] [i32 4751, i32 8230, i32 0]], align 16
@ycbcr_to_color.bt601_full = internal constant [3 x [3 x i32]] [[3 x i32] [i32 4080, i32 0, i32 5720], [3 x i32] [i32 4080, i32 -1403, i32 -2913], [3 x i32] [i32 4080, i32 7230, i32 0]], align 16
@ycbcr_to_color.rec709 = internal constant [3 x [3 x i32]] [[3 x i32] [i32 4751, i32 0, i32 7314], [3 x i32] [i32 4751, i32 -869, i32 -2173], [3 x i32] [i32 4751, i32 8619, i32 0]], align 16
@ycbcr_to_color.rec709_full = internal constant [3 x [3 x i32]] [[3 x i32] [i32 4080, i32 0, i32 6425], [3 x i32] [i32 4080, i32 -763, i32 -1909], [3 x i32] [i32 4080, i32 7571, i32 0]], align 16
@ycbcr_to_color.smpte240m = internal constant [3 x [3 x i32]] [[3 x i32] [i32 4751, i32 0, i32 7318], [3 x i32] [i32 4751, i32 -1045, i32 -2213], [3 x i32] [i32 4751, i32 8486, i32 0]], align 16
@ycbcr_to_color.smpte240m_full = internal constant [3 x [3 x i32]] [[3 x i32] [i32 4080, i32 0, i32 6428], [3 x i32] [i32 4080, i32 -918, i32 -1944], [3 x i32] [i32 4080, i32 7454, i32 0]], align 16
@ycbcr_to_color.bt2020 = internal constant [3 x [3 x i32]] [[3 x i32] [i32 4751, i32 0, i32 6849], [3 x i32] [i32 4751, i32 -764, i32 -2653], [3 x i32] [i32 4751, i32 8738, i32 0]], align 16
@ycbcr_to_color.bt2020_full = internal constant [3 x [3 x i32]] [[3 x i32] [i32 4080, i32 0, i32 6016], [3 x i32] [i32 4080, i32 -671, i32 -2330], [3 x i32] [i32 4080, i32 7676, i32 0]], align 16
@ycbcr_to_color.bt2020c = internal constant [4 x i32] [i32 9012, i32 7346, i32 7981, i32 4615], align 16
@ycbcr_to_color.bt2020c_full = internal constant [4 x i32] [i32 7917, i32 6453, i32 7011, i32 4054], align 16
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*, i32, i32, i32, i32*, i32*, i32*)* @ycbcr_to_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ycbcr_to_color(%struct.tpg_data* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.tpg_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load %struct.tpg_data*, %struct.tpg_data** %8, align 8
  %23 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_QUANTIZATION_FULL_RANGE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 16
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 4080, i32 4751
  store i32 %35, i32* %17, align 4
  %36 = load %struct.tpg_data*, %struct.tpg_data** %8, align 8
  %37 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %213 [
    i32 134, label %39
    i32 129, label %53
    i32 128, label %61
    i32 132, label %69
    i32 131, label %83
    i32 130, label %198
    i32 133, label %212
  ]

39:                                               ; preds = %7
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @ycbcr_to_color.bt601_full, i64 0, i64 0), [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @ycbcr_to_color.bt601, i64 0, i64 0)
  %44 = bitcast [3 x i32]* %43 to i32**
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @ycbcr2rgb(i32** %44, i32 %45, i32 %46, i32 %47, i32 %48, i32* %49, i32* %50, i32* %51)
  br label %227

53:                                               ; preds = %7
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @ycbcr2rgb(i32** bitcast ([3 x [3 x i32]]* @ycbcr_to_color.bt601 to i32**), i32 %54, i32 %55, i32 %56, i32 16, i32* %57, i32* %58, i32* %59)
  br label %227

61:                                               ; preds = %7
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @ycbcr2rgb(i32** bitcast ([3 x [3 x i32]]* @ycbcr_to_color.rec709 to i32**), i32 %62, i32 %63, i32 %64, i32 16, i32* %65, i32* %66, i32* %67)
  br label %227

69:                                               ; preds = %7
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @ycbcr_to_color.bt2020_full, i64 0, i64 0), [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @ycbcr_to_color.bt2020, i64 0, i64 0)
  %74 = bitcast [3 x i32]* %73 to i32**
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @ycbcr2rgb(i32** %74, i32 %75, i32 %76, i32 %77, i32 %78, i32* %79, i32* %80, i32* %81)
  br label %227

83:                                               ; preds = %7
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 256
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 2048
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 2048
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %83
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ycbcr_to_color.bt2020c_full, i64 0, i64 0), align 16
  br label %106

104:                                              ; preds = %96
  %105 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ycbcr_to_color.bt2020c, i64 0, i64 0), align 16
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %99, %109
  %111 = load i32*, i32** %14, align 8
  store i32 %110, i32* %111, align 4
  br label %128

112:                                              ; preds = %83
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %9, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ycbcr_to_color.bt2020c_full, i64 0, i64 1), align 4
  br label %122

120:                                              ; preds = %112
  %121 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ycbcr_to_color.bt2020c, i64 0, i64 1), align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 %123, %124
  %126 = add nsw i32 %115, %125
  %127 = load i32*, i32** %14, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %106
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 12
  %132 = load i32*, i32** %14, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp sle i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %128
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ycbcr_to_color.bt2020c_full, i64 0, i64 2), align 8
  br label %145

143:                                              ; preds = %135
  %144 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ycbcr_to_color.bt2020c, i64 0, i64 2), align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = load i32, i32* %11, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %138, %148
  %150 = load i32*, i32** %12, align 8
  store i32 %149, i32* %150, align 4
  br label %167

151:                                              ; preds = %128
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %9, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ycbcr_to_color.bt2020c_full, i64 0, i64 3), align 4
  br label %161

159:                                              ; preds = %151
  %160 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ycbcr_to_color.bt2020c, i64 0, i64 3), align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = load i32, i32* %11, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %154, %164
  %166 = load i32*, i32** %12, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %145
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %169, 12
  %171 = load i32*, i32** %12, align 8
  store i32 %170, i32* %171, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @rec709_to_linear(i32 %173)
  store i32 %174, i32* %18, align 4
  %175 = load i32*, i32** %14, align 8
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @rec709_to_linear(i32 %176)
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %9, align 4
  %179 = mul nsw i32 %178, 255
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 255, i32 219
  %184 = sdiv i32 %179, %183
  %185 = call i32 @rec709_to_linear(i32 %184)
  store i32 %185, i32* %21, align 4
  %186 = load i32, i32* %21, align 4
  %187 = mul nsw i32 6018, %186
  %188 = load i32, i32* %18, align 4
  %189 = mul nsw i32 1581, %188
  %190 = sub nsw i32 %187, %189
  %191 = load i32, i32* %20, align 4
  %192 = mul nsw i32 357, %191
  %193 = sub nsw i32 %190, %192
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* %19, align 4
  %195 = ashr i32 %194, 12
  %196 = call i32 @linear_to_rec709(i32 %195)
  %197 = load i32*, i32** %13, align 8
  store i32 %196, i32* %197, align 4
  br label %227

198:                                              ; preds = %7
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @ycbcr_to_color.smpte240m_full, i64 0, i64 0), [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @ycbcr_to_color.smpte240m, i64 0, i64 0)
  %203 = bitcast [3 x i32]* %202 to i32**
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32*, i32** %12, align 8
  %209 = load i32*, i32** %13, align 8
  %210 = load i32*, i32** %14, align 8
  %211 = call i32 @ycbcr2rgb(i32** %203, i32 %204, i32 %205, i32 %206, i32 %207, i32* %208, i32* %209, i32* %210)
  br label %227

212:                                              ; preds = %7
  br label %213

213:                                              ; preds = %7, %212
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @ycbcr_to_color.rec709_full, i64 0, i64 0), [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @ycbcr_to_color.rec709, i64 0, i64 0)
  %218 = bitcast [3 x i32]* %217 to i32**
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32*, i32** %12, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = load i32*, i32** %14, align 8
  %226 = call i32 @ycbcr2rgb(i32** %218, i32 %219, i32 %220, i32 %221, i32 %222, i32* %223, i32* %224, i32* %225)
  br label %227

227:                                              ; preds = %213, %198, %167, %69, %61, %53, %39
  ret void
}

declare dso_local i32 @ycbcr2rgb(i32**, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @rec709_to_linear(i32) #1

declare dso_local i32 @linear_to_rec709(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
