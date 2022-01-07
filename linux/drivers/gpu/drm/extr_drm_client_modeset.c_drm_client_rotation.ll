; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client_modeset.c_drm_client_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client_modeset.c_drm_client_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_set = type { i32, %struct.TYPE_4__*, %struct.drm_connector** }
%struct.TYPE_4__ = type { %struct.drm_plane* }
%struct.drm_plane = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64* }
%struct.drm_connector = type { %struct.drm_cmdline_mode, %struct.TYPE_5__ }
%struct.drm_cmdline_mode = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_90 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_client_rotation(%struct.drm_mode_set* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_mode_set*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_cmdline_mode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_mode_set* %0, %struct.drm_mode_set** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.drm_mode_set*, %struct.drm_mode_set** %4, align 8
  %18 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %17, i32 0, i32 2
  %19 = load %struct.drm_connector**, %struct.drm_connector*** %18, align 8
  %20 = getelementptr inbounds %struct.drm_connector*, %struct.drm_connector** %19, i64 0
  %21 = load %struct.drm_connector*, %struct.drm_connector** %20, align 8
  store %struct.drm_connector* %21, %struct.drm_connector** %6, align 8
  %22 = load %struct.drm_mode_set*, %struct.drm_mode_set** %4, align 8
  %23 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.drm_plane*, %struct.drm_plane** %25, align 8
  store %struct.drm_plane* %26, %struct.drm_plane** %7, align 8
  store i64 0, i64* %9, align 8
  %27 = load %struct.drm_mode_set*, %struct.drm_mode_set** %4, align 8
  %28 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

32:                                               ; preds = %2
  %33 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %46 [
    i32 130, label %37
    i32 129, label %40
    i32 128, label %43
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load i32, i32* @DRM_MODE_ROTATE_90, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43, %40, %37
  %50 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %51 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %50, i32 0, i32 0
  store %struct.drm_cmdline_mode* %51, %struct.drm_cmdline_mode** %8, align 8
  %52 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %8, align 8
  %53 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %49
  %57 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %8, align 8
  %58 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %56
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @ilog2(i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %8, align 8
  %68 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @ilog2(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add i32 %73, %74
  %76 = urem i32 %75, 4
  store i32 %76, i32* %15, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %12, align 4
  %82 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %8, align 8
  %83 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = xor i32 %88, %89
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %92, %93
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %61, %56, %49
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %96
  %104 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %105 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = icmp ne %struct.TYPE_6__* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %103, %96
  store i32 0, i32* %3, align 4
  br label %143

109:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %131, %109
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %113 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ult i32 %111, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %110
  %119 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %120 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = shl i64 1, %127
  %129 = load i64, i64* %9, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %9, align 8
  br label %131

131:                                              ; preds = %118
  %132 = load i32, i32* %10, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %110

134:                                              ; preds = %110
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* %9, align 8
  %139 = and i64 %137, %138
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %143

142:                                              ; preds = %134
  store i32 1, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %141, %108, %31
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
