; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_bandwidth_avivo_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_bandwidth_avivo_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }
%struct.rv515_watermark = type { i32 }

@LB_MAX_REQ_OUTSTANDING = common dso_local global i32 0, align 4
@D1MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@D1MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4
@D2MODE_PRIORITY_A_CNT = common dso_local global i32 0, align 4
@D2MODE_PRIORITY_B_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv515_bandwidth_avivo_update(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.rv515_watermark, align 4
  %6 = alloca %struct.rv515_watermark, align 4
  %7 = alloca %struct.rv515_watermark, align 4
  %8 = alloca %struct.rv515_watermark, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %4, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.drm_display_mode* %32, %struct.drm_display_mode** %3, align 8
  br label %33

33:                                               ; preds = %24, %1
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store %struct.drm_display_mode* %52, %struct.drm_display_mode** %4, align 8
  br label %53

53:                                               ; preds = %44, %33
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %57 = call i32 @rs690_line_buffer_adjust(%struct.radeon_device* %54, %struct.drm_display_mode* %55, %struct.drm_display_mode* %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %62, i64 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @rv515_crtc_bandwidth_compute(%struct.radeon_device* %58, %struct.TYPE_6__* %64, %struct.rv515_watermark* %5, i32 0)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @rv515_crtc_bandwidth_compute(%struct.radeon_device* %66, %struct.TYPE_6__* %72, %struct.rv515_watermark* %7, i32 0)
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %78, i64 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = call i32 @rv515_crtc_bandwidth_compute(%struct.radeon_device* %74, %struct.TYPE_6__* %80, %struct.rv515_watermark* %6, i32 0)
  %82 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %86, i64 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @rv515_crtc_bandwidth_compute(%struct.radeon_device* %82, %struct.TYPE_6__* %88, %struct.rv515_watermark* %8, i32 0)
  %90 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = getelementptr inbounds %struct.rv515_watermark, %struct.rv515_watermark* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 16
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @LB_MAX_REQ_OUTSTANDING, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @WREG32(i32 %97, i32 %98)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %103 = call i32 @rv515_compute_mode_priority(%struct.radeon_device* %100, %struct.rv515_watermark* %5, %struct.rv515_watermark* %7, %struct.drm_display_mode* %101, %struct.drm_display_mode* %102, i32* %10, i32* %12)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %107 = call i32 @rv515_compute_mode_priority(%struct.radeon_device* %104, %struct.rv515_watermark* %6, %struct.rv515_watermark* %8, %struct.drm_display_mode* %105, %struct.drm_display_mode* %106, i32* %11, i32* %13)
  %108 = load i32, i32* @D1MODE_PRIORITY_A_CNT, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @WREG32(i32 %108, i32 %109)
  %111 = load i32, i32* @D1MODE_PRIORITY_B_CNT, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @WREG32(i32 %111, i32 %112)
  %114 = load i32, i32* @D2MODE_PRIORITY_A_CNT, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @WREG32(i32 %114, i32 %115)
  %117 = load i32, i32* @D2MODE_PRIORITY_B_CNT, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @WREG32(i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @rs690_line_buffer_adjust(%struct.radeon_device*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @rv515_crtc_bandwidth_compute(%struct.radeon_device*, %struct.TYPE_6__*, %struct.rv515_watermark*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @rv515_compute_mode_priority(%struct.radeon_device*, %struct.rv515_watermark*, %struct.rv515_watermark*, %struct.drm_display_mode*, %struct.drm_display_mode*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
