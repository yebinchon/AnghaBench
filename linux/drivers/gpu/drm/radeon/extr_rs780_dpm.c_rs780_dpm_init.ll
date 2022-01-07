; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.igp_power_info* }
%struct.igp_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }
%union.igp_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@IntegratedSystemInfo = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No integrated system info for your GPU\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs780_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.igp_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.igp_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %11 = load i32, i32* @DATA, align 4
  %12 = load i32, i32* @IntegratedSystemInfo, align 4
  %13 = call i32 @GetIndexIntoMasterTable(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.igp_power_info* @kzalloc(i32 64, i32 %14)
  store %struct.igp_power_info* %15, %struct.igp_power_info** %4, align 8
  %16 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %17 = icmp eq %struct.igp_power_info* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %274

21:                                               ; preds = %1
  %22 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.igp_power_info* %22, %struct.igp_power_info** %26, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @r600_get_platform_caps(%struct.radeon_device* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %2, align 4
  br label %274

33:                                               ; preds = %21
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @rs780_parse_power_table(%struct.radeon_device* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %2, align 4
  br label %274

40:                                               ; preds = %33
  %41 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %42 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %44 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @atom_parse_data_header(%struct.TYPE_12__* %48, i32 %49, i32* null, i32* %8, i32* %9, i64* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %269

52:                                               ; preds = %40
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %58, %59
  %61 = inttoptr i64 %60 to %union.igp_info*
  store %union.igp_info* %61, %union.igp_info** %6, align 8
  %62 = load i32, i32* %9, align 4
  switch i32 %62, label %215 [
    i32 1, label %63
    i32 2, label %147
  ]

63:                                               ; preds = %52
  %64 = load %union.igp_info*, %union.igp_info** %6, align 8
  %65 = bitcast %union.igp_info* %64 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %69 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %union.igp_info*, %union.igp_info** %6, align 8
  %71 = bitcast %union.igp_info* %70 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %76 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %80 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 32768
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %87 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %union.igp_info*, %union.igp_info** %6, align 8
  %89 = bitcast %union.igp_info* %88 to %struct.TYPE_10__*
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 9
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %93 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %92, i32 0, i32 9
  store i8* %91, i8** %93, align 8
  %94 = load %union.igp_info*, %union.igp_info** %6, align 8
  %95 = bitcast %union.igp_info* %94 to %struct.TYPE_10__*
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %99 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %union.igp_info*, %union.igp_info** %6, align 8
  %101 = bitcast %union.igp_info* %100 to %struct.TYPE_10__*
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %106 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %union.igp_info*, %union.igp_info** %6, align 8
  %110 = bitcast %union.igp_info* %109 to %struct.TYPE_10__*
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %114 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load %union.igp_info*, %union.igp_info** %6, align 8
  %116 = bitcast %union.igp_info* %115 to %struct.TYPE_10__*
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %121 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %union.igp_info*, %union.igp_info** %6, align 8
  %125 = bitcast %union.igp_info* %124 to %struct.TYPE_10__*
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @le16_to_cpu(i32 %127)
  %129 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %130 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %129, i32 0, i32 11
  store i8* %128, i8** %130, align 8
  %131 = load %union.igp_info*, %union.igp_info** %6, align 8
  %132 = bitcast %union.igp_info* %131 to %struct.TYPE_10__*
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @le16_to_cpu(i32 %134)
  %136 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %137 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %136, i32 0, i32 10
  store i8* %135, i8** %137, align 8
  %138 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %139 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %union.igp_info*, %union.igp_info** %6, align 8
  %141 = bitcast %union.igp_info* %140 to %struct.TYPE_10__*
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %143, 100
  %145 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %146 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 8
  br label %219

147:                                              ; preds = %52
  %148 = load %union.igp_info*, %union.igp_info** %6, align 8
  %149 = bitcast %union.igp_info* %148 to %struct.TYPE_11__*
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @le16_to_cpu(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %155 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %157 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 32768
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1, i32 0
  %163 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %164 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %union.igp_info*, %union.igp_info** %6, align 8
  %166 = bitcast %union.igp_info* %165 to %struct.TYPE_11__*
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @le16_to_cpu(i32 %168)
  %170 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %171 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %170, i32 0, i32 9
  store i8* %169, i8** %171, align 8
  %172 = load %union.igp_info*, %union.igp_info** %6, align 8
  %173 = bitcast %union.igp_info* %172 to %struct.TYPE_11__*
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @le16_to_cpu(i32 %175)
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %179 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %union.igp_info*, %union.igp_info** %6, align 8
  %181 = bitcast %union.igp_info* %180 to %struct.TYPE_11__*
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i8* @le16_to_cpu(i32 %183)
  %185 = ptrtoint i8* %184 to i32
  %186 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %187 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %186, i32 0, i32 5
  store i32 %185, i32* %187, align 4
  %188 = load %union.igp_info*, %union.igp_info** %6, align 8
  %189 = bitcast %union.igp_info* %188 to %struct.TYPE_11__*
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @le32_to_cpu(i32 %191)
  %193 = ptrtoint i8* %192 to i32
  %194 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %195 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %194, i32 0, i32 7
  store i32 %193, i32* %195, align 4
  %196 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %197 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 1, i32 0
  %203 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %204 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 8
  %205 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %206 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  %207 = load %union.igp_info*, %union.igp_info** %6, align 8
  %208 = bitcast %union.igp_info* %207 to %struct.TYPE_11__*
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @le32_to_cpu(i32 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %214 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %213, i32 0, i32 6
  store i32 %212, i32* %214, align 8
  br label %219

215:                                              ; preds = %52
  %216 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %2, align 4
  br label %274

219:                                              ; preds = %147, %63
  %220 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %221 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %224 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %222, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %229 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %228, i32 0, i32 0
  store i32 0, i32* %229, align 8
  br label %230

230:                                              ; preds = %227, %219
  %231 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %232 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %254

235:                                              ; preds = %230
  %236 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %237 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %235
  %241 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %242 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %247 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245, %240, %235
  %251 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %252 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %251, i32 0, i32 0
  store i32 0, i32* %252, align 8
  br label %253

253:                                              ; preds = %250, %245
  br label %268

254:                                              ; preds = %230
  %255 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %256 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %254
  %260 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %261 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %259, %254
  %265 = load %struct.igp_power_info*, %struct.igp_power_info** %4, align 8
  %266 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %265, i32 0, i32 0
  store i32 0, i32* %266, align 8
  br label %267

267:                                              ; preds = %264, %259
  br label %268

268:                                              ; preds = %267, %253
  store i32 0, i32* %2, align 4
  br label %274

269:                                              ; preds = %40
  %270 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %271 = call i32 @radeon_dpm_fini(%struct.radeon_device* %270)
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %2, align 4
  br label %274

274:                                              ; preds = %269, %268, %215, %38, %31, %18
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local %struct.igp_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @rs780_parse_power_table(%struct.radeon_device*) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_12__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_dpm_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
