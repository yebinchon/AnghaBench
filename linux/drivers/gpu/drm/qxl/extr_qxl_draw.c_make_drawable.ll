; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_draw.c_make_drawable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_draw.c_make_drawable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.qxl_rect = type { i32 }
%struct.qxl_release = type { i32 }
%struct.qxl_drawable = type { i32, i32*, i32, i32, %struct.qxl_rect, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@QXL_EFFECT_OPAQUE = common dso_local global i32 0, align 4
@SPICE_CLIP_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*, i32, i32, %struct.qxl_rect*, %struct.qxl_release*)* @make_drawable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_drawable(%struct.qxl_device* %0, i32 %1, i32 %2, %struct.qxl_rect* %3, %struct.qxl_release* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qxl_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qxl_rect*, align 8
  %11 = alloca %struct.qxl_release*, align 8
  %12 = alloca %struct.qxl_drawable*, align 8
  %13 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.qxl_rect* %3, %struct.qxl_rect** %10, align 8
  store %struct.qxl_release* %4, %struct.qxl_release** %11, align 8
  %14 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %15 = load %struct.qxl_release*, %struct.qxl_release** %11, align 8
  %16 = call i64 @qxl_release_map(%struct.qxl_device* %14, %struct.qxl_release* %15)
  %17 = inttoptr i64 %16 to %struct.qxl_drawable*
  store %struct.qxl_drawable* %17, %struct.qxl_drawable** %12, align 8
  %18 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %19 = icmp ne %struct.qxl_drawable* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %86

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %26 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %29 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @QXL_EFFECT_OPAQUE, align 4
  %31 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %32 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %34 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %36 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %39 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %42 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %45 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @SPICE_CLIP_TYPE_NONE, align 4
  %48 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %49 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %61, %23
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %56 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 -1, i32* %60, align 4
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %51

64:                                               ; preds = %51
  %65 = load %struct.qxl_rect*, %struct.qxl_rect** %10, align 8
  %66 = icmp ne %struct.qxl_rect* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %69 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %68, i32 0, i32 4
  %70 = load %struct.qxl_rect*, %struct.qxl_rect** %10, align 8
  %71 = bitcast %struct.qxl_rect* %69 to i8*
  %72 = bitcast %struct.qxl_rect* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 4 %72, i64 4, i1 false)
  br label %73

73:                                               ; preds = %67, %64
  %74 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %75 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %80 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  %82 = load %struct.qxl_release*, %struct.qxl_release** %11, align 8
  %83 = load %struct.qxl_drawable*, %struct.qxl_drawable** %12, align 8
  %84 = getelementptr inbounds %struct.qxl_drawable, %struct.qxl_drawable* %83, i32 0, i32 2
  %85 = call i32 @qxl_release_unmap(%struct.qxl_device* %81, %struct.qxl_release* %82, i32* %84)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %73, %20
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
