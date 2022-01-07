; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv7xx_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv7xx_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.radeon_ps = type { i32, i32 }
%union.pplib_clock_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i32, i32, i32, i32, i32 }
%struct.evergreen_power_info = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i32, %struct.rv7xx_pl* }
%struct.rv7xx_pl = type { i32, i32, i32, i32, i8* }
%struct.rv7xx_ps = type { %struct.rv7xx_pl, %struct.rv7xx_pl, %struct.rv7xx_pl }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@CHIP_CEDAR = common dso_local global i64 0, align 8
@ATOM_PPLIB_CLASSIFICATION_ACPI = common dso_local global i32 0, align 4
@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_ULV = common dso_local global i32 0, align 4
@CHIP_BARTS = common dso_local global i64 0, align 8
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, i32, %union.pplib_clock_info*)* @rv7xx_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv7xx_parse_pplib_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2, %union.pplib_clock_info* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.pplib_clock_info*, align 8
  %9 = alloca %struct.rv7xx_power_info*, align 8
  %10 = alloca %struct.evergreen_power_info*, align 8
  %11 = alloca %struct.rv7xx_ps*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rv7xx_pl*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.pplib_clock_info* %3, %union.pplib_clock_info** %8, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %19 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %18)
  store %struct.rv7xx_power_info* %19, %struct.rv7xx_power_info** %9, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %21 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %20)
  store %struct.evergreen_power_info* %21, %struct.evergreen_power_info** %10, align 8
  %22 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %23 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %22)
  store %struct.rv7xx_ps* %23, %struct.rv7xx_ps** %11, align 8
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %32 [
    i32 0, label %25
    i32 1, label %28
    i32 2, label %31
  ]

25:                                               ; preds = %4
  %26 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %11, align 8
  %27 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %26, i32 0, i32 0
  store %struct.rv7xx_pl* %27, %struct.rv7xx_pl** %14, align 8
  br label %35

28:                                               ; preds = %4
  %29 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %11, align 8
  %30 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %29, i32 0, i32 2
  store %struct.rv7xx_pl* %30, %struct.rv7xx_pl** %14, align 8
  br label %35

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %4, %31
  %33 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %11, align 8
  %34 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %33, i32 0, i32 1
  store %struct.rv7xx_pl* %34, %struct.rv7xx_pl** %14, align 8
  br label %35

35:                                               ; preds = %32, %28, %25
  %36 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHIP_CEDAR, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %35
  %42 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %43 = bitcast %union.pplib_clock_info* %42 to %struct.TYPE_9__*
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %49 = bitcast %union.pplib_clock_info* %48 to %struct.TYPE_9__*
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %56 = bitcast %union.pplib_clock_info* %55 to %struct.TYPE_9__*
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le16_to_cpu(i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %13, align 4
  %61 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %62 = bitcast %union.pplib_clock_info* %61 to %struct.TYPE_9__*
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %69 = bitcast %union.pplib_clock_info* %68 to %struct.TYPE_9__*
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @le16_to_cpu(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %75 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %77 = bitcast %union.pplib_clock_info* %76 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le16_to_cpu(i32 %79)
  %81 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %82 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %84 = bitcast %union.pplib_clock_info* %83 to %struct.TYPE_9__*
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le32_to_cpu(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %90 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %134

91:                                               ; preds = %35
  %92 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %93 = bitcast %union.pplib_clock_info* %92 to %struct.TYPE_10__*
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le16_to_cpu(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %12, align 4
  %98 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %99 = bitcast %union.pplib_clock_info* %98 to %struct.TYPE_10__*
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %106 = bitcast %union.pplib_clock_info* %105 to %struct.TYPE_10__*
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @le16_to_cpu(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %13, align 4
  %111 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %112 = bitcast %union.pplib_clock_info* %111 to %struct.TYPE_10__*
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %119 = bitcast %union.pplib_clock_info* %118 to %struct.TYPE_10__*
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @le16_to_cpu(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %125 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %127 = bitcast %union.pplib_clock_info* %126 to %struct.TYPE_10__*
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le32_to_cpu(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %133 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %91, %41
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %137 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %140 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %142 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 65281
  br i1 %144, label %145, label %157

145:                                              ; preds = %134
  %146 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %147 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %152 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %155 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %150, %145
  br label %157

157:                                              ; preds = %156, %134
  %158 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %159 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_ACPI, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %157
  %165 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %166 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %169 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CHIP_CEDAR, align 8
  %174 = icmp sge i64 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %164
  %176 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %177 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %176, i32 0, i32 4
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %10, align 8
  %180 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %175, %164
  %182 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %11, align 8
  %183 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %191 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %190, i32 0, i32 2
  store i32 1, i32* %191, align 4
  br label %195

192:                                              ; preds = %181
  %193 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %194 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %193, i32 0, i32 2
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %157
  %197 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %198 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_ULV, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %196
  %204 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %205 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @CHIP_BARTS, align 8
  %208 = icmp sge i64 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %203
  %210 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %10, align 8
  %211 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 8
  %213 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %214 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %10, align 8
  %215 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  store %struct.rv7xx_pl* %213, %struct.rv7xx_pl** %216, align 8
  br label %217

217:                                              ; preds = %209, %203
  br label %218

218:                                              ; preds = %217, %196
  %219 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %220 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %223 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp sgt i32 %221, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %218
  %227 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %228 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %231 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %226, %218
  %233 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %234 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %237 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %242 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %9, align 8
  %245 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %240, %232
  %247 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %248 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %275

253:                                              ; preds = %246
  %254 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %255 = call i32 @radeon_atombios_get_default_voltages(%struct.radeon_device* %254, i8** %15, i8** %16, i8** %17)
  %256 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %261 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %263 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %267 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 4
  %268 = load i8*, i8** %15, align 8
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %271 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load i8*, i8** %16, align 8
  %273 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %274 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %273, i32 0, i32 4
  store i8* %272, i8** %274, align 8
  br label %275

275:                                              ; preds = %253, %246
  %276 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %277 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %280 = and i32 %278, %279
  %281 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %320

283:                                              ; preds = %275
  %284 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %285 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %288 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  store i32 %286, i32* %292, align 8
  %293 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %294 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %297 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 1
  store i32 %295, i32* %301, align 4
  %302 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %303 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 2
  store i32 %304, i32* %310, align 8
  %311 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %14, align 8
  %312 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %311, i32 0, i32 4
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %315 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 3
  store i8* %313, i8** %319, align 8
  br label %320

320:                                              ; preds = %283, %275
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @radeon_atombios_get_default_voltages(%struct.radeon_device*, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
