; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_rotation_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_rotation_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@DRM_FORMAT_YUYV = common dso_local global i64 0, align 8
@DRM_FORMAT_UYVY = common dso_local global i64 0, align 8
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@DRM_FORMAT_NV12 = common dso_local global i64 0, align 8
@OMAP_DSS_ROT_TILER = common dso_local global i32 0, align 4
@FEAT_ROWREPEATENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32, i32, i64)* @dispc_ovl_set_rotation_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_rotation_attrs(%struct.dispc_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.dispc_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @DRM_FORMAT_YUYV, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @DRM_FORMAT_UYVY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17, %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %34 [
    i32 131, label %30
    i32 128, label %31
    i32 130, label %32
    i32 129, label %33
  ]

30:                                               ; preds = %26
  store i32 2, i32* %12, align 4
  br label %34

31:                                               ; preds = %26
  store i32 1, i32* %12, align 4
  br label %34

32:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %34

33:                                               ; preds = %26
  store i32 3, i32* %12, align 4
  br label %34

34:                                               ; preds = %26, %33, %32, %31, %30
  br label %44

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %43 [
    i32 131, label %39
    i32 128, label %40
    i32 130, label %41
    i32 129, label %42
  ]

39:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %43

40:                                               ; preds = %35
  store i32 3, i32* %12, align 4
  br label %43

41:                                               ; preds = %35
  store i32 2, i32* %12, align 4
  br label %43

42:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %43

43:                                               ; preds = %35, %42, %41, %40, %39
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @drm_rotation_90_or_270(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  br label %50

49:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %55, %51
  %61 = load %struct.dispc_device*, %struct.dispc_device** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @REG_FLD_MOD(%struct.dispc_device* %61, i32 %63, i32 %64, i32 13, i32 12)
  %66 = load %struct.dispc_device*, %struct.dispc_device** %6, align 8
  %67 = load i32, i32* @FEAT_ROWREPEATENABLE, align 4
  %68 = call i64 @dispc_has_feature(%struct.dispc_device* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %60
  %71 = load %struct.dispc_device*, %struct.dispc_device** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = call i32 @REG_FLD_MOD(%struct.dispc_device* %71, i32 %73, i32 %77, i32 18, i32 18)
  br label %79

79:                                               ; preds = %70, %60
  %80 = load %struct.dispc_device*, %struct.dispc_device** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %83 = call i64 @dispc_ovl_color_mode_supported(%struct.dispc_device* %80, i32 %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %79
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @drm_rotation_90_or_270(i32 %94)
  %96 = icmp ne i64 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %93, %89, %85
  %99 = phi i1 [ false, %89 ], [ false, %85 ], [ %97, %93 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %13, align 4
  %101 = load %struct.dispc_device*, %struct.dispc_device** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @REG_FLD_MOD(%struct.dispc_device* %101, i32 %103, i32 %104, i32 22, i32 22)
  br label %106

106:                                              ; preds = %98, %79
  ret void
}

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i64 @dispc_ovl_color_mode_supported(%struct.dispc_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
