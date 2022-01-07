; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_fill_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_fill_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_ctx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ipu_image_convert_priv* }
%struct.ipu_image_convert_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ipu_image_convert_image = type { i32, %struct.ipu_image, i32, %struct.TYPE_8__* }
%struct.ipu_image = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"pixelformat not supported for %s\0A\00", align 1
@IMAGE_CONVERT_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_image*, %struct.ipu_image*, i32)* @fill_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_image(%struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_image* %1, %struct.ipu_image* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_image_convert_ctx*, align 8
  %7 = alloca %struct.ipu_image_convert_image*, align 8
  %8 = alloca %struct.ipu_image*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipu_image_convert_priv*, align 8
  store %struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_ctx** %6, align 8
  store %struct.ipu_image_convert_image* %1, %struct.ipu_image_convert_image** %7, align 8
  store %struct.ipu_image* %2, %struct.ipu_image** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %14, align 8
  store %struct.ipu_image_convert_priv* %15, %struct.ipu_image_convert_priv** %10, align 8
  %16 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %17 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %16, i32 0, i32 1
  %18 = load %struct.ipu_image*, %struct.ipu_image** %8, align 8
  %19 = bitcast %struct.ipu_image* %17 to i8*
  %20 = bitcast %struct.ipu_image* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 12, i1 false)
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %23 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ipu_image*, %struct.ipu_image** %8, align 8
  %25 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_8__* @get_format(i32 %27)
  %29 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %30 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %29, i32 0, i32 3
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %32 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %31, i32 0, i32 3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %4
  %36 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %10, align 8
  %37 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @IMAGE_CONVERT_OUT, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %46 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %73

49:                                               ; preds = %4
  %50 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %51 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %58 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %63 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %72

64:                                               ; preds = %49
  %65 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %66 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %7, align 8
  %71 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %64, %56
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %35
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_8__* @get_format(i32) #2

declare dso_local i32 @dev_err(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
