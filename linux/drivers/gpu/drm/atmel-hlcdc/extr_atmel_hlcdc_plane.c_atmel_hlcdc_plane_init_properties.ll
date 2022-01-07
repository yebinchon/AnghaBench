; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_init_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_init_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_plane = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.atmel_hlcdc_layer_desc* }
%struct.atmel_hlcdc_layer_desc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64*, i64* }

@ATMEL_HLCDC_OVERLAY_LAYER = common dso_local global i64 0, align 8
@ATMEL_HLCDC_CURSOR_LAYER = common dso_local global i64 0, align 8
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_90 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_hlcdc_plane*)* @atmel_hlcdc_plane_init_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_plane_init_properties(%struct.atmel_hlcdc_plane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_hlcdc_plane*, align 8
  %4 = alloca %struct.atmel_hlcdc_layer_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane** %3, align 8
  %7 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %9, align 8
  store %struct.atmel_hlcdc_layer_desc* %10, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %11 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %12 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATMEL_HLCDC_OVERLAY_LAYER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %18 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATMEL_HLCDC_CURSOR_LAYER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16, %1
  %23 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %23, i32 0, i32 1
  %25 = call i32 @drm_plane_create_alpha_property(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %95

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %31
  %40 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %48, i32 0, i32 1
  %50 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %51 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %52 = load i32, i32* @DRM_MODE_ROTATE_90, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @drm_plane_create_rotation_property(i32* %49, i32 %50, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %95

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %39, %31
  %65 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %66 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %72 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %71, i32 0, i32 0
  %73 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %74 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_4__* %72, i64 %76, i32 1284505745)
  %78 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %79 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %78, i32 0, i32 0
  %80 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %81 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  %85 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_4__* %79, i64 %84, i32 2053066896)
  %86 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %87 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %86, i32 0, i32 0
  %88 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %4, align 8
  %89 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 2
  %93 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_4__* %87, i64 %92, i32 1074006160)
  br label %94

94:                                               ; preds = %70, %64
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %61, %28
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @drm_plane_create_alpha_property(i32*) #1

declare dso_local i32 @drm_plane_create_rotation_property(i32*, i32, i32) #1

declare dso_local i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_4__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
