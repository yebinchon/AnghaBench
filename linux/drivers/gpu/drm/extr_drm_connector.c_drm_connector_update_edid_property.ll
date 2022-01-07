; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_update_edid_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_update_edid_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, %struct.TYPE_3__, i64, %struct.drm_device* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.edid = type { i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.edid* %1, %struct.edid** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 4
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.edid*, %struct.edid** %5, align 8
  %19 = icmp ne %struct.edid* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* @EDID_LENGTH, align 4
  %22 = load %struct.edid*, %struct.edid** %5, align 8
  %23 = getelementptr inbounds %struct.edid, %struct.edid* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 1, %24
  %26 = mul nsw i32 %21, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %20, %17
  %29 = load %struct.edid*, %struct.edid** %5, align 8
  %30 = icmp ne %struct.edid* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %33 = load %struct.edid*, %struct.edid** %5, align 8
  %34 = call i32 @drm_add_display_info(%struct.drm_connector* %32, %struct.edid* %33)
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = call i32 @drm_reset_display_info(%struct.drm_connector* %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 0
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @drm_object_property_set_value(i32* %40, i32 %44, i32 %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %51 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 1
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.edid*, %struct.edid** %5, align 8
  %55 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 0
  %57 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @drm_property_replace_global_blob(%struct.drm_device* %50, i32* %52, i64 %53, %struct.edid* %54, i32* %56, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %38
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %38
  %67 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %68 = call i32 @drm_connector_set_tile_property(%struct.drm_connector* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %64, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @drm_add_display_info(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_reset_display_info(%struct.drm_connector*) #1

declare dso_local i32 @drm_object_property_set_value(i32*, i32, i32) #1

declare dso_local i32 @drm_property_replace_global_blob(%struct.drm_device*, i32*, i64, %struct.edid*, i32*, i32) #1

declare dso_local i32 @drm_connector_set_tile_property(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
