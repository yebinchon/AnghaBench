; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_load_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_load_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dmz_mblock**, i32, %struct.dmz_dev* }
%struct.dmz_mblock = type { i64 }
%struct.dmz_dev = type { i32 }
%struct.dm_zone = type { i32, i32, i32, %struct.dm_zone* }
%struct.dmz_map = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMZ_MAP_UNMAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Chunk %u mapping: invalid data zone ID %u\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMZ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Chunk %u mapping: invalid buffer zone ID %u\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Chunk %u mapping: invalid buffer zone %u\00", align 1
@DMZ_BUF = common dso_local global i32 0, align 4
@DMZ_MAP_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*)* @dmz_load_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_load_mapping(%struct.dmz_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dmz_dev*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca %struct.dm_zone*, align 8
  %7 = alloca %struct.dmz_mblock*, align 8
  %8 = alloca %struct.dmz_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  %14 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %15 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %14, i32 0, i32 14
  %16 = load %struct.dmz_dev*, %struct.dmz_dev** %15, align 8
  store %struct.dmz_dev* %16, %struct.dmz_dev** %4, align 8
  store %struct.dmz_mblock* null, %struct.dmz_mblock** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %18 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dmz_mblock** @kcalloc(i32 %19, i32 8, i32 %20)
  %22 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %22, i32 0, i32 12
  store %struct.dmz_mblock** %21, %struct.dmz_mblock*** %23, align 8
  %24 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %25 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %24, i32 0, i32 12
  %26 = load %struct.dmz_mblock**, %struct.dmz_mblock*** %25, align 8
  %27 = icmp ne %struct.dmz_mblock** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %285

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %194, %31
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %35 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %195

38:                                               ; preds = %32
  %39 = load %struct.dmz_mblock*, %struct.dmz_mblock** %7, align 8
  %40 = icmp ne %struct.dmz_mblock* %39, null
  br i1 %40, label %66, label %41

41:                                               ; preds = %38
  %42 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 1
  %45 = call %struct.dmz_mblock* @dmz_get_mblock(%struct.dmz_metadata* %42, i32 %44)
  store %struct.dmz_mblock* %45, %struct.dmz_mblock** %7, align 8
  %46 = load %struct.dmz_mblock*, %struct.dmz_mblock** %7, align 8
  %47 = call i64 @IS_ERR(%struct.dmz_mblock* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.dmz_mblock*, %struct.dmz_mblock** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.dmz_mblock* %50)
  store i32 %51, i32* %2, align 4
  br label %285

52:                                               ; preds = %41
  %53 = load %struct.dmz_mblock*, %struct.dmz_mblock** %7, align 8
  %54 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %55 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %54, i32 0, i32 12
  %56 = load %struct.dmz_mblock**, %struct.dmz_mblock*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dmz_mblock*, %struct.dmz_mblock** %56, i64 %58
  store %struct.dmz_mblock* %53, %struct.dmz_mblock** %59, align 8
  %60 = load %struct.dmz_mblock*, %struct.dmz_mblock** %7, align 8
  %61 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.dmz_map*
  store %struct.dmz_map* %63, %struct.dmz_map** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %52, %38
  %67 = load %struct.dmz_map*, %struct.dmz_map** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %67, i64 %69
  %71 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %185

78:                                               ; preds = %66
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %81 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp uge i32 %79, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dmz_dev_err(%struct.dmz_dev* %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %285

91:                                               ; preds = %78
  %92 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call %struct.dm_zone* @dmz_get(%struct.dmz_metadata* %92, i32 %93)
  store %struct.dm_zone* %94, %struct.dm_zone** %5, align 8
  %95 = load i32, i32* @DMZ_DATA, align 4
  %96 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %97 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %96, i32 0, i32 2
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %101 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %103 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %104 = call i32 @dmz_get_zone_weight(%struct.dmz_metadata* %102, %struct.dm_zone* %103)
  %105 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %106 = call i64 @dmz_is_rnd(%struct.dm_zone* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %91
  %109 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %110 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %109, i32 0, i32 1
  %111 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %112 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %111, i32 0, i32 10
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  br label %120

114:                                              ; preds = %91
  %115 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %116 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %115, i32 0, i32 1
  %117 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %118 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %117, i32 0, i32 11
  %119 = call i32 @list_add_tail(i32* %116, i32* %118)
  br label %120

120:                                              ; preds = %114, %108
  %121 = load %struct.dmz_map*, %struct.dmz_map** %8, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %121, i64 %123
  %125 = getelementptr inbounds %struct.dmz_map, %struct.dmz_map* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %185

132:                                              ; preds = %120
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %135 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp uge i32 %133, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %132
  %139 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @dmz_dev_err(%struct.dmz_dev* %139, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %285

145:                                              ; preds = %132
  %146 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %147 = load i32, i32* %13, align 4
  %148 = call %struct.dm_zone* @dmz_get(%struct.dmz_metadata* %146, i32 %147)
  store %struct.dm_zone* %148, %struct.dm_zone** %6, align 8
  %149 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %150 = call i64 @dmz_is_rnd(%struct.dm_zone* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @dmz_dev_err(%struct.dmz_dev* %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %285

159:                                              ; preds = %145
  %160 = load i32, i32* @DMZ_DATA, align 4
  %161 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %162 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %161, i32 0, i32 2
  %163 = call i32 @set_bit(i32 %160, i32* %162)
  %164 = load i32, i32* @DMZ_BUF, align 4
  %165 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %166 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %165, i32 0, i32 2
  %167 = call i32 @set_bit(i32 %164, i32* %166)
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %170 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %172 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %173 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %172, i32 0, i32 3
  store %struct.dm_zone* %171, %struct.dm_zone** %173, align 8
  %174 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %175 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %176 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %175, i32 0, i32 3
  store %struct.dm_zone* %174, %struct.dm_zone** %176, align 8
  %177 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %178 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %179 = call i32 @dmz_get_zone_weight(%struct.dmz_metadata* %177, %struct.dm_zone* %178)
  %180 = load %struct.dm_zone*, %struct.dm_zone** %6, align 8
  %181 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %180, i32 0, i32 1
  %182 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %183 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %182, i32 0, i32 10
  %184 = call i32 @list_add_tail(i32* %181, i32* %183)
  br label %185

185:                                              ; preds = %159, %131, %77
  %186 = load i32, i32* %11, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %10, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @DMZ_MAP_ENTRIES, align 4
  %192 = icmp uge i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  store %struct.dmz_mblock* null, %struct.dmz_mblock** %7, align 8
  br label %194

194:                                              ; preds = %193, %185
  br label %32

195:                                              ; preds = %32
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %281, %195
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.dmz_dev*, %struct.dmz_dev** %4, align 8
  %199 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ult i32 %197, %200
  br i1 %201, label %202, label %284

202:                                              ; preds = %196
  %203 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call %struct.dm_zone* @dmz_get(%struct.dmz_metadata* %203, i32 %204)
  store %struct.dm_zone* %205, %struct.dm_zone** %5, align 8
  %206 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %207 = call i64 @dmz_is_meta(%struct.dm_zone* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %281

210:                                              ; preds = %202
  %211 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %212 = call i64 @dmz_is_rnd(%struct.dm_zone* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %216 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %215, i32 0, i32 9
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  br label %224

219:                                              ; preds = %210
  %220 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %221 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %219, %214
  %225 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %226 = call i64 @dmz_is_data(%struct.dm_zone* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  br label %281

229:                                              ; preds = %224
  %230 = load i32, i32* @DMZ_DATA, align 4
  %231 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %232 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %231, i32 0, i32 2
  %233 = call i32 @set_bit(i32 %230, i32* %232)
  %234 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %235 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %236 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %238 = call i64 @dmz_is_rnd(%struct.dm_zone* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %229
  %241 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %242 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %241, i32 0, i32 1
  %243 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %244 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %243, i32 0, i32 8
  %245 = call i32 @list_add_tail(i32* %242, i32* %244)
  %246 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %247 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %246, i32 0, i32 7
  %248 = call i32 @atomic_inc(i32* %247)
  br label %280

249:                                              ; preds = %229
  %250 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %251 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %250, i32 0, i32 5
  %252 = call i64 @atomic_read(i32* %251)
  %253 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %254 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp slt i64 %252, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %249
  %258 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %259 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %258, i32 0, i32 1
  %260 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %261 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %260, i32 0, i32 6
  %262 = call i32 @list_add_tail(i32* %259, i32* %261)
  %263 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %264 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %263, i32 0, i32 5
  %265 = call i32 @atomic_inc(i32* %264)
  %266 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %267 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %267, align 8
  br label %279

270:                                              ; preds = %249
  %271 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %272 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %271, i32 0, i32 1
  %273 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %274 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %273, i32 0, i32 3
  %275 = call i32 @list_add_tail(i32* %272, i32* %274)
  %276 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %277 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %276, i32 0, i32 2
  %278 = call i32 @atomic_inc(i32* %277)
  br label %279

279:                                              ; preds = %270, %257
  br label %280

280:                                              ; preds = %279, %240
  br label %281

281:                                              ; preds = %280, %228, %209
  %282 = load i32, i32* %9, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %9, align 4
  br label %196

284:                                              ; preds = %196
  store i32 0, i32* %2, align 4
  br label %285

285:                                              ; preds = %284, %152, %138, %84, %49, %28
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local %struct.dmz_mblock** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.dmz_mblock* @dmz_get_mblock(%struct.dmz_metadata*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @PTR_ERR(%struct.dmz_mblock*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dmz_dev_err(%struct.dmz_dev*, i8*, i32, i32) #1

declare dso_local %struct.dm_zone* @dmz_get(%struct.dmz_metadata*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dmz_get_zone_weight(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i64 @dmz_is_rnd(%struct.dm_zone*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @dmz_is_meta(%struct.dm_zone*) #1

declare dso_local i64 @dmz_is_data(%struct.dm_zone*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
