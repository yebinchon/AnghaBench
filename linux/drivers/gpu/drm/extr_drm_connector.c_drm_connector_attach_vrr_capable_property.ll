; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_vrr_capable_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_vrr_capable_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_property*, %struct.drm_device* }
%struct.drm_property = type { i32 }
%struct.drm_device = type { i32 }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vrr_capable\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_attach_vrr_capable_property(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_property*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 2
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 1
  %11 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %12 = icmp ne %struct.drm_property* %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %1
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %16 = call %struct.drm_property* @drm_property_create_bool(%struct.drm_device* %14, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_property* %16, %struct.drm_property** %5, align 8
  %17 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %18 = icmp ne %struct.drm_property* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %13
  %23 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 1
  store %struct.drm_property* %23, %struct.drm_property** %25, align 8
  %26 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %29 = call i32 @drm_object_attach_property(i32* %27, %struct.drm_property* %28, i32 0)
  br label %30

30:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.drm_property* @drm_property_create_bool(%struct.drm_device*, i32, i8*) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
