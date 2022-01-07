; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_dig_monitor_is_duallink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_dig_monitor_is_duallink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig*, i32, i32 }
%struct.radeon_connector_atom_dig = type { i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.radeon_connector*, align 8
  %10 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %7, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %17)
  store %struct.drm_connector* %18, %struct.drm_connector** %8, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %20 = icmp ne %struct.drm_connector* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = call %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder* %22)
  store %struct.drm_connector* %23, %struct.drm_connector** %8, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %26 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %25)
  store %struct.radeon_connector* %26, %struct.radeon_connector** %9, align 8
  %27 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %96 [
    i32 131, label %30
    i32 128, label %30
    i32 132, label %55
    i32 129, label %55
    i32 130, label %55
  ]

30:                                               ; preds = %24, %24
  %31 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %32 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %37 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %41 = call i32 @radeon_connector_edid(%struct.drm_connector* %40)
  %42 = call i32 @drm_detect_hdmi_monitor(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 340000
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %97

48:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %97

49:                                               ; preds = %39, %35
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 165000
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %97

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %97

54:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %97

55:                                               ; preds = %24, %24, %24
  %56 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %57 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %97

61:                                               ; preds = %55
  %62 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %63 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %62, i32 0, i32 0
  %64 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %63, align 8
  store %struct.radeon_connector_atom_dig* %64, %struct.radeon_connector_atom_dig** %10, align 8
  %65 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %66 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %72 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %61
  store i32 0, i32* %3, align 4
  br label %97

77:                                               ; preds = %70
  %78 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %79 = call i32 @ASIC_IS_DCE6(%struct.radeon_device* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %83 = call i32 @radeon_connector_edid(%struct.drm_connector* %82)
  %84 = call i32 @drm_detect_hdmi_monitor(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = icmp sgt i32 %87, 340000
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %97

90:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %97

91:                                               ; preds = %81, %77
  %92 = load i32, i32* %5, align 4
  %93 = icmp sgt i32 %92, 165000
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %97

95:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %97

96:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %95, %94, %90, %89, %76, %60, %54, %53, %52, %48, %47
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
