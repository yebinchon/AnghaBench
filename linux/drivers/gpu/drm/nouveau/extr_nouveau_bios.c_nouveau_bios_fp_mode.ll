; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_fp_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_nouveau_bios_fp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bios_fp_mode(%struct.drm_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvbios*, align 8
  %8 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %6, align 8
  %11 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %11, i32 0, i32 0
  store %struct.nvbios* %12, %struct.nvbios** %7, align 8
  %13 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %14 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %17 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32* %20, i32** %8, align 8
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = icmp ne %struct.drm_display_mode* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %25 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %2
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = call i32 @memset(%struct.drm_display_mode* %30, i32 0, i32 48)
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ROM16(i32 %34)
  %36 = mul nsw i32 %35, 10
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 11
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ROM16(i32 %41)
  %43 = add nsw i32 %42, 1
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 17
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ROM16(i32 %48)
  %50 = add nsw i32 %49, 1
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 19
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ROM16(i32 %55)
  %57 = add nsw i32 %56, 1
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 21
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ROM16(i32 %62)
  %64 = add nsw i32 %63, 1
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 25
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ROM16(i32 %69)
  %71 = add nsw i32 %70, 1
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 31
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ROM16(i32 %76)
  %78 = add nsw i32 %77, 1
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 33
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ROM16(i32 %83)
  %85 = add nsw i32 %84, 1
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 35
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ROM16(i32 %90)
  %92 = add nsw i32 %91, 1
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 37
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 16
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %29
  %101 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  br label %104

102:                                              ; preds = %29
  %103 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 37
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  br label %119

117:                                              ; preds = %104
  %118 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* @MODE_OK, align 4
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 10
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %129 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %134 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %133)
  %135 = load %struct.nvbios*, %struct.nvbios** %7, align 8
  %136 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %119, %23
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @memset(%struct.drm_display_mode*, i32, i32) #1

declare dso_local i32 @ROM16(i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
