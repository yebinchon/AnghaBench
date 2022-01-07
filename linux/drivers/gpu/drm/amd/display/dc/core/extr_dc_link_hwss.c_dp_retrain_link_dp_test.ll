; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_retrain_link_dp_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_retrain_link_dp_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_30__*, %struct.dc_link_settings, %struct.TYPE_22__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_26__, %struct.TYPE_24__* }
%struct.TYPE_29__ = type { i32 (%struct.pipe_ctx*, %struct.dc_link_settings*)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)* }
%struct.pipe_ctx = type { %struct.TYPE_19__, %struct.TYPE_28__*, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*)* }
%struct.TYPE_21__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.pipe_ctx* }
%struct.dc_link_settings = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_22__*, %struct.dc_link_settings*, i32)*, i32 (%struct.TYPE_22__*, i32)* }

@MAX_PIPES = common dso_local global i32 0, align 4
@DP_TEST_PATTERN_VIDEO_MODE = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i32 0, align 4
@LINK_TRAINING_ATTEMPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_retrain_link_dp_test(%struct.dc_link* %0, %struct.dc_link_settings* %1, i32 %2) #0 {
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %struct.dc_link_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %10 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %9, i32 0, i32 0
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  %17 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %16, i64 0
  store %struct.pipe_ctx* %17, %struct.pipe_ctx** %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %258, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MAX_PIPES, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %261

22:                                               ; preds = %18
  %23 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %23, i64 %25
  %27 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %29 = icmp ne %struct.TYPE_25__* %28, null
  br i1 %29, label %30, label %257

30:                                               ; preds = %22
  %31 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %31, i64 %33
  %35 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %257, label %38

38:                                               ; preds = %30
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %39, i64 %41
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %257, label %46

46:                                               ; preds = %38
  %47 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %47, i64 %49
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %50, i32 0, i32 2
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %257

56:                                               ; preds = %46
  %57 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %57, i64 %59
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = icmp ne %struct.TYPE_20__* %63, null
  br i1 %64, label %65, label %257

65:                                               ; preds = %56
  %66 = call i32 @udelay(i32 100)
  %67 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %67, i64 %69
  %71 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %76, align 8
  %78 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %78, i64 %80
  %82 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = call i32 %77(%struct.TYPE_20__* %84)
  %86 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %87 = load i32, i32* @DP_TEST_PATTERN_VIDEO_MODE, align 4
  %88 = call i32 @dp_set_hw_test_pattern(%struct.dc_link* %86, i32 %87, i32* null, i32 0)
  %89 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %90 = call i32 @dp_receiver_power_ctrl(%struct.dc_link* %89, i32 0)
  %91 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %92 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %91, i32 0, i32 0
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 2
  %96 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %95, align 8
  %97 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %97, i64 %99
  %101 = call i32 %96(%struct.pipe_ctx* %100)
  %102 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %102, i64 %104
  %106 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %107, align 8
  %109 = icmp ne %struct.TYPE_21__* %108, null
  br i1 %109, label %110, label %138

110:                                              ; preds = %65
  %111 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %112 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %111, i32 0, i32 0
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %138, label %118

118:                                              ; preds = %110
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %119, i64 %121
  %123 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %128, align 8
  %130 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %130, i64 %132
  %134 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = call i32 %129(%struct.TYPE_21__* %136)
  br label %138

138:                                              ; preds = %118, %110, %65
  %139 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %140 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %139, i32 0, i32 2
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %144, align 8
  %146 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %147 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %146, i32 0, i32 2
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT, align 4
  %150 = call i32 %145(%struct.TYPE_22__* %148, i32 %149)
  %151 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %152 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %151, i32 0, i32 1
  %153 = call i32 @memset(%struct.dc_link_settings* %152, i32 0, i32 4)
  %154 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %155 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %154, i32 0, i32 2
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load i32 (%struct.TYPE_22__*, %struct.dc_link_settings*, i32)*, i32 (%struct.TYPE_22__*, %struct.dc_link_settings*, i32)** %159, align 8
  %161 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %162 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %161, i32 0, i32 2
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  %164 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %165 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %165, i64 %167
  %169 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %168, i32 0, i32 1
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 %160(%struct.TYPE_22__* %163, %struct.dc_link_settings* %164, i32 %172)
  %174 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %175 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %174, i32 0, i32 1
  %176 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %177 = bitcast %struct.dc_link_settings* %175 to i8*
  %178 = bitcast %struct.dc_link_settings* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 4 %178, i64 4, i1 false)
  %179 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %180 = call i32 @dp_receiver_power_ctrl(%struct.dc_link* %179, i32 1)
  %181 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %182 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @LINK_TRAINING_ATTEMPTS, align 4
  %185 = call i32 @perform_link_training_with_retries(%struct.dc_link* %181, %struct.dc_link_settings* %182, i32 %183, i32 %184)
  %186 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %187 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %186, i32 0, i32 0
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 1
  %191 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %190, align 8
  %192 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %192, i64 %194
  %196 = call i32 %191(%struct.pipe_ctx* %195)
  %197 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %198 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %197, i32 0, i32 0
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 0
  %202 = load i32 (%struct.pipe_ctx*, %struct.dc_link_settings*)*, i32 (%struct.pipe_ctx*, %struct.dc_link_settings*)** %201, align 8
  %203 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %204 = load i32, i32* %8, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %203, i64 %205
  %207 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %208 = call i32 %202(%struct.pipe_ctx* %206, %struct.dc_link_settings* %207)
  %209 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %210 = load i32, i32* %8, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %209, i64 %211
  %213 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  %216 = icmp ne %struct.TYPE_21__* %215, null
  br i1 %216, label %217, label %256

217:                                              ; preds = %138
  %218 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %219 = load i32, i32* %8, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %218, i64 %220
  %222 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 0
  %228 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %227, align 8
  %229 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %230 = load i32, i32* %8, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %229, i64 %231
  %233 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = call i32 %228(%struct.TYPE_21__* %235)
  %237 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %238 = load i32, i32* %8, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %237, i64 %239
  %241 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 0
  %247 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %246, align 8
  %248 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  %249 = load i32, i32* %8, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %248, i64 %250
  %252 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %253, align 8
  %255 = call i32 %247(%struct.TYPE_20__* %254, i32 0)
  br label %256

256:                                              ; preds = %217, %138
  br label %257

257:                                              ; preds = %256, %56, %46, %38, %30, %22
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %8, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %8, align 4
  br label %18

261:                                              ; preds = %18
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dp_set_hw_test_pattern(%struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @dp_receiver_power_ctrl(%struct.dc_link*, i32) #1

declare dso_local i32 @memset(%struct.dc_link_settings*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @perform_link_training_with_retries(%struct.dc_link*, %struct.dc_link_settings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
