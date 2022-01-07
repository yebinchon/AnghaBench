; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.drm_connector = type { i64 }
%struct.i2c_adapter = type { i32 }

@DRM_FORCE_OFF = common dso_local global i64 0, align 8
@DRM_FORCE_UNSPECIFIED = common dso_local global i64 0, align 8
@drm_do_probe_ddc_edid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edid* @drm_get_edid(%struct.drm_connector* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.edid*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DRM_FORCE_OFF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.edid* null, %struct.edid** %3, align 8
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DRM_FORCE_UNSPECIFIED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %21 = call i32 @drm_probe_ddc(%struct.i2c_adapter* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store %struct.edid* null, %struct.edid** %3, align 8
  br label %37

24:                                               ; preds = %19, %13
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = load i32, i32* @drm_do_probe_ddc_edid, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %28 = call %struct.edid* @drm_do_get_edid(%struct.drm_connector* %25, i32 %26, %struct.i2c_adapter* %27)
  store %struct.edid* %28, %struct.edid** %6, align 8
  %29 = load %struct.edid*, %struct.edid** %6, align 8
  %30 = icmp ne %struct.edid* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %33 = load %struct.edid*, %struct.edid** %6, align 8
  %34 = call i32 @drm_get_displayid(%struct.drm_connector* %32, %struct.edid* %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.edid*, %struct.edid** %6, align 8
  store %struct.edid* %36, %struct.edid** %3, align 8
  br label %37

37:                                               ; preds = %35, %23, %12
  %38 = load %struct.edid*, %struct.edid** %3, align 8
  ret %struct.edid* %38
}

declare dso_local i32 @drm_probe_ddc(%struct.i2c_adapter*) #1

declare dso_local %struct.edid* @drm_do_get_edid(%struct.drm_connector*, i32, %struct.i2c_adapter*) #1

declare dso_local i32 @drm_get_displayid(%struct.drm_connector*, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
