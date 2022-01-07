; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_color_to_ycbcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_color_to_ycbcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i64, i32 }

@color_to_ycbcr.bt601 = internal constant [3 x [3 x i32]] [[3 x i32] [i32 16763, i32 32910, i32 6391], [3 x i32] [i32 -9673, i32 -18997, i32 28672], [3 x i32] [i32 28672, i32 -24009, i32 -4661]], align 16
@color_to_ycbcr.bt601_full = internal constant [3 x [3 x i32]] [[3 x i32] [i32 19519, i32 38319, i32 7442], [3 x i32] [i32 -11012, i32 -21626, i32 32640], [3 x i32] [i32 32640, i32 -27332, i32 -5306]], align 16
@color_to_ycbcr.rec709 = internal constant [3 x [3 x i32]] [[3 x i32] [i32 11919, i32 40097, i32 4048], [3 x i32] [i32 -6571, i32 -22099, i32 28672], [3 x i32] [i32 28672, i32 -26045, i32 -2625]], align 16
@color_to_ycbcr.rec709_full = internal constant [3 x [3 x i32]] [[3 x i32] [i32 13879, i32 46688, i32 4713], [3 x i32] [i32 -7480, i32 -25158, i32 32640], [3 x i32] [i32 32640, i32 -29649, i32 -2989]], align 16
@color_to_ycbcr.smpte240m = internal constant [3 x [3 x i32]] [[3 x i32] [i32 11886, i32 39301, i32 4878], [3 x i32] [i32 -6651, i32 -22019, i32 28672], [3 x i32] [i32 28672, i32 -25517, i32 -3153]], align 16
@color_to_ycbcr.smpte240m_full = internal constant [3 x [3 x i32]] [[3 x i32] [i32 13839, i32 45761, i32 5679], [3 x i32] [i32 -7571, i32 -25067, i32 32640], [3 x i32] [i32 32640, i32 -29049, i32 -3589]], align 16
@color_to_ycbcr.bt2020 = internal constant [3 x [3 x i32]] [[3 x i32] [i32 14728, i32 38011, i32 3325], [3 x i32] [i32 -8004, i32 -20666, i32 28672], [3 x i32] [i32 28672, i32 -26366, i32 -2304]], align 16
@color_to_ycbcr.bt2020_full = internal constant [3 x [3 x i32]] [[3 x i32] [i32 17149, i32 44260, i32 3871], [3 x i32] [i32 -9112, i32 -23526, i32 32640], [3 x i32] [i32 32640, i32 -30015, i32 -2623]], align 16
@color_to_ycbcr.bt2020c = internal constant [4 x i32] [i32 29553, i32 36257, i32 33371, i32 57713], align 16
@color_to_ycbcr.bt2020c_full = internal constant [4 x i32] [i32 33643, i32 41275, i32 37989, i32 65700], align 16
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*, i32, i32, i32, i32*, i32*, i32*)* @color_to_ycbcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_to_ycbcr(%struct.tpg_data* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
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
  store %struct.tpg_data* %0, %struct.tpg_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load %struct.tpg_data*, %struct.tpg_data** %8, align 8
  %20 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_QUANTIZATION_FULL_RANGE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 16
  store i32 %28, i32* %16, align 4
  %29 = load %struct.tpg_data*, %struct.tpg_data** %8, align 8
  %30 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %190 [
    i32 134, label %32
    i32 129, label %46
    i32 128, label %54
    i32 132, label %62
    i32 131, label %76
    i32 130, label %175
    i32 133, label %189
  ]

32:                                               ; preds = %7
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @color_to_ycbcr.bt601_full, i64 0, i64 0), [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @color_to_ycbcr.bt601, i64 0, i64 0)
  %37 = bitcast [3 x i32]* %36 to i32**
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @rgb2ycbcr(i32** %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %42, i32* %43, i32* %44)
  br label %204

46:                                               ; preds = %7
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @rgb2ycbcr(i32** bitcast ([3 x [3 x i32]]* @color_to_ycbcr.bt601 to i32**), i32 %47, i32 %48, i32 %49, i32 16, i32* %50, i32* %51, i32* %52)
  br label %204

54:                                               ; preds = %7
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @rgb2ycbcr(i32** bitcast ([3 x [3 x i32]]* @color_to_ycbcr.rec709 to i32**), i32 %55, i32 %56, i32 %57, i32 16, i32* %58, i32* %59, i32* %60)
  br label %204

62:                                               ; preds = %7
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @color_to_ycbcr.bt2020_full, i64 0, i64 0), [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @color_to_ycbcr.bt2020, i64 0, i64 0)
  %67 = bitcast [3 x i32]* %66 to i32**
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @rgb2ycbcr(i32** %67, i32 %68, i32 %69, i32 %70, i32 %71, i32* %72, i32* %73, i32* %74)
  br label %204

76:                                               ; preds = %7
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @rec709_to_linear(i32 %77)
  %79 = mul nsw i32 17149, %78
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @rec709_to_linear(i32 %80)
  %82 = mul nsw i32 44260, %81
  %83 = add nsw i32 %79, %82
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @rec709_to_linear(i32 %84)
  %86 = mul nsw i32 3871, %85
  %87 = add nsw i32 %83, %86
  %88 = ashr i32 %87, 16
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @linear_to_rec709(i32 %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %76
  %94 = load i32, i32* %18, align 4
  br label %100

95:                                               ; preds = %76
  %96 = load i32, i32* %18, align 4
  %97 = mul nsw i32 %96, 219
  %98 = sdiv i32 %97, 255
  %99 = add nsw i32 %98, 256
  br label %100

100:                                              ; preds = %95, %93
  %101 = phi i32 [ %94, %93 ], [ %99, %95 ]
  %102 = load i32*, i32** %12, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %18, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @color_to_ycbcr.bt2020c_full, i64 0, i64 0), align 16
  br label %116

114:                                              ; preds = %106
  %115 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @color_to_ycbcr.bt2020c, i64 0, i64 0), align 16
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = mul nsw i32 %109, %117
  %119 = ashr i32 %118, 16
  %120 = add nsw i32 %119, 2048
  %121 = load i32*, i32** %13, align 8
  store i32 %120, i32* %121, align 4
  br label %138

122:                                              ; preds = %100
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %18, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @color_to_ycbcr.bt2020c_full, i64 0, i64 1), align 4
  br label %132

130:                                              ; preds = %122
  %131 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @color_to_ycbcr.bt2020c, i64 0, i64 1), align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = mul nsw i32 %125, %133
  %135 = ashr i32 %134, 16
  %136 = add nsw i32 %135, 2048
  %137 = load i32*, i32** %13, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %132, %116
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %138
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %18, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @color_to_ycbcr.bt2020c_full, i64 0, i64 2), align 8
  br label %152

150:                                              ; preds = %142
  %151 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @color_to_ycbcr.bt2020c, i64 0, i64 2), align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = mul nsw i32 %145, %153
  %155 = ashr i32 %154, 16
  %156 = add nsw i32 %155, 2048
  %157 = load i32*, i32** %14, align 8
  store i32 %156, i32* %157, align 4
  br label %174

158:                                              ; preds = %138
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %18, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @color_to_ycbcr.bt2020c_full, i64 0, i64 3), align 4
  br label %168

166:                                              ; preds = %158
  %167 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @color_to_ycbcr.bt2020c, i64 0, i64 3), align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = mul nsw i32 %161, %169
  %171 = ashr i32 %170, 16
  %172 = add nsw i32 %171, 2048
  %173 = load i32*, i32** %14, align 8
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %168, %152
  br label %204

175:                                              ; preds = %7
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @color_to_ycbcr.smpte240m_full, i64 0, i64 0), [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @color_to_ycbcr.smpte240m, i64 0, i64 0)
  %180 = bitcast [3 x i32]* %179 to i32**
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load i32*, i32** %12, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load i32*, i32** %14, align 8
  %188 = call i32 @rgb2ycbcr(i32** %180, i32 %181, i32 %182, i32 %183, i32 %184, i32* %185, i32* %186, i32* %187)
  br label %204

189:                                              ; preds = %7
  br label %190

190:                                              ; preds = %7, %189
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @color_to_ycbcr.rec709_full, i64 0, i64 0), [3 x i32]* getelementptr inbounds ([3 x [3 x i32]], [3 x [3 x i32]]* @color_to_ycbcr.rec709, i64 0, i64 0)
  %195 = bitcast [3 x i32]* %194 to i32**
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %16, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = load i32*, i32** %13, align 8
  %202 = load i32*, i32** %14, align 8
  %203 = call i32 @rgb2ycbcr(i32** %195, i32 %196, i32 %197, i32 %198, i32 %199, i32* %200, i32* %201, i32* %202)
  br label %204

204:                                              ; preds = %190, %175, %174, %62, %54, %46, %32
  ret void
}

declare dso_local i32 @rgb2ycbcr(i32**, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @rec709_to_linear(i32) #1

declare dso_local i32 @linear_to_rec709(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
