; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_parse_sys_info_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_parse_sys_info_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.trinity_power_info = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32, i8**, i8**, i8**, i64, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i8*, i32, i8* }
%union.igp_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i32, i32, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@IntegratedSystemInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported IGP table: %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"The htcTmpLmt should be larger than htcHystLmt.\0A\00", align 1
@TRINITY_NUM_NBPSTATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @trinity_parse_sys_info_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trinity_parse_sys_info_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.trinity_power_info*, align 8
  %5 = alloca %struct.radeon_mode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.igp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %12)
  store %struct.trinity_power_info* %13, %struct.trinity_power_info** %4, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  store %struct.radeon_mode_info* %15, %struct.radeon_mode_info** %5, align 8
  %16 = load i32, i32* @DATA, align 4
  %17 = load i32, i32* @IntegratedSystemInfo, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @atom_parse_data_header(%struct.TYPE_8__* %21, i32 %22, i32* null, i32* %8, i32* %9, i64* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %435

25:                                               ; preds = %1
  %26 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to %union.igp_info*
  store %union.igp_info* %33, %union.igp_info** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 7
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %436

42:                                               ; preds = %25
  %43 = load %union.igp_info*, %union.igp_info** %7, align 8
  %44 = bitcast %union.igp_info* %43 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 23
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %49 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 14
  store i8* %47, i8** %50, align 8
  %51 = load %union.igp_info*, %union.igp_info** %7, align 8
  %52 = bitcast %union.igp_info* %51 to %struct.TYPE_7__*
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 22
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 13
  store i8* %55, i8** %58, align 8
  %59 = load %union.igp_info*, %union.igp_info** %7, align 8
  %60 = bitcast %union.igp_info* %59 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 21
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %65 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 12
  store i8* %63, i8** %66, align 8
  %67 = load %union.igp_info*, %union.igp_info** %7, align 8
  %68 = bitcast %union.igp_info* %67 to %struct.TYPE_7__*
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 20
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %73 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 11
  store i8* %71, i8** %74, align 8
  %75 = load %union.igp_info*, %union.igp_info** %7, align 8
  %76 = bitcast %union.igp_info* %75 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 19
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @le16_to_cpu(i32 %78)
  %80 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %81 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 10
  store i8* %79, i8** %82, align 8
  %83 = load %union.igp_info*, %union.igp_info** %7, align 8
  %84 = bitcast %union.igp_info* %83 to %struct.TYPE_7__*
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %42
  %89 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 203, i32* %91, align 8
  br label %100

92:                                               ; preds = %42
  %93 = load %union.igp_info*, %union.igp_info** %7, align 8
  %94 = bitcast %union.igp_info* %93 to %struct.TYPE_7__*
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %98 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %100

100:                                              ; preds = %92, %88
  %101 = load %union.igp_info*, %union.igp_info** %7, align 8
  %102 = bitcast %union.igp_info* %101 to %struct.TYPE_7__*
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 5, i32* %109, align 4
  br label %118

110:                                              ; preds = %100
  %111 = load %union.igp_info*, %union.igp_info** %7, align 8
  %112 = bitcast %union.igp_info* %111 to %struct.TYPE_7__*
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %116 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %106
  %119 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %120 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %124 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sle i32 %122, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %118
  %131 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %132 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %union.igp_info*, %union.igp_info** %7, align 8
  %137 = bitcast %union.igp_info* %136 to %struct.TYPE_7__*
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 18
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %141 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 9
  store i64 %139, i64* %142, align 8
  br label %147

143:                                              ; preds = %130
  %144 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %145 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 9
  store i64 0, i64* %146, align 8
  br label %147

147:                                              ; preds = %143, %135
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %185, %147
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @TRINITY_NUM_NBPSTATES, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %188

152:                                              ; preds = %148
  %153 = load %union.igp_info*, %union.igp_info** %7, align 8
  %154 = bitcast %union.igp_info* %153 to %struct.TYPE_7__*
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 17
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @le32_to_cpu(i32 %160)
  %162 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %163 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 8
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  store i8* %161, i8** %168, align 8
  %169 = load %union.igp_info*, %union.igp_info** %7, align 8
  %170 = bitcast %union.igp_info* %169 to %struct.TYPE_7__*
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 16
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @le32_to_cpu(i32 %176)
  %178 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %179 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 7
  %181 = load i8**, i8*** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  store i8* %177, i8** %184, align 8
  br label %185

185:                                              ; preds = %152
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %148

188:                                              ; preds = %148
  %189 = load %union.igp_info*, %union.igp_info** %7, align 8
  %190 = bitcast %union.igp_info* %189 to %struct.TYPE_7__*
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 15
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @le16_to_cpu(i32 %192)
  %194 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %195 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 6
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  store i8* %193, i8** %198, align 8
  %199 = load %union.igp_info*, %union.igp_info** %7, align 8
  %200 = bitcast %union.igp_info* %199 to %struct.TYPE_7__*
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 14
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @le16_to_cpu(i32 %202)
  %204 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %205 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 6
  %207 = load i8**, i8*** %206, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 1
  store i8* %203, i8** %208, align 8
  %209 = load %union.igp_info*, %union.igp_info** %7, align 8
  %210 = bitcast %union.igp_info* %209 to %struct.TYPE_7__*
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 13
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @le16_to_cpu(i32 %212)
  %214 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %215 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 6
  %217 = load i8**, i8*** %216, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 2
  store i8* %213, i8** %218, align 8
  %219 = load %union.igp_info*, %union.igp_info** %7, align 8
  %220 = bitcast %union.igp_info* %219 to %struct.TYPE_7__*
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 12
  %222 = load i32, i32* %221, align 8
  %223 = call i8* @le16_to_cpu(i32 %222)
  %224 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %225 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 6
  %227 = load i8**, i8*** %226, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 3
  store i8* %223, i8** %228, align 8
  %229 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %230 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 9
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %283, label %234

234:                                              ; preds = %188
  store i32 1, i32* %11, align 4
  br label %235

235:                                              ; preds = %279, %234
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* @TRINITY_NUM_NBPSTATES, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %282

239:                                              ; preds = %235
  %240 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %241 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 8
  %243 = load i8**, i8*** %242, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 0
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %247 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 8
  %249 = load i8**, i8*** %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  store i8* %245, i8** %252, align 8
  %253 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %254 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 7
  %256 = load i8**, i8*** %255, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 0
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %260 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 7
  %262 = load i8**, i8*** %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  store i8* %258, i8** %265, align 8
  %266 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %267 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 6
  %269 = load i8**, i8*** %268, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 0
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %273 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 6
  %275 = load i8**, i8*** %274, align 8
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  store i8* %271, i8** %278, align 8
  br label %279

279:                                              ; preds = %239
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %235

282:                                              ; preds = %235
  br label %283

283:                                              ; preds = %282, %188
  %284 = load %union.igp_info*, %union.igp_info** %7, align 8
  %285 = bitcast %union.igp_info* %284 to %struct.TYPE_7__*
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 11
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %289 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 5
  store i32 %287, i32* %290, align 8
  %291 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %292 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %293 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 4
  %295 = load %union.igp_info*, %union.igp_info** %7, align 8
  %296 = bitcast %union.igp_info* %295 to %struct.TYPE_7__*
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 10
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @sumo_construct_sclk_voltage_mapping_table(%struct.radeon_device* %291, i32* %294, i32 %298)
  %300 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %301 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %302 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 3
  %304 = load %union.igp_info*, %union.igp_info** %7, align 8
  %305 = bitcast %union.igp_info* %304 to %struct.TYPE_7__*
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 10
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @sumo_construct_vid_mapping_table(%struct.radeon_device* %300, i32* %303, i32 %307)
  %309 = load %union.igp_info*, %union.igp_info** %7, align 8
  %310 = bitcast %union.igp_info* %309 to %struct.TYPE_7__*
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %314 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i64 0
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 2
  store i32 %312, i32* %318, align 8
  %319 = load %union.igp_info*, %union.igp_info** %7, align 8
  %320 = bitcast %union.igp_info* %319 to %struct.TYPE_7__*
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %324 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i64 1
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 2
  store i32 %322, i32* %328, align 8
  %329 = load %union.igp_info*, %union.igp_info** %7, align 8
  %330 = bitcast %union.igp_info* %329 to %struct.TYPE_7__*
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %334 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i64 2
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 2
  store i32 %332, i32* %338, align 8
  %339 = load %union.igp_info*, %union.igp_info** %7, align 8
  %340 = bitcast %union.igp_info* %339 to %struct.TYPE_7__*
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %344 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i64 3
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 2
  store i32 %342, i32* %348, align 8
  %349 = load %union.igp_info*, %union.igp_info** %7, align 8
  %350 = bitcast %union.igp_info* %349 to %struct.TYPE_7__*
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %354 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 2
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i64 0
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 0
  store i32 %352, i32* %358, align 8
  %359 = load %union.igp_info*, %union.igp_info** %7, align 8
  %360 = bitcast %union.igp_info* %359 to %struct.TYPE_7__*
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %364 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 2
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i64 1
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 0
  store i32 %362, i32* %368, align 8
  %369 = load %union.igp_info*, %union.igp_info** %7, align 8
  %370 = bitcast %union.igp_info* %369 to %struct.TYPE_7__*
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %374 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i64 2
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 0
  store i32 %372, i32* %378, align 8
  %379 = load %union.igp_info*, %union.igp_info** %7, align 8
  %380 = bitcast %union.igp_info* %379 to %struct.TYPE_7__*
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %384 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 2
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i64 3
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 0
  store i32 %382, i32* %388, align 8
  store i32 0, i32* %11, align 4
  br label %389

389:                                              ; preds = %431, %283
  %390 = load i32, i32* %11, align 4
  %391 = icmp slt i32 %390, 4
  br i1 %391, label %392, label %434

392:                                              ; preds = %389
  %393 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %394 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %395 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 2
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %396, align 8
  %398 = load i32, i32* %11, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = call i8* @trinity_convert_did_to_freq(%struct.radeon_device* %393, i32 %402)
  %404 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %405 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 2
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %406, align 8
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %410, i32 0, i32 3
  store i8* %403, i8** %411, align 8
  %412 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %413 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %414 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 2
  %416 = load %struct.TYPE_5__*, %struct.TYPE_5__** %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i8* @trinity_convert_did_to_freq(%struct.radeon_device* %412, i32 %421)
  %423 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %424 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 2
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %425, align 8
  %427 = load i32, i32* %11, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  store i8* %422, i8** %430, align 8
  br label %431

431:                                              ; preds = %392
  %432 = load i32, i32* %11, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %11, align 4
  br label %389

434:                                              ; preds = %389
  br label %435

435:                                              ; preds = %434, %1
  store i32 0, i32* %2, align 4
  br label %436

436:                                              ; preds = %435, %36
  %437 = load i32, i32* %2, align 4
  ret i32 %437
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_8__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @sumo_construct_sclk_voltage_mapping_table(%struct.radeon_device*, i32*, i32) #1

declare dso_local i32 @sumo_construct_vid_mapping_table(%struct.radeon_device*, i32*, i32) #1

declare dso_local i8* @trinity_convert_did_to_freq(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
