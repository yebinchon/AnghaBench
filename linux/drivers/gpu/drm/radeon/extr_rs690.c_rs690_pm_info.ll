; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_pm_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs690.c_rs690_pm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { %struct.TYPE_23__, %struct.TYPE_23__, %struct.TYPE_16__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_23__, %struct.TYPE_23__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%union.igp_info = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@IntegratedSystemInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"No integrated system info for your GPU, using safe default\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs690_pm_info(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.igp_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %9 = load i32, i32* @DATA, align 4
  %10 = load i32, i32* @IntegratedSystemInfo, align 4
  %11 = call i32 @GetIndexIntoMasterTable(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @atom_parse_data_header(%struct.TYPE_14__* %15, i32 %16, i32* null, i32* %6, i32* %7, i64* %5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %265

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %25, %26
  %28 = inttoptr i64 %27 to %union.igp_info*
  store %union.igp_info* %28, %union.igp_info** %4, align 8
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %241 [
    i32 1, label %30
    i32 2, label %129
  ]

30:                                               ; preds = %19
  %31 = call i8* @dfixed_const(i32 100)
  %32 = ptrtoint i8* %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %union.igp_info*, %union.igp_info** %4, align 8
  %35 = bitcast %union.igp_info* %34 to %struct.TYPE_18__*
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = call i8* @dfixed_const(i32 %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @dfixed_div(i8* %48, i64 %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 8
  %56 = load %union.igp_info*, %union.igp_info** %4, align 8
  %57 = bitcast %union.igp_info* %56 to %struct.TYPE_18__*
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %30
  %63 = load %union.igp_info*, %union.igp_info** %4, align 8
  %64 = bitcast %union.igp_info* %63 to %struct.TYPE_18__*
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = call i8* @dfixed_const(i32 %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  store i8* %68, i8** %72, align 8
  br label %108

73:                                               ; preds = %30
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %73
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @dfixed_const(i32 %83)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  store i8* %84, i8** %88, align 8
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @dfixed_div(i8* %93, i64 %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  store i8* %96, i8** %100, align 8
  br label %107

101:                                              ; preds = %73
  %102 = call i8* @dfixed_const(i32 400)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  store i8* %102, i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %79
  br label %108

108:                                              ; preds = %107, %62
  %109 = load %union.igp_info*, %union.igp_info** %4, align 8
  %110 = bitcast %union.igp_info* %109 to %struct.TYPE_18__*
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le16_to_cpu(i32 %112)
  %114 = call i8* @dfixed_const(i32 %113)
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  store i8* %114, i8** %118, align 8
  %119 = load %union.igp_info*, %union.igp_info** %4, align 8
  %120 = bitcast %union.igp_info* %119 to %struct.TYPE_18__*
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @dfixed_const(i32 %122)
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  store i64 %124, i64* %128, align 8
  br label %264

129:                                              ; preds = %19
  %130 = call i8* @dfixed_const(i32 100)
  %131 = ptrtoint i8* %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  %133 = load %union.igp_info*, %union.igp_info** %4, align 8
  %134 = bitcast %union.igp_info* %133 to %struct.TYPE_20__*
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le32_to_cpu(i32 %136)
  %138 = call i8* @dfixed_const(i32 %137)
  %139 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  store i8* %138, i8** %142, align 8
  %143 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @dfixed_div(i8* %147, i64 %149)
  %151 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %152 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  store i8* %150, i8** %154, align 8
  %155 = load %union.igp_info*, %union.igp_info** %4, align 8
  %156 = bitcast %union.igp_info* %155 to %struct.TYPE_20__*
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %129
  %162 = load %union.igp_info*, %union.igp_info** %4, align 8
  %163 = bitcast %union.igp_info* %162 to %struct.TYPE_20__*
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32_to_cpu(i32 %165)
  %167 = call i8* @dfixed_const(i32 %166)
  %168 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  store i8* %167, i8** %171, align 8
  br label %195

172:                                              ; preds = %129
  %173 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %174 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %172
  %179 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %180 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @dfixed_const(i32 %182)
  %184 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %185 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  store i8* %183, i8** %187, align 8
  br label %194

188:                                              ; preds = %172
  %189 = call i8* @dfixed_const(i32 66700)
  %190 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %191 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  store i8* %189, i8** %193, align 8
  br label %194

194:                                              ; preds = %188, %178
  br label %195

195:                                              ; preds = %194, %161
  %196 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %197 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i8* @dfixed_div(i8* %200, i64 %202)
  %204 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %205 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  store i8* %203, i8** %207, align 8
  %208 = load %union.igp_info*, %union.igp_info** %4, align 8
  %209 = bitcast %union.igp_info* %208 to %struct.TYPE_20__*
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @le32_to_cpu(i32 %211)
  %213 = call i8* @dfixed_const(i32 %212)
  %214 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  store i8* %213, i8** %217, align 8
  %218 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %219 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i8* @dfixed_div(i8* %222, i64 %224)
  %226 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %227 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 5
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  store i8* %225, i8** %229, align 8
  %230 = load %union.igp_info*, %union.igp_info** %4, align 8
  %231 = bitcast %union.igp_info* %230 to %struct.TYPE_20__*
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @le16_to_cpu(i32 %233)
  %235 = call i8* @dfixed_const(i32 %234)
  %236 = ptrtoint i8* %235 to i64
  %237 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  store i64 %236, i64* %240, align 8
  br label %264

241:                                              ; preds = %19
  %242 = call i8* @dfixed_const(i32 200)
  %243 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %244 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  store i8* %242, i8** %246, align 8
  %247 = call i8* @dfixed_const(i32 200)
  %248 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  store i8* %247, i8** %251, align 8
  %252 = call i8* @dfixed_const(i32 1000)
  %253 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %254 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  store i8* %252, i8** %256, align 8
  %257 = call i8* @dfixed_const(i32 8)
  %258 = ptrtoint i8* %257 to i64
  %259 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %260 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 0
  store i64 %258, i64* %262, align 8
  %263 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %264

264:                                              ; preds = %241, %195, %108
  br label %288

265:                                              ; preds = %1
  %266 = call i8* @dfixed_const(i32 200)
  %267 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %268 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 0
  store i8* %266, i8** %270, align 8
  %271 = call i8* @dfixed_const(i32 200)
  %272 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %273 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 6
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 0
  store i8* %271, i8** %275, align 8
  %276 = call i8* @dfixed_const(i32 1000)
  %277 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %278 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  store i8* %276, i8** %280, align 8
  %281 = call i8* @dfixed_const(i32 8)
  %282 = ptrtoint i8* %281 to i64
  %283 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %284 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 0
  store i64 %282, i64* %286, align 8
  %287 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %288

288:                                              ; preds = %265, %264
  %289 = call i8* @dfixed_const(i32 4)
  %290 = ptrtoint i8* %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %290, i64* %291, align 8
  %292 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %293 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 6
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call i8* @dfixed_mul(i8* %296, i64 %298)
  %300 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %301 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 7
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  store i8* %299, i8** %303, align 8
  %304 = call i8* @dfixed_const(i32 5)
  %305 = ptrtoint i8* %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %305, i64* %306, align 8
  %307 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %308 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 5
  %310 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %311 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = call i8* @dfixed_mul(i8* %314, i64 %316)
  %318 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %319 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 0
  store i8* %317, i8** %321, align 8
  %322 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %323 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i8* @dfixed_div(i8* %326, i64 %328)
  %330 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %331 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 0
  store i8* %329, i8** %333, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %337 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp slt i64 %335, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %288
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %346 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 0
  store i64 %344, i64* %348, align 8
  br label %349

349:                                              ; preds = %342, %288
  %350 = call i8* @dfixed_const(i32 14)
  %351 = ptrtoint i8* %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %351, i64* %352, align 8
  %353 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %354 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = call i8* @dfixed_mul(i8* %357, i64 %359)
  %361 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %362 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 0
  store i8* %360, i8** %364, align 8
  %365 = call i8* @dfixed_const(i32 10)
  %366 = ptrtoint i8* %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  store i64 %366, i64* %367, align 8
  %368 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %369 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = call i8* @dfixed_div(i8* %372, i64 %374)
  %376 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %377 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 0
  store i8* %375, i8** %379, align 8
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @dfixed_div(i8*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i8* @dfixed_mul(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
