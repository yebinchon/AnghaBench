; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_calc_tile_offsets_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_calc_tile_offsets_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_ctx = type { %struct.ipu_image_convert_chan* }
%struct.ipu_image_convert_chan = type { i32, %struct.ipu_image_convert_priv* }
%struct.ipu_image_convert_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipu_image_convert_image = type { i32, i32, i32, i64, %struct.TYPE_3__*, %struct.ipu_image_pixfmt* }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64 }
%struct.ipu_image_pixfmt = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"task %u: ctx %p: %s@[%d,%d]: phys %08x\0A\00", align 1
@IMAGE_CONVERT_IN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_image*)* @calc_tile_offsets_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_tile_offsets_packed(%struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_image* %1) #0 {
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
  store %struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_ctx** %4, align 8
  store %struct.ipu_image_convert_image* %1, %struct.ipu_image_convert_image** %5, align 8
  %17 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %17, i32 0, i32 0
  %19 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %18, align 8
  store %struct.ipu_image_convert_chan* %19, %struct.ipu_image_convert_chan** %6, align 8
  %20 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %21 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %20, i32 0, i32 1
  %22 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %21, align 8
  store %struct.ipu_image_convert_priv* %22, %struct.ipu_image_convert_priv** %7, align 8
  %23 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %24 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %23, i32 0, i32 5
  %25 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %24, align 8
  store %struct.ipu_image_pixfmt* %25, %struct.ipu_image_pixfmt** %8, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %27 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.ipu_image_pixfmt*, %struct.ipu_image_pixfmt** %8, align 8
  %30 = getelementptr inbounds %struct.ipu_image_pixfmt, %struct.ipu_image_pixfmt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %126, %2
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %35 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %129

38:                                               ; preds = %32
  %39 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %40 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %122, %38
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %52 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %125

55:                                               ; preds = %49
  %56 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %57 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %56, i32 0, i32 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %63, %64
  %66 = ashr i32 %65, 3
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %72 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %70, i32* %77, align 8
  %78 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %79 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %86 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %85, i32 0, i32 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %93, 7
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %55
  %97 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %7, align 8
  %98 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %103 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %4, align 8
  %106 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %5, align 8
  %107 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IMAGE_CONVERT_IN, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %104, %struct.ipu_image_convert_ctx* %105, i8* %112, i32 %113, i32 %114, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %130

121:                                              ; preds = %55
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %49

125:                                              ; preds = %49
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %32

129:                                              ; preds = %32
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %96
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @dev_err(i32, i8*, i32, %struct.ipu_image_convert_ctx*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
