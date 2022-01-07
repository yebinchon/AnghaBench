; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_read_local_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_read_local_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_link = type { i64, %struct.amdgpu_dm_connector* }
%struct.amdgpu_dm_connector = type { %struct.TYPE_17__, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.i2c_adapter }
%struct.dc_sink = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.edid = type { i32 }
%union.test_request = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%union.test_response = type { i32 }
%struct.TYPE_16__ = type { i32 }

@EDID_NO_RESPONSE = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i32 0, align 4
@EDID_BAD_CHECKSUM = common dso_local global i32 0, align 4
@EDID_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EDID err: %d, on connector: %s\00", align 1
@DP_TEST_REQUEST = common dso_local global i32 0, align 4
@DP_TEST_EDID_CHECKSUM = common dso_local global i32 0, align 4
@DP_TEST_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_helpers_read_local_edid(%struct.dc_context* %0, %struct.dc_link* %1, %struct.dc_sink* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca %struct.dc_sink*, align 8
  %8 = alloca %struct.amdgpu_dm_connector*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.edid*, align 8
  %13 = alloca %union.test_request, align 4
  %14 = alloca %union.test_response, align 4
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.dc_link* %1, %struct.dc_link** %6, align 8
  store %struct.dc_sink* %2, %struct.dc_sink** %7, align 8
  %15 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 1
  %17 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %16, align 8
  store %struct.amdgpu_dm_connector* %17, %struct.amdgpu_dm_connector** %8, align 8
  store i32 3, i32* %10, align 4
  %18 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %19 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %24 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.i2c_adapter* %26, %struct.i2c_adapter** %9, align 8
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %29 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store %struct.i2c_adapter* %31, %struct.i2c_adapter** %9, align 8
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %79, %32
  %34 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %35 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %34, i32 0, i32 0
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %37 = call %struct.edid* @drm_get_edid(%struct.TYPE_17__* %35, %struct.i2c_adapter* %36)
  store %struct.edid* %37, %struct.edid** %12, align 8
  %38 = load %struct.edid*, %struct.edid** %12, align 8
  %39 = icmp ne %struct.edid* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @EDID_NO_RESPONSE, align 4
  store i32 %41, i32* %4, align 4
  br label %136

42:                                               ; preds = %33
  %43 = load i32, i32* @EDID_LENGTH, align 4
  %44 = load %struct.edid*, %struct.edid** %12, align 8
  %45 = getelementptr inbounds %struct.edid, %struct.edid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 %43, %47
  %49 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %50 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %53 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.edid*, %struct.edid** %12, align 8
  %57 = bitcast %struct.edid* %56 to i32*
  %58 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %59 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memmove(i32* %55, i32* %57, i32 %61)
  %63 = load %struct.edid*, %struct.edid** %12, align 8
  %64 = call i32 @kfree(%struct.edid* %63)
  %65 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %66 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %67 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %66, i32 0, i32 0
  %68 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %69 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %68, i32 0, i32 1
  %70 = call i32 @dm_helpers_parse_edid_caps(%struct.dc_context* %65, %struct.TYPE_18__* %67, i32* %69)
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %42
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @EDID_BAD_CHECKSUM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  %78 = icmp sgt i32 %77, 0
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  br i1 %80, label %33, label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @EDID_OK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %88 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %81
  %93 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %94 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %134

97:                                               ; preds = %92
  %98 = bitcast %union.test_request* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %98, i8 0, i64 4, i1 false)
  %99 = bitcast %union.test_response* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %99, i8 0, i64 4, i1 false)
  %100 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %101 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %102 = load i32, i32* @DP_TEST_REQUEST, align 4
  %103 = bitcast %union.test_request* %13 to i32*
  %104 = call i32 @dm_helpers_dp_read_dpcd(%struct.dc_context* %100, %struct.dc_link* %101, i32 %102, i32* %103, i32 4)
  %105 = bitcast %union.test_request* %13 to %struct.TYPE_15__*
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %136

111:                                              ; preds = %97
  %112 = bitcast %union.test_response* %14 to %struct.TYPE_16__*
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %115 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %116 = load i32, i32* @DP_TEST_EDID_CHECKSUM, align 4
  %117 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %118 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.dc_sink*, %struct.dc_sink** %7, align 8
  %122 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  %128 = call i32 @dm_helpers_dp_write_dpcd(%struct.dc_context* %114, %struct.dc_link* %115, i32 %116, i32* %127, i32 1)
  %129 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %130 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %131 = load i32, i32* @DP_TEST_RESPONSE, align 4
  %132 = bitcast %union.test_response* %14 to i32*
  %133 = call i32 @dm_helpers_dp_write_dpcd(%struct.dc_context* %129, %struct.dc_link* %130, i32 %131, i32* %132, i32 4)
  br label %134

134:                                              ; preds = %111, %92
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %109, %40
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.edid* @drm_get_edid(%struct.TYPE_17__*, %struct.i2c_adapter*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @dm_helpers_parse_edid_caps(%struct.dc_context*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dm_helpers_dp_read_dpcd(%struct.dc_context*, %struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @dm_helpers_dp_write_dpcd(%struct.dc_context*, %struct.dc_link*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
