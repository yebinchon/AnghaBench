; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_dump_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_dump_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_ctx = type { %struct.ipu_image_convert_chan* }
%struct.ipu_image_convert_chan = type { i32, %struct.ipu_image_convert_priv* }
%struct.ipu_image_convert_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ipu_image_convert_image = type { i64, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"task %u: ctx %p: %s format: %dx%d (%dx%d tiles), %c%c%c%c\0A\00", align 1
@IMAGE_CONVERT_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_image*)* @dump_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_format(%struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_image* %1) #0 {
  %3 = alloca %struct.ipu_image_convert_ctx*, align 8
  %4 = alloca %struct.ipu_image_convert_image*, align 8
  %5 = alloca %struct.ipu_image_convert_chan*, align 8
  %6 = alloca %struct.ipu_image_convert_priv*, align 8
  store %struct.ipu_image_convert_ctx* %0, %struct.ipu_image_convert_ctx** %3, align 8
  store %struct.ipu_image_convert_image* %1, %struct.ipu_image_convert_image** %4, align 8
  %7 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %7, i32 0, i32 0
  %9 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  store %struct.ipu_image_convert_chan* %9, %struct.ipu_image_convert_chan** %5, align 8
  %10 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %11 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %10, i32 0, i32 1
  %12 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %11, align 8
  store %struct.ipu_image_convert_priv* %12, %struct.ipu_image_convert_priv** %6, align 8
  %13 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %6, align 8
  %14 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %5, align 8
  %19 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %3, align 8
  %22 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %23 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IMAGE_CONVERT_OUT, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %29 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %30 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %35 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %40 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %43 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %46 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %52 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 255
  %58 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %59 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = load %struct.ipu_image_convert_image*, %struct.ipu_image_convert_image** %4, align 8
  %66 = getelementptr inbounds %struct.ipu_image_convert_image, %struct.ipu_image_convert_image* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 24
  %71 = and i32 %70, 255
  %72 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.ipu_image_convert_ctx* %21, i8* %28, i32 %33, i32 %38, i32 %41, i32 %44, i32 %50, i32 %57, i32 %64, i32 %71)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.ipu_image_convert_ctx*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
