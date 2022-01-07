; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_file = type { i32 }
%struct.armada_crtc = type { i32, i32, %struct.armada_gem_object*, %struct.TYPE_3__* }
%struct.armada_gem_object = type { i32*, %struct.armada_crtc*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"buffer is too small\0A\00", align 1
@cursor_update = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32)* @armada_drm_crtc_cursor_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_drm_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.armada_crtc*, align 8
  %13 = alloca %struct.armada_gem_object*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %16 = call %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc* %15)
  store %struct.armada_crtc* %16, %struct.armada_crtc** %12, align 8
  store %struct.armada_gem_object* null, %struct.armada_gem_object** %13, align 8
  %17 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %18 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %130

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %88

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 64
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 64
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 32
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 32
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %38, %35
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %130

50:                                               ; preds = %44, %41
  %51 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call %struct.armada_gem_object* @armada_gem_object_lookup(%struct.drm_file* %51, i32 %52)
  store %struct.armada_gem_object* %53, %struct.armada_gem_object** %13, align 8
  %54 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %55 = icmp ne %struct.armada_gem_object* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %130

59:                                               ; preds = %50
  %60 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %61 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %66 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %65, i32 0, i32 2
  %67 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_4__* %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %130

70:                                               ; preds = %59
  %71 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %72 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %75, %76
  %78 = mul nsw i32 %77, 4
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %83 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %82, i32 0, i32 2
  %84 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_4__* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %130

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %32, %29, %26
  %89 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %90 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %89, i32 0, i32 2
  %91 = load %struct.armada_gem_object*, %struct.armada_gem_object** %90, align 8
  %92 = icmp ne %struct.armada_gem_object* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %95 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %94, i32 0, i32 2
  %96 = load %struct.armada_gem_object*, %struct.armada_gem_object** %95, align 8
  %97 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  %98 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %99 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %98, i32 0, i32 2
  %100 = load %struct.armada_gem_object*, %struct.armada_gem_object** %99, align 8
  %101 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %100, i32 0, i32 1
  store %struct.armada_crtc* null, %struct.armada_crtc** %101, align 8
  %102 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %103 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %102, i32 0, i32 2
  %104 = load %struct.armada_gem_object*, %struct.armada_gem_object** %103, align 8
  %105 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %104, i32 0, i32 2
  %106 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_4__* %105)
  br label %107

107:                                              ; preds = %93, %88
  %108 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %109 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %110 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %109, i32 0, i32 2
  store %struct.armada_gem_object* %108, %struct.armada_gem_object** %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %113 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %116 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %118 = call i32 @armada_drm_crtc_cursor_update(%struct.armada_crtc* %117, i32 1)
  store i32 %118, i32* %14, align 4
  %119 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %120 = icmp ne %struct.armada_gem_object* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %107
  %122 = load %struct.armada_crtc*, %struct.armada_crtc** %12, align 8
  %123 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %124 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %123, i32 0, i32 1
  store %struct.armada_crtc* %122, %struct.armada_crtc** %124, align 8
  %125 = load i32*, i32** @cursor_update, align 8
  %126 = load %struct.armada_gem_object*, %struct.armada_gem_object** %13, align 8
  %127 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  br label %128

128:                                              ; preds = %121, %107
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %80, %64, %56, %47, %23
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.armada_gem_object* @armada_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.TYPE_4__*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @armada_drm_crtc_cursor_update(%struct.armada_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
