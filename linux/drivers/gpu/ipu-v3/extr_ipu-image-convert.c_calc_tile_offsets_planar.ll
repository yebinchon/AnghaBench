; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_calc_tile_offsets_planar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_calc_tile_offsets_planar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_ctx = type { %struct.ipu_image_convert_chan* }
%struct.ipu_image_convert_chan = type { i32, %struct.ipu_image_convert_priv* }
%struct.ipu_image_convert_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ipu_image_convert_image = type { i32, i32, i32, i64, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.ipu_image_pixfmt* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ipu_image_pixfmt = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [65 x i8] c"task %u: ctx %p: %s@[%d,%d]: y_off %08x, u_off %08x, v_off %08x\0A\00", align 1
@IMAGE_CONVERT_IN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_image*)* @calc_tile_offsets_planar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_tile_offsets_planar(%struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_image_convert_ctx*, align 8
  %5 = alloca %struct.ipu_image_convert_image*, align 8
  %6 = alloca %struct.ipu_image_convert_chan*, align 8
  %7 = alloca %struct.ipu_image_convert_priv*, align 8
  %8 = alloca %struct.ipu_image_pixfmt*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_ctx** %4, align 8
  store %struct.ipu_image_convert_image* %1, %struct.ipu_image_convert_image** %5, align 8
  %27 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %27, i32 0, i32 0
  %29 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %28, align 8
  store %struct.ipu_image_convert_chan* %29, %struct.ipu_image_convert_chan** %6, align 8
  %30 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %31 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %30, i32 0, i32 1
  %32 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %31, align 8
  store %struct.ipu_image_convert_priv* %32, %struct.ipu_image_convert_priv** %7, align 8
  %33 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %34 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %33, i32 0, i32 6
  %35 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %34, align 8
  store %struct.ipu_image_pixfmt* %35, %struct.ipu_image_pixfmt** %8, align 8
  store i32 0, i32* %11, align 4
  %36 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %37 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %42 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %46 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %44, %47
  store i32 %48, i32* %15, align 4
  %49 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %50 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %2
  %54 = load i32, i32* %15, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %53, %2
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %25, align 4
  %60 = load i32, i32* %25, align 4
  %61 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %62 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %65 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sdiv i32 %60, %67
  store i32 %68, i32* %26, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %219, %56
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %72 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %222

75:                                               ; preds = %69
  %76 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %77 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %76, i32 0, i32 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %91 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %89, %92
  store i32 %93, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %215, %75
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %97 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %218

100:                                              ; preds = %94
  %101 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %102 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %111 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %109, %112
  store i32 %113, i32* %17, align 4
  %114 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %115 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %100
  %119 = load i32, i32* %17, align 4
  %120 = mul nsw i32 %119, 2
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %118, %100
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %23, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %24, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %25, align 4
  %129 = load i32, i32* %24, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %130, %131
  store i32 %132, i32* %19, align 4
  %133 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %134 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %121
  br label %142

138:                                              ; preds = %121
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %26, align 4
  %141 = add nsw i32 %139, %140
  br label %142

142:                                              ; preds = %138, %137
  %143 = phi i32 [ 0, %137 ], [ %141, %138 ]
  store i32 %143, i32* %20, align 4
  %144 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %145 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* %19, align 4
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %20, align 4
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %21, align 4
  store i32 %151, i32* %20, align 4
  br label %152

152:                                              ; preds = %148, %142
  %153 = load i32, i32* %24, align 4
  %154 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %155 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %154, i32 0, i32 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i32 %153, i32* %160, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %163 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %162, i32 0, i32 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  store i32 %161, i32* %168, align 4
  %169 = load i32, i32* %20, align 4
  %170 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %171 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %170, i32 0, i32 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %11, align 4
  %175 = zext i32 %173 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 4
  store i32 %169, i32* %177, align 4
  %178 = load i32, i32* %24, align 4
  %179 = and i32 %178, 7
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %152
  %182 = load i32, i32* %19, align 4
  %183 = and i32 %182, 7
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %20, align 4
  %187 = and i32 %186, 7
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %214

189:                                              ; preds = %185, %181, %152
  %190 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %7, align 8
  %191 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %190, i32 0, i32 0
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %196 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %199 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %200 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @IMAGE_CONVERT_IN, align 8
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %20, align 4
  %211 = call i32 @dev_err(i32 %194, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %197, %struct.ipu_image_convert_ctx* %198, i8* %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %223

214:                                              ; preds = %185
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %10, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %10, align 4
  br label %94

218:                                              ; preds = %94
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %9, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %69

222:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %189
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @dev_err(i32, i8*, i32, %struct.ipu_image_convert_ctx*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
