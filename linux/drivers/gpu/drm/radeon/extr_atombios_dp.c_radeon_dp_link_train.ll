; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { i64, i64 }
%struct.radeon_connector = type { %struct.TYPE_4__*, %struct.radeon_connector_atom_dig* }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_connector_atom_dig = type { i64, i32, i32, i32 }
%struct.radeon_dp_link_train_info = type { i32, i32, i32*, i32, i32, %struct.drm_connector*, %struct.drm_encoder*, %struct.radeon_device*, i32, i32 }

@CONNECTOR_OBJECT_ID_DISPLAYPORT = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_eDP = common dso_local global i64 0, align 8
@COMMAND = common dso_local global i32 0, align 4
@DPEncoderService = common dso_local global i32 0, align 4
@ATOM_DP_CONFIG_DIG2_ENCODER = common dso_local global i32 0, align 4
@ATOM_DP_CONFIG_DIG1_ENCODER = common dso_local global i32 0, align 4
@ATOM_DP_CONFIG_LINK_B = common dso_local global i32 0, align 4
@ATOM_DP_CONFIG_LINK_A = common dso_local global i32 0, align 4
@DP_MAX_LANE_COUNT = common dso_local global i32 0, align 4
@DP_TPS3_SUPPORTED = common dso_local global i32 0, align 4
@DP_RECEIVER_CAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_dp_link_train(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %9 = alloca %struct.radeon_connector*, align 8
  %10 = alloca %struct.radeon_connector_atom_dig*, align 8
  %11 = alloca %struct.radeon_dp_link_train_info, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %5, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.radeon_device*, %struct.radeon_device** %20, align 8
  store %struct.radeon_device* %21, %struct.radeon_device** %6, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %23 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %22)
  store %struct.radeon_encoder* %23, %struct.radeon_encoder** %7, align 8
  %24 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %24, i32 0, i32 0
  %26 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %25, align 8
  %27 = icmp ne %struct.radeon_encoder_atom_dig* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %172

29:                                               ; preds = %2
  %30 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %31 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %30, i32 0, i32 0
  %32 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %31, align 8
  store %struct.radeon_encoder_atom_dig* %32, %struct.radeon_encoder_atom_dig** %8, align 8
  %33 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %34 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %33)
  store %struct.radeon_connector* %34, %struct.radeon_connector** %9, align 8
  %35 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %36 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %35, i32 0, i32 1
  %37 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %36, align 8
  %38 = icmp ne %struct.radeon_connector_atom_dig* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %172

40:                                               ; preds = %29
  %41 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %42 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %41, i32 0, i32 1
  %43 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %42, align 8
  store %struct.radeon_connector_atom_dig* %43, %struct.radeon_connector_atom_dig** %10, align 8
  %44 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %45 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CONNECTOR_OBJECT_ID_DISPLAYPORT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %51 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CONNECTOR_OBJECT_ID_eDP, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %172

56:                                               ; preds = %49, %40
  %57 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* @COMMAND, align 4
  %59 = load i32, i32* @DPEncoderService, align 4
  %60 = call i32 @GetIndexIntoMasterTable(i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @atom_parse_cmd_header(i32 %64, i32 %65, i32* %14, i32* %15)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* %15, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %56
  %75 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 9
  store i32 0, i32* %75, align 4
  %76 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %77 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32, i32* @ATOM_DP_CONFIG_DIG2_ENCODER, align 4
  %82 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %90

85:                                               ; preds = %74
  %86 = load i32, i32* @ATOM_DP_CONFIG_DIG1_ENCODER, align 4
  %87 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %8, align 8
  %92 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @ATOM_DP_CONFIG_LINK_B, align 4
  %97 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %105

100:                                              ; preds = %90
  %101 = load i32, i32* @ATOM_DP_CONFIG_LINK_A, align 4
  %102 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %107 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* @DP_MAX_LANE_COUNT, align 4
  %111 = call i32 @drm_dp_dpcd_readb(i32* %109, i32 %110, i32* %13)
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %127

113:                                              ; preds = %105
  %114 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %115 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @DP_TPS3_SUPPORTED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 1
  store i32 1, i32* %123, align 4
  br label %126

124:                                              ; preds = %117, %113
  %125 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %124, %122
  br label %129

127:                                              ; preds = %105
  %128 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 1
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %127, %126
  %130 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %133 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @DP_RECEIVER_CAP_SIZE, align 4
  %136 = call i32 @memcpy(i32 %131, i32 %134, i32 %135)
  %137 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %138 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 7
  store %struct.radeon_device* %137, %struct.radeon_device** %138, align 8
  %139 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 6
  store %struct.drm_encoder* %139, %struct.drm_encoder** %140, align 8
  %141 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %142 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 5
  store %struct.drm_connector* %141, %struct.drm_connector** %142, align 8
  %143 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %144 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 4
  store i32 %145, i32* %146, align 4
  %147 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %148 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 3
  store i32 %149, i32* %150, align 8
  %151 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %152 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.radeon_dp_link_train_info, %struct.radeon_dp_link_train_info* %11, i32 0, i32 2
  store i32* %154, i32** %155, align 8
  %156 = call i64 @radeon_dp_link_train_init(%struct.radeon_dp_link_train_info* %11)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %129
  br label %168

159:                                              ; preds = %129
  %160 = call i64 @radeon_dp_link_train_cr(%struct.radeon_dp_link_train_info* %11)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %168

163:                                              ; preds = %159
  %164 = call i64 @radeon_dp_link_train_ce(%struct.radeon_dp_link_train_info* %11)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %168

167:                                              ; preds = %163
  br label %168

168:                                              ; preds = %167, %166, %162, %158
  %169 = call i64 @radeon_dp_link_train_finish(%struct.radeon_dp_link_train_info* %11)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %172

172:                                              ; preds = %28, %39, %55, %171, %168
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @radeon_dp_link_train_init(%struct.radeon_dp_link_train_info*) #1

declare dso_local i64 @radeon_dp_link_train_cr(%struct.radeon_dp_link_train_info*) #1

declare dso_local i64 @radeon_dp_link_train_ce(%struct.radeon_dp_link_train_info*) #1

declare dso_local i64 @radeon_dp_link_train_finish(%struct.radeon_dp_link_train_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
