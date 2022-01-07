; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_dp.c_amdgpu_atombios_dp_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }
%struct.amdgpu_connector = type { %struct.TYPE_2__*, %struct.amdgpu_connector_atom_dig* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_connector_atom_dig = type { i64, i32, i32, i32 }
%struct.amdgpu_atombios_dp_link_train_info = type { i32, i32*, i32, i32, %struct.drm_connector*, %struct.drm_encoder*, %struct.amdgpu_device*, i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8
@DP_MAX_LANE_COUNT = common dso_local global i32 0, align 4
@DP_TPS3_SUPPORTED = common dso_local global i32 0, align 4
@DP_RECEIVER_CAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_atombios_dp_link_train(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_encoder*, align 8
  %8 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  %9 = alloca %struct.amdgpu_connector*, align 8
  %10 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %11 = alloca %struct.amdgpu_atombios_dp_link_train_info, align 8
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %6, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %19)
  store %struct.amdgpu_encoder* %20, %struct.amdgpu_encoder** %7, align 8
  %21 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %22 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %22, align 8
  %24 = icmp ne %struct.amdgpu_encoder_atom_dig* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %116

26:                                               ; preds = %2
  %27 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %28, align 8
  store %struct.amdgpu_encoder_atom_dig* %29, %struct.amdgpu_encoder_atom_dig** %8, align 8
  %30 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %31 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %30)
  store %struct.amdgpu_connector* %31, %struct.amdgpu_connector** %9, align 8
  %32 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %33 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %32, i32 0, i32 1
  %34 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %33, align 8
  %35 = icmp ne %struct.amdgpu_connector_atom_dig* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %116

37:                                               ; preds = %26
  %38 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %39 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %38, i32 0, i32 1
  %40 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %39, align 8
  store %struct.amdgpu_connector_atom_dig* %40, %struct.amdgpu_connector_atom_dig** %10, align 8
  %41 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %42 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %48 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %116

53:                                               ; preds = %46, %37
  %54 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %55 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* @DP_MAX_LANE_COUNT, align 4
  %59 = call i32 @drm_dp_dpcd_readb(i32* %57, i32 %58, i32* %12)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @DP_TPS3_SUPPORTED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %70

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %68, %66
  br label %73

71:                                               ; preds = %53
  %72 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %71, %70
  %74 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %77 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DP_RECEIVER_CAP_SIZE, align 4
  %80 = call i32 @memcpy(i32 %75, i32 %78, i32 %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %82 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 6
  store %struct.amdgpu_device* %81, %struct.amdgpu_device** %82, align 8
  %83 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 5
  store %struct.drm_encoder* %83, %struct.drm_encoder** %84, align 8
  %85 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %86 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 4
  store %struct.drm_connector* %85, %struct.drm_connector** %86, align 8
  %87 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %88 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %10, align 8
  %92 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %9, align 8
  %96 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, %struct.amdgpu_atombios_dp_link_train_info* %11, i32 0, i32 1
  store i32* %98, i32** %99, align 8
  %100 = call i64 @amdgpu_atombios_dp_link_train_init(%struct.amdgpu_atombios_dp_link_train_info* %11)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %73
  br label %112

103:                                              ; preds = %73
  %104 = call i64 @amdgpu_atombios_dp_link_train_cr(%struct.amdgpu_atombios_dp_link_train_info* %11)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %112

107:                                              ; preds = %103
  %108 = call i64 @amdgpu_atombios_dp_link_train_ce(%struct.amdgpu_atombios_dp_link_train_info* %11)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %112

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %110, %106, %102
  %113 = call i64 @amdgpu_atombios_dp_link_train_finish(%struct.amdgpu_atombios_dp_link_train_info* %11)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %25, %36, %52, %115, %112
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @amdgpu_atombios_dp_link_train_init(%struct.amdgpu_atombios_dp_link_train_info*) #1

declare dso_local i64 @amdgpu_atombios_dp_link_train_cr(%struct.amdgpu_atombios_dp_link_train_info*) #1

declare dso_local i64 @amdgpu_atombios_dp_link_train_ce(%struct.amdgpu_atombios_dp_link_train_info*) #1

declare dso_local i64 @amdgpu_atombios_dp_link_train_finish(%struct.amdgpu_atombios_dp_link_train_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
