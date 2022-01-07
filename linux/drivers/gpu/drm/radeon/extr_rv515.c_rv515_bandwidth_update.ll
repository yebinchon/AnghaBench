; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_bandwidth_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv515.c_rv515_bandwidth_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__**, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }

@CHIP_RV515 = common dso_local global i64 0, align 8
@MC_MISC_LAT_TIMER = common dso_local global i32 0, align 4
@MC_DISP1R_INIT_LAT_MASK = common dso_local global i32 0, align 4
@MC_DISP0R_INIT_LAT_MASK = common dso_local global i32 0, align 4
@MC_DISP1R_INIT_LAT_SHIFT = common dso_local global i32 0, align 4
@MC_DISP0R_INIT_LAT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv515_bandwidth_update(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %4, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %5, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = call i32 @radeon_update_display_priority(%struct.radeon_device* %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %12
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.drm_display_mode* %33, %struct.drm_display_mode** %4, align 8
  br label %34

34:                                               ; preds = %25, %12
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %49, i64 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.drm_display_mode* %53, %struct.drm_display_mode** %5, align 8
  br label %54

54:                                               ; preds = %45, %34
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %95

59:                                               ; preds = %54
  %60 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CHIP_RV515, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %59
  %66 = load i32, i32* @MC_MISC_LAT_TIMER, align 4
  %67 = call i32 @RREG32_MC(i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* @MC_DISP1R_INIT_LAT_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @MC_DISP0R_INIT_LAT_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = icmp ne %struct.drm_display_mode* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load i32, i32* @MC_DISP1R_INIT_LAT_SHIFT, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %65
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %85 = icmp ne %struct.drm_display_mode* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* @MC_DISP0R_INIT_LAT_SHIFT, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load i32, i32* @MC_MISC_LAT_TIMER, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @WREG32_MC(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %59, %54
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = call i32 @rv515_bandwidth_avivo_update(%struct.radeon_device* %96)
  br label %98

98:                                               ; preds = %95, %11
  ret void
}

declare dso_local i32 @radeon_update_display_priority(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_MC(i32) #1

declare dso_local i32 @WREG32_MC(i32, i32) #1

declare dso_local i32 @rv515_bandwidth_avivo_update(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
