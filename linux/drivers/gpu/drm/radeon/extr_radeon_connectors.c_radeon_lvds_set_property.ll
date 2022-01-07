; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_lvds_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_connector_helper_funcs*, i64, %struct.drm_device* }
%struct.drm_connector_helper_funcs = type { i64 (%struct.drm_connector.0*)* }
%struct.drm_connector.0 = type opaque
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.radeon_encoder = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RMX_OFF = common dso_local global i32 0, align 4
@RMX_CENTER = common dso_local global i32 0, align 4
@RMX_ASPECT = common dso_local global i32 0, align 4
@RMX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i32)* @radeon_lvds_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_lvds_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.radeon_encoder*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_connector_helper_funcs*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 2
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %8, align 8
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.drm_property*, %struct.drm_property** %19, align 8
  %21 = icmp ne %struct.drm_property* %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

23:                                               ; preds = %3
  %24 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.radeon_encoder* @to_radeon_encoder(i64 %31)
  store %struct.radeon_encoder* %32, %struct.radeon_encoder** %9, align 8
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 0
  %36 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %35, align 8
  store %struct.drm_connector_helper_funcs* %36, %struct.drm_connector_helper_funcs** %11, align 8
  %37 = load %struct.drm_connector_helper_funcs*, %struct.drm_connector_helper_funcs** %11, align 8
  %38 = getelementptr inbounds %struct.drm_connector_helper_funcs, %struct.drm_connector_helper_funcs* %37, i32 0, i32 0
  %39 = load i64 (%struct.drm_connector.0*)*, i64 (%struct.drm_connector.0*)** %38, align 8
  %40 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %41 = bitcast %struct.drm_connector* %40 to %struct.drm_connector.0*
  %42 = call i64 %39(%struct.drm_connector.0* %41)
  %43 = call %struct.radeon_encoder* @to_radeon_encoder(i64 %42)
  store %struct.radeon_encoder* %43, %struct.radeon_encoder** %9, align 8
  br label %44

44:                                               ; preds = %33, %28
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %52 [
    i32 128, label %46
    i32 130, label %48
    i32 131, label %50
    i32 129, label %53
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @RMX_OFF, align 4
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @RMX_CENTER, align 4
  store i32 %49, i32* %10, align 4
  br label %55

50:                                               ; preds = %44
  %51 = load i32, i32* @RMX_ASPECT, align 4
  store i32 %51, i32* %10, align 4
  br label %55

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %44, %52
  %54 = load i32, i32* @RMX_FULL, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %50, %48, %46
  %56 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %57 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %69

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %65 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.radeon_encoder*, %struct.radeon_encoder** %9, align 8
  %67 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %66, i32 0, i32 1
  %68 = call i32 @radeon_property_change_mode(i32* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %61, %22
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(i64) #1

declare dso_local i32 @radeon_property_change_mode(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
