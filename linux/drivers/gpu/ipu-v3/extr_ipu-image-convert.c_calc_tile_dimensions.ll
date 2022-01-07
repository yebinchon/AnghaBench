; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_calc_tile_dimensions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_calc_tile_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_ctx = type { i32, i32, i32, i64*, %struct.ipu_image_convert_chan* }
%struct.ipu_image_convert_chan = type { i32, %struct.ipu_image_convert_priv* }
%struct.ipu_image_convert_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipu_image_convert_image = type { i64, i32, %struct.TYPE_3__*, %struct.ipu_image_tile* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ipu_image_tile = type { i32, i32, i32, i32, i32, i32, i32 }

@IMAGE_CONVERT_IN = common dso_local global i64 0, align 8
@IMAGE_CONVERT_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"task %u: ctx %p: %s@[%u,%u]: %ux%u@%u,%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid %s tile size: %ux%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_image*)* @calc_tile_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_tile_dimensions(%struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_image_convert_ctx*, align 8
  %5 = alloca %struct.ipu_image_convert_image*, align 8
  %6 = alloca %struct.ipu_image_convert_chan*, align 8
  %7 = alloca %struct.ipu_image_convert_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipu_image_tile*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_ctx** %4, align 8
  store %struct.ipu_image_convert_image* %1, %struct.ipu_image_convert_image** %5, align 8
  %14 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %14, i32 0, i32 4
  %16 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %15, align 8
  store %struct.ipu_image_convert_chan* %16, %struct.ipu_image_convert_chan** %6, align 8
  %17 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %18 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %17, i32 0, i32 1
  %19 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %18, align 8
  store %struct.ipu_image_convert_priv* %19, %struct.ipu_image_convert_priv** %7, align 8
  store i32 1024, i32* %8, align 4
  store i32 1024, i32* %9, align 4
  %20 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %21 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IMAGE_CONVERT_IN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %25, %2
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %213, %36
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %216

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %46 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = udiv i32 %44, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %51 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = urem i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %55 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IMAGE_CONVERT_OUT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %43
  %60 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %61 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %60, i32 0, i32 3
  %62 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %61, align 8
  %63 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %62, i64 %69
  store %struct.ipu_image_tile* %70, %struct.ipu_image_tile** %11, align 8
  br label %78

71:                                               ; preds = %43
  %72 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %73 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %72, i32 0, i32 3
  %74 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %74, i64 %76
  store %struct.ipu_image_tile* %77, %struct.ipu_image_tile** %11, align 8
  br label %78

78:                                               ; preds = %71, %59
  %79 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %80 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %83 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %81, %86
  %88 = ashr i32 %87, 3
  %89 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %90 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %94 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %96 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %78
  %102 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %103 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %106 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %108 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %111 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  br label %137

112:                                              ; preds = %78
  %113 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %114 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %113, i32 0, i32 2
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %119 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = ashr i32 %121, 3
  %123 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %124 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %126 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %125, i32 0, i32 2
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %131 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = ashr i32 %133, 3
  %135 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %136 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %112, %101
  %138 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %7, align 8
  %139 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %144 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %147 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %148 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IMAGE_CONVERT_IN, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %157 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %160 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %163 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %166 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dev_dbg(i32 %142, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %145, %struct.ipu_image_convert_ctx* %146, i8* %153, i32 %154, i32 %155, i32 %158, i32 %161, i32 %164, i32 %167)
  %169 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %170 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %137
  %174 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %175 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ugt i32 %176, %177
  br i1 %178, label %190, label %179

179:                                              ; preds = %173
  %180 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %181 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %186 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ugt i32 %187, %188
  br i1 %189, label %190, label %212

190:                                              ; preds = %184, %179, %173, %137
  %191 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %7, align 8
  %192 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %197 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @IMAGE_CONVERT_IN, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %203 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %204 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ipu_image_tile*, %struct.ipu_image_tile** %11, align 8
  %207 = getelementptr inbounds %struct.ipu_image_tile, %struct.ipu_image_tile* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @dev_err(i32 %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %202, i32 %205, i32 %208)
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %3, align 4
  br label %217

212:                                              ; preds = %184
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %10, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %37

216:                                              ; preds = %37
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %190
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.ipu_image_convert_ctx*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
