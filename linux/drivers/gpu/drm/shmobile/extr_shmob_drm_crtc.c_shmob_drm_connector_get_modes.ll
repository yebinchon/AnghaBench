; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.shmob_drm_device* }
%struct.shmob_drm_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @shmob_drm_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmob_drm_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.shmob_drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %9, align 8
  store %struct.shmob_drm_device* %10, %struct.shmob_drm_device** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call %struct.drm_display_mode* @drm_mode_create(%struct.TYPE_10__* %13)
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %5, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = icmp eq %struct.drm_display_mode* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %137

18:                                               ; preds = %1
  %19 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %20 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %34 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %52 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %61 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %70 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %79 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %88 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %97 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %106 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %115 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %114)
  %116 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %117 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %118 = call i32 @drm_mode_probed_add(%struct.drm_connector* %116, %struct.drm_display_mode* %117)
  %119 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %120 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %126 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %129 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %135 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %18, %17
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.TYPE_10__*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
