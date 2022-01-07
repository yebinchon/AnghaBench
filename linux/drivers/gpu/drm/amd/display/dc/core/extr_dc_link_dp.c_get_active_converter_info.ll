; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_active_converter_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_get_active_converter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, %struct.TYPE_13__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_8__ = type { i64 }
%union.dp_downstream_port_present = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%union.dwnstream_port_caps_byte0 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%union.dwnstream_port_caps_byte3_hdmi = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%union.dwnstream_port_caps_byte2 = type { i32 }
%struct.dp_sink_hw_fw_revision = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@DISPLAY_DONGLE_NONE = common dso_local global i8* null, align 8
@DOWNSTREAM_DP = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_VGA_CONVERTER = common dso_local global i8* null, align 8
@DISPLAY_DONGLE_DP_DVI_CONVERTER = common dso_local global i8* null, align 8
@DPCD_REV_11 = common dso_local global i64 0, align 8
@DP_DOWNSTREAM_PORT_0 = common dso_local global i32 0, align 4
@DISPLAY_DONGLE_DP_HDMI_CONVERTER = common dso_local global i8* null, align 8
@DP_BRANCH_REVISION_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dc_link*)* @get_active_converter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_active_converter_info(i32 %0, %struct.dc_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %union.dp_downstream_port_present, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca %union.dwnstream_port_caps_byte0*, align 8
  %8 = alloca %union.dwnstream_port_caps_byte3_hdmi, align 4
  %9 = alloca %union.dwnstream_port_caps_byte2, align 4
  %10 = alloca %struct.dp_sink_hw_fw_revision, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dc_link* %1, %struct.dc_link** %4, align 8
  %11 = bitcast %union.dp_downstream_port_present* %5 to i32*
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %11, align 4
  %13 = bitcast %union.dp_downstream_port_present* %5 to %struct.TYPE_9__*
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** @DISPLAY_DONGLE_NONE, align 8
  %19 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %20 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  store i8* %18, i8** %21, align 8
  %22 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %23 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %26 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @ddc_service_set_dongle_type(i32 %24, i8* %28)
  %30 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %31 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %224

33:                                               ; preds = %2
  %34 = bitcast %union.dp_downstream_port_present* %5 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DOWNSTREAM_DP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %41 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %50

43:                                               ; preds = %33
  %44 = bitcast %union.dp_downstream_port_present* %5 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %48 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %39
  %51 = bitcast %union.dp_downstream_port_present* %5 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %64 [
    i32 133, label %54
    i32 134, label %59
  ]

54:                                               ; preds = %50
  %55 = load i8*, i8** @DISPLAY_DONGLE_DP_VGA_CONVERTER, align 8
  %56 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %57 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 3
  store i8* %55, i8** %58, align 8
  br label %69

59:                                               ; preds = %50
  %60 = load i8*, i8** @DISPLAY_DONGLE_DP_DVI_CONVERTER, align 8
  %61 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %62 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  br label %69

64:                                               ; preds = %50
  %65 = load i8*, i8** @DISPLAY_DONGLE_NONE, align 8
  %66 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %67 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  store i8* %65, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %59, %54
  %70 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %71 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DPCD_REV_11, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %199

77:                                               ; preds = %69
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %79 = bitcast i32* %78 to %union.dwnstream_port_caps_byte0*
  store %union.dwnstream_port_caps_byte0* %79, %union.dwnstream_port_caps_byte0** %7, align 8
  %80 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %81 = load i32, i32* @DP_DOWNSTREAM_PORT_0, align 4
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %83 = call i32 @core_link_read_dpcd(%struct.dc_link* %80, i32 %81, i32* %82, i32 64)
  %84 = load %union.dwnstream_port_caps_byte0*, %union.dwnstream_port_caps_byte0** %7, align 8
  %85 = bitcast %union.dwnstream_port_caps_byte0* %84 to %struct.TYPE_10__*
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %198 [
    i32 132, label %88
    i32 128, label %93
    i32 130, label %98
    i32 129, label %103
    i32 131, label %103
  ]

88:                                               ; preds = %77
  %89 = load i8*, i8** @DISPLAY_DONGLE_NONE, align 8
  %90 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %91 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  store i8* %89, i8** %92, align 8
  br label %198

93:                                               ; preds = %77
  %94 = load i8*, i8** @DISPLAY_DONGLE_DP_VGA_CONVERTER, align 8
  %95 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %96 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  store i8* %94, i8** %97, align 8
  br label %198

98:                                               ; preds = %77
  %99 = load i8*, i8** @DISPLAY_DONGLE_DP_DVI_CONVERTER, align 8
  %100 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %101 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  store i8* %99, i8** %102, align 8
  br label %198

103:                                              ; preds = %77, %77
  %104 = load i8*, i8** @DISPLAY_DONGLE_DP_HDMI_CONVERTER, align 8
  %105 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %106 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  store i8* %104, i8** %107, align 8
  %108 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %109 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %113 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 8
  store i8* %111, i8** %115, align 8
  %116 = bitcast %union.dp_downstream_port_present* %5 to %struct.TYPE_9__*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %197

120:                                              ; preds = %103
  %121 = bitcast %union.dwnstream_port_caps_byte3_hdmi* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %121, i8 0, i64 20, i1 false)
  %122 = bitcast %union.dwnstream_port_caps_byte3_hdmi* %8 to i32*
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %122, align 4
  %125 = bitcast %union.dwnstream_port_caps_byte2* %9 to i32*
  %126 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %125, align 4
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 2500
  %131 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %132 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 8
  %135 = bitcast %union.dwnstream_port_caps_byte3_hdmi* %8 to %struct.TYPE_11__*
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %139 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 7
  store i32 %137, i32* %141, align 4
  %142 = load %union.dwnstream_port_caps_byte0*, %union.dwnstream_port_caps_byte0** %7, align 8
  %143 = bitcast %union.dwnstream_port_caps_byte0* %142 to %struct.TYPE_10__*
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 129
  br i1 %146, label %147, label %176

147:                                              ; preds = %120
  %148 = bitcast %union.dwnstream_port_caps_byte3_hdmi* %8 to %struct.TYPE_11__*
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %152 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 6
  store i32 %150, i32* %154, align 8
  %155 = bitcast %union.dwnstream_port_caps_byte3_hdmi* %8 to %struct.TYPE_11__*
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %159 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 5
  store i32 %157, i32* %161, align 4
  %162 = bitcast %union.dwnstream_port_caps_byte3_hdmi* %8 to %struct.TYPE_11__*
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %166 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 4
  store i32 %164, i32* %168, align 8
  %169 = bitcast %union.dwnstream_port_caps_byte3_hdmi* %8 to %struct.TYPE_11__*
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %173 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  store i32 %171, i32* %175, align 4
  br label %176

176:                                              ; preds = %147, %120
  %177 = bitcast %union.dwnstream_port_caps_byte2* %9 to %struct.TYPE_12__*
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @translate_dpcd_max_bpc(i32 %179)
  %181 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %182 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  store i32 %180, i32* %184, align 8
  %185 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %186 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %176
  %192 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %193 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  store i32 1, i32* %195, align 4
  br label %196

196:                                              ; preds = %191, %176
  br label %197

197:                                              ; preds = %196, %103
  br label %198

198:                                              ; preds = %77, %197, %98, %93, %88
  br label %199

199:                                              ; preds = %198, %69
  %200 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %201 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %204 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @ddc_service_set_dongle_type(i32 %202, i8* %206)
  %208 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %209 = load i32, i32* @DP_BRANCH_REVISION_START, align 4
  %210 = bitcast %struct.dp_sink_hw_fw_revision* %10 to i32*
  %211 = call i32 @core_link_read_dpcd(%struct.dc_link* %208, i32 %209, i32* %210, i32 8)
  %212 = getelementptr inbounds %struct.dp_sink_hw_fw_revision, %struct.dp_sink_hw_fw_revision* %10, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %215 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  store i32 %213, i32* %216, align 8
  %217 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %218 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.dp_sink_hw_fw_revision, %struct.dp_sink_hw_fw_revision* %10, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @memmove(i32 %220, i32 %222, i32 4)
  br label %224

224:                                              ; preds = %199, %17
  ret void
}

declare dso_local i32 @ddc_service_set_dongle_type(i32, i8*) #1

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @translate_dpcd_max_bpc(i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
