; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_content_type_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_content_type_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DRM_MODE_CONTENT_TYPE_NO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_attach_content_type_property(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %3 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %4 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @drm_mode_create_content_type_property(%struct.TYPE_4__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 1
  %11 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DRM_MODE_CONTENT_TYPE_NO_DATA, align 4
  %18 = call i32 @drm_object_attach_property(i32* %10, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local i32 @drm_mode_create_content_type_property(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
