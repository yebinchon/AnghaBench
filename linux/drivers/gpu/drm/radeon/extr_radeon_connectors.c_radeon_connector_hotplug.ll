; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_connectors.c_radeon_connector_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i64, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_connector = type { %struct.TYPE_2__, %struct.radeon_connector_atom_dig*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_connector_atom_dig = type { i64, i64 }

@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@RADEON_HPD_NONE = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_ON = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_connector_hotplug(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_connector*, align 8
  %6 = alloca %struct.radeon_connector_atom_dig*, align 8
  %7 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 2
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %4, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %15 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %14)
  store %struct.radeon_connector* %15, %struct.radeon_connector** %5, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %22, i32 0, i32 1
  %24 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %23, align 8
  store %struct.radeon_connector_atom_dig* %24, %struct.radeon_connector_atom_dig** %6, align 8
  %25 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %111

30:                                               ; preds = %21
  %31 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %6, align 8
  %32 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %37 = call i32 @radeon_dp_handle_hpd(%struct.drm_connector* %36)
  br label %111

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %41 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RADEON_HPD_NONE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %111

47:                                               ; preds = %39
  %48 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %49 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %50 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @radeon_hpd_set_polarity(%struct.radeon_device* %48, i64 %52)
  %54 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %55 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %111

60:                                               ; preds = %47
  %61 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %62 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %60
  %67 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %67, i32 0, i32 1
  %69 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %68, align 8
  store %struct.radeon_connector_atom_dig* %69, %struct.radeon_connector_atom_dig** %7, align 8
  %70 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %71 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %111

76:                                               ; preds = %66
  %77 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %78 = call i64 @radeon_dp_getsinktype(%struct.radeon_connector* %77)
  %79 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %80 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %7, align 8
  %82 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %76
  %87 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %88 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %89 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @radeon_hpd_sense(%struct.radeon_device* %87, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %86
  %95 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %96 = call i64 @radeon_dp_needs_link_train(%struct.radeon_connector* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load %struct.radeon_connector*, %struct.radeon_connector** %5, align 8
  %100 = call i32 @radeon_dp_getdpcd(%struct.radeon_connector* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %111

103:                                              ; preds = %98
  %104 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %105 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %106 = call i32 @drm_helper_connector_dpms(%struct.drm_connector* %104, i64 %105)
  %107 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %108 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %109 = call i32 @drm_helper_connector_dpms(%struct.drm_connector* %107, i64 %108)
  br label %110

110:                                              ; preds = %103, %94, %86, %76
  br label %111

111:                                              ; preds = %29, %35, %46, %59, %75, %102, %110, %60
  ret void
}

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @radeon_dp_handle_hpd(%struct.drm_connector*) #1

declare dso_local i32 @radeon_hpd_set_polarity(%struct.radeon_device*, i64) #1

declare dso_local i64 @radeon_dp_getsinktype(%struct.radeon_connector*) #1

declare dso_local i64 @radeon_hpd_sense(%struct.radeon_device*, i64) #1

declare dso_local i64 @radeon_dp_needs_link_train(%struct.radeon_connector*) #1

declare dso_local i32 @radeon_dp_getdpcd(%struct.radeon_connector*) #1

declare dso_local i32 @drm_helper_connector_dpms(%struct.drm_connector*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
