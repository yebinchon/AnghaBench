; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_i2c_query_dp_dual_mode_adaptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_service_i2c_query_dp_dual_mode_adaptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32 }
%struct.display_sink_capability = type { i32, i32 }
%struct.dp_hdmi_dongle_signature_data = type { i64, i64* }

@DP_ADAPTOR_TYPE2_SIZE = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_NONE = common dso_local global i32 0, align 4
@DP_ADAPTOR_HDMI_SAFE_MAX_TMDS_CLK = common dso_local global i32 0, align 4
@DP_HDMI_DONGLE_ADDRESS = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_DVI_DONGLE = common dso_local global i32 0, align 4
@DP_ADAPTOR_DVI_MAX_TMDS_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DP-DVI passive dongle %dMhz: \00", align 1
@DP_ADAPTOR_TYPE2_REG_ID = common dso_local global i64 0, align 8
@DP_ADAPTOR_TYPE2_ID = common dso_local global i64 0, align 8
@DP_HDMI_DONGLE_SIGNATURE_EOT = common dso_local global i64 0, align 8
@dp_hdmi_dongle_signature_str = common dso_local global i64* null, align 8
@DP_ADAPTOR_TYPE2_REG_MAX_TMDS_CLK = common dso_local global i64 0, align 8
@DP_ADAPTOR_TYPE2_MIN_TMDS_CLK = common dso_local global i32 0, align 4
@DP_ADAPTOR_TYPE2_MAX_TMDS_CLK = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_HDMI_DONGLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Type 2 DP-HDMI passive dongle %dMhz: \00", align 1
@DISPLAY_DONGLE_DP_HDMI_MISMATCHED_DONGLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Type 2 DP-HDMI passive dongle (no signature) %dMhz: \00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Type 1 DP-HDMI passive dongle %dMhz: \00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Type 1 DP-HDMI passive dongle (no signature) %dMhz: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dal_ddc_service_i2c_query_dp_dual_mode_adaptor(%struct.ddc_service* %0, %struct.display_sink_capability* %1) #0 {
  %3 = alloca %struct.ddc_service*, align 8
  %4 = alloca %struct.display_sink_capability*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dp_hdmi_dongle_signature_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ddc_service* %0, %struct.ddc_service** %3, align 8
  store %struct.display_sink_capability* %1, %struct.display_sink_capability** %4, align 8
  %15 = load %struct.display_sink_capability*, %struct.display_sink_capability** %4, align 8
  %16 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %15, i32 0, i32 0
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* @DP_ADAPTOR_TYPE2_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %21 = load i32, i32* @DISPLAY_DONGLE_NONE, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @DP_ADAPTOR_HDMI_SAFE_MAX_TMDS_CLK, align 4
  %24 = load %struct.display_sink_capability*, %struct.display_sink_capability** %4, align 8
  %25 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %27 = load i32, i32* @DP_HDMI_DONGLE_ADDRESS, align 4
  %28 = mul nuw i64 8, %18
  %29 = trunc i64 %28 to i32
  %30 = call i64 @i2c_read(%struct.ddc_service* %26, i32 %27, i64* %20, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %38 = load i32, i32* @DP_HDMI_DONGLE_ADDRESS, align 4
  %39 = mul nuw i64 8, %18
  %40 = trunc i64 %39 to i32
  %41 = call i64 @i2c_read(%struct.ddc_service* %37, i32 %38, i64* %20, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %11, align 4
  br label %33

47:                                               ; preds = %43, %33
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* @DISPLAY_DONGLE_DP_DVI_DONGLE, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @DP_ADAPTOR_DVI_MAX_TMDS_CLK, align 4
  %54 = load %struct.display_sink_capability*, %struct.display_sink_capability** %4, align 8
  %55 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %57 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nuw i64 8, %18
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @DP_ADAPTOR_DVI_MAX_TMDS_CLK, align 4
  %62 = sdiv i32 %61, 1000
  %63 = call i32 @CONN_DATA_DETECT(i32 %58, i64* %20, i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 1, i32* %13, align 4
  br label %202

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i64, i64* @DP_ADAPTOR_TYPE2_REG_ID, align 8
  %67 = getelementptr inbounds i64, i64* %20, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DP_ADAPTOR_TYPE2_ID, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = bitcast i64* %20 to %struct.dp_hdmi_dongle_signature_data*
  store %struct.dp_hdmi_dongle_signature_data* %73, %struct.dp_hdmi_dongle_signature_data** %12, align 8
  store i32 1, i32* %6, align 4
  %74 = load %struct.dp_hdmi_dongle_signature_data*, %struct.dp_hdmi_dongle_signature_data** %12, align 8
  %75 = getelementptr inbounds %struct.dp_hdmi_dongle_signature_data, %struct.dp_hdmi_dongle_signature_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DP_HDMI_DONGLE_SIGNATURE_EOT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %72
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %105, %80
  %82 = load i64, i64* %5, align 8
  %83 = icmp ult i64 %82, 8
  br i1 %83, label %84, label %108

84:                                               ; preds = %81
  %85 = load %struct.dp_hdmi_dongle_signature_data*, %struct.dp_hdmi_dongle_signature_data** %12, align 8
  %86 = getelementptr inbounds %struct.dp_hdmi_dongle_signature_data, %struct.dp_hdmi_dongle_signature_data* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** @dp_hdmi_dongle_signature_str, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %84
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 3
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %108

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %96, %84
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %5, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %5, align 8
  br label %81

108:                                              ; preds = %102, %81
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %171

111:                                              ; preds = %108
  %112 = load i64, i64* @DP_ADAPTOR_TYPE2_REG_MAX_TMDS_CLK, align 8
  %113 = getelementptr inbounds i64, i64* %20, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = mul nsw i32 %116, 2
  %118 = load i32, i32* %14, align 4
  %119 = sdiv i32 %118, 2
  %120 = add nsw i32 %117, %119
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp eq i32 0, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @DP_ADAPTOR_TYPE2_MIN_TMDS_CLK, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @DP_ADAPTOR_TYPE2_MAX_TMDS_CLK, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127, %123, %111
  %132 = load i32, i32* @DISPLAY_DONGLE_DP_DVI_DONGLE, align 4
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  %134 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %135 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nuw i64 8, %18
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @DP_ADAPTOR_DVI_MAX_TMDS_CLK, align 4
  %140 = sdiv i32 %139, 1000
  %141 = call i32 @CONN_DATA_DETECT(i32 %136, i64* %20, i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %140)
  br label %170

142:                                              ; preds = %127
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* @DISPLAY_DONGLE_DP_HDMI_DONGLE, align 4
  %147 = load i32*, i32** %7, align 8
  store i32 %146, i32* %147, align 4
  %148 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %149 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nuw i64 8, %18
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @CONN_DATA_DETECT(i32 %150, i64* %20, i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  br label %165

155:                                              ; preds = %142
  %156 = load i32, i32* @DISPLAY_DONGLE_DP_HDMI_MISMATCHED_DONGLE, align 4
  %157 = load i32*, i32** %7, align 8
  store i32 %156, i32* %157, align 4
  %158 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %159 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nuw i64 8, %18
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @CONN_DATA_DETECT(i32 %160, i64* %20, i32 %162, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %155, %145
  %166 = load i32, i32* %14, align 4
  %167 = mul nsw i32 %166, 1000
  %168 = load %struct.display_sink_capability*, %struct.display_sink_capability** %4, align 8
  %169 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %165, %131
  br label %201

171:                                              ; preds = %108
  %172 = load i32, i32* %6, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load i32, i32* @DISPLAY_DONGLE_DP_HDMI_DONGLE, align 4
  %176 = load i32*, i32** %7, align 8
  store i32 %175, i32* %176, align 4
  %177 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %178 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = mul nuw i64 8, %18
  %181 = trunc i64 %180 to i32
  %182 = load %struct.display_sink_capability*, %struct.display_sink_capability** %4, align 8
  %183 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sdiv i32 %184, 1000
  %186 = call i32 @CONN_DATA_DETECT(i32 %179, i64* %20, i32 %181, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %185)
  br label %200

187:                                              ; preds = %171
  %188 = load i32, i32* @DISPLAY_DONGLE_DP_HDMI_MISMATCHED_DONGLE, align 4
  %189 = load i32*, i32** %7, align 8
  store i32 %188, i32* %189, align 4
  %190 = load %struct.ddc_service*, %struct.ddc_service** %3, align 8
  %191 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = mul nuw i64 8, %18
  %194 = trunc i64 %193 to i32
  %195 = load %struct.display_sink_capability*, %struct.display_sink_capability** %4, align 8
  %196 = getelementptr inbounds %struct.display_sink_capability, %struct.display_sink_capability* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sdiv i32 %197, 1000
  %199 = call i32 @CONN_DATA_DETECT(i32 %192, i64* %20, i32 %194, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %187, %174
  br label %201

201:                                              ; preds = %200, %170
  store i32 1, i32* %13, align 4
  br label %202

202:                                              ; preds = %201, %50
  %203 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %203)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @i2c_read(%struct.ddc_service*, i32, i64*, i32) #2

declare dso_local i32 @CONN_DATA_DETECT(i32, i64*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
