; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_system_info_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_get_system_info_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_9__, %struct.TYPE_7__, i32, %struct.smu8_hwmgr* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.smu8_hwmgr = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i8**, i8* }
%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32, i32*, %struct.TYPE_6__*, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@IntegratedSystemInfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Could not retrieve the Integrated System Info Table!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported IGP table: %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"The htcTmpLmt should be larger than htcHystLmt.\0A\00", align 1
@SMU8_NUM_NBPSTATES = common dso_local global i64 0, align 8
@SMU8_NUM_NBPMEMORYCLOCK = common dso_local global i64 0, align 8
@MAX_DISPLAY_CLOCK_LEVEL = common dso_local global i64 0, align 8
@SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EnableDFSBypass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_get_system_info_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_get_system_info_data(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu8_hwmgr*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 3
  %13 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %12, align 8
  store %struct.smu8_hwmgr* %13, %struct.smu8_hwmgr** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DATA, align 4
  %18 = load i32, i32* @IntegratedSystemInfo, align 4
  %19 = call i32 @GetIndexIntoMasterTable(i32 %17, i32 %18)
  %20 = call i64 @smu_atom_get_data_table(i32 %16, i32 %19, i32* %10, i32* %8, i32* %9)
  %21 = inttoptr i64 %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = icmp eq %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %308

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 9
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %308

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %43 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %50 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %57 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %64 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le16_to_cpu(i32 %68)
  %70 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %71 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 12
  store i8* %69, i8** %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %37
  br label %82

78:                                               ; preds = %37
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  br label %82

82:                                               ; preds = %78, %77
  %83 = phi i32 [ 5, %77 ], [ %81, %78 ]
  %84 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %85 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %96

92:                                               ; preds = %82
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %92, %91
  %97 = phi i32 [ 203, %91 ], [ %95, %92 ]
  %98 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %99 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 5
  store i32 %97, i32* %100, align 4
  %101 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %102 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %106 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp sle i32 %104, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %96
  %111 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %308

114:                                              ; preds = %96
  %115 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %116 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = ashr i32 %123, 3
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %119, %114
  %128 = phi i1 [ false, %114 ], [ %126, %119 ]
  %129 = zext i1 %128 to i32
  %130 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %131 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 6
  store i32 %129, i32* %132, align 8
  store i64 0, i64* %6, align 8
  br label %133

133:                                              ; preds = %169, %127
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @SMU8_NUM_NBPSTATES, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %172

137:                                              ; preds = %133
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @SMU8_NUM_NBPMEMORYCLOCK, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 8
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %150 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 %148, i32* %154, align 4
  br label %155

155:                                              ; preds = %141, %137
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %6, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %164 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 8
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32 %162, i32* %168, align 4
  br label %169

169:                                              ; preds = %155
  %170 = load i64, i64* %6, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %6, align 8
  br label %133

172:                                              ; preds = %133
  store i64 0, i64* %6, align 8
  br label %173

173:                                              ; preds = %192, %172
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* @MAX_DISPLAY_CLOCK_LEVEL, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %173
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i64, i64* %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le32_to_cpu(i32 %184)
  %186 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %187 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 9
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %185, i32* %191, align 4
  br label %192

192:                                              ; preds = %177
  %193 = load i64, i64* %6, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %6, align 8
  br label %173

195:                                              ; preds = %173
  store i64 0, i64* %6, align 8
  br label %196

196:                                              ; preds = %214, %195
  %197 = load i64, i64* %6, align 8
  %198 = load i64, i64* @SMU8_NUM_NBPSTATES, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %196
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* %6, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i8* @le16_to_cpu(i32 %206)
  %208 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %209 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 11
  %211 = load i8**, i8*** %210, align 8
  %212 = load i64, i64* %6, align 8
  %213 = getelementptr inbounds i8*, i8** %211, i64 %212
  store i8* %207, i8** %213, align 8
  br label %214

214:                                              ; preds = %200
  %215 = load i64, i64* %6, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %6, align 8
  br label %196

217:                                              ; preds = %196
  %218 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %219 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %274, label %223

223:                                              ; preds = %217
  store i64 1, i64* %6, align 8
  br label %224

224:                                              ; preds = %270, %223
  %225 = load i64, i64* %6, align 8
  %226 = load i64, i64* @SMU8_NUM_NBPSTATES, align 8
  %227 = icmp ult i64 %225, %226
  br i1 %227, label %228, label %273

228:                                              ; preds = %224
  %229 = load i64, i64* %6, align 8
  %230 = load i64, i64* @SMU8_NUM_NBPMEMORYCLOCK, align 8
  %231 = icmp ult i64 %229, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %228
  %233 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %234 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 7
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %240 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 7
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* %6, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  store i32 %238, i32* %244, align 4
  br label %245

245:                                              ; preds = %232, %228
  %246 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %247 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 8
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %253 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 8
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* %6, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32 %251, i32* %257, align 4
  %258 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %259 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 11
  %261 = load i8**, i8*** %260, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 0
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %265 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 11
  %267 = load i8**, i8*** %266, align 8
  %268 = load i64, i64* %6, align 8
  %269 = getelementptr inbounds i8*, i8** %267, i64 %268
  store i8* %263, i8** %269, align 8
  br label %270

270:                                              ; preds = %245
  %271 = load i64, i64* %6, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %6, align 8
  br label %224

273:                                              ; preds = %224
  br label %274

274:                                              ; preds = %273, %217
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @le32_to_cpu(i32 %277)
  %279 = load i32, i32* @SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %274
  %283 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %284 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @PHM_PlatformCaps_EnableDFSBypass, align 4
  %288 = call i32 @phm_cap_set(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %282, %274
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %4, align 8
  %294 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 10
  store i32 %292, i32* %295, align 8
  %296 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %297 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %298 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = call i32 @smu8_construct_max_power_limits_table(%struct.pp_hwmgr* %296, i32* %299)
  %301 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = call i32 @smu8_init_dynamic_state_adjustment_rule_settings(%struct.pp_hwmgr* %301, i32* %305)
  %307 = load i32, i32* %7, align 4
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %289, %110, %31, %24
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local i64 @smu_atom_get_data_table(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

declare dso_local i32 @smu8_construct_max_power_limits_table(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @smu8_init_dynamic_state_adjustment_rule_settings(%struct.pp_hwmgr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
