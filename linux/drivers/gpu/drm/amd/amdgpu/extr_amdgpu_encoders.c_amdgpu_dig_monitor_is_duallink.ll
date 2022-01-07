; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_encoders.c_amdgpu_dig_monitor_is_duallink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_encoders.c_amdgpu_dig_monitor_is_duallink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_connector = type { %struct.amdgpu_connector_atom_dig*, i32 }
%struct.amdgpu_connector_atom_dig = type { i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.amdgpu_connector*, align 8
  %8 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %9)
  store %struct.drm_connector* %10, %struct.drm_connector** %6, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %12 = icmp ne %struct.drm_connector* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder_init(%struct.drm_encoder* %14)
  store %struct.drm_connector* %15, %struct.drm_connector** %6, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %18 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %17)
  store %struct.amdgpu_connector* %18, %struct.amdgpu_connector** %7, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %74 [
    i32 131, label %22
    i32 128, label %22
    i32 132, label %43
    i32 129, label %43
    i32 130, label %43
  ]

22:                                               ; preds = %16, %16
  %23 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %29 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %28)
  %30 = call i32 @drm_detect_hdmi_monitor(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 340000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %75

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %75

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 165000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %75

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %75

42:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %75

43:                                               ; preds = %16, %16, %16
  %44 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %7, align 8
  %45 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %44, i32 0, i32 0
  %46 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %45, align 8
  store %struct.amdgpu_connector_atom_dig* %46, %struct.amdgpu_connector_atom_dig** %8, align 8
  %47 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %8, align 8
  %48 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %43
  %53 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %8, align 8
  %54 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CONNECTOR_OBJECT_ID_eDP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %43
  store i32 0, i32* %3, align 4
  br label %75

59:                                               ; preds = %52
  %60 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %61 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %60)
  %62 = call i32 @drm_detect_hdmi_monitor(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %65, 340000
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %75

68:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %75

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %70, 165000
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %75

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %75

74:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %73, %72, %68, %67, %58, %42, %41, %40, %36, %35
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder_init(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @amdgpu_connector_edid(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
