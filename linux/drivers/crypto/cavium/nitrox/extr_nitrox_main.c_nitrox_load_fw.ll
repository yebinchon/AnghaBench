; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_nitrox_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i32, i32 }
%struct.firmware = type { i64 }
%struct.ucode = type { i32, i32*, i32 }
%union.ucd_core_eid_ucode_block_num = type { i64 }
%union.aqm_grp_execmsk_lo = type { i64 }
%union.aqm_grp_execmsk_hi = type { i64 }

@SE_FW = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Loading firmware \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get firmware %s\0A\00", align 1
@CNN55XX_MAX_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid ucode size: %u for firmware %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VERSION_LEN = common dso_local global i32 0, align 4
@DEFAULT_SE_GROUP = common dso_local global i32 0, align 4
@CNN55XX_UCD_BLOCK_SIZE = common dso_local global i32 0, align 4
@AE_FW = common dso_local global i8* null, align 8
@DEFAULT_AE_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_device*)* @nitrox_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_load_fw(%struct.nitrox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nitrox_device*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ucode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.ucd_core_eid_ucode_block_num, align 8
  %10 = alloca %union.aqm_grp_execmsk_lo, align 8
  %11 = alloca %union.aqm_grp_execmsk_hi, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %3, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** @SE_FW, align 8
  store i8* %15, i8** %5, align 8
  %16 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %17 = call i32 @DEV(%struct.nitrox_device* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %22 = call i32 @DEV(%struct.nitrox_device* %21)
  %23 = call i32 @request_firmware(%struct.firmware** %4, i8* %20, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %28 = call i32 @DEV(%struct.nitrox_device* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %2, align 4
  br label %246

32:                                               ; preds = %1
  %33 = load %struct.firmware*, %struct.firmware** %4, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.ucode*
  store %struct.ucode* %36, %struct.ucode** %6, align 8
  %37 = load %struct.ucode*, %struct.ucode** %6, align 8
  %38 = getelementptr inbounds %struct.ucode, %struct.ucode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @CNN55XX_MAX_UCODE_SIZE, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44, %32
  %49 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %50 = call i32 @DEV(%struct.nitrox_device* %49)
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %51, i8* %52)
  %54 = load %struct.firmware*, %struct.firmware** %4, align 8
  %55 = call i32 @release_firmware(%struct.firmware* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %246

58:                                               ; preds = %44
  %59 = load %struct.ucode*, %struct.ucode** %6, align 8
  %60 = getelementptr inbounds %struct.ucode, %struct.ucode* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %7, align 8
  %62 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %63 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load %struct.ucode*, %struct.ucode** %6, align 8
  %70 = getelementptr inbounds %struct.ucode, %struct.ucode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @VERSION_LEN, align 4
  %73 = sub nsw i32 %72, 2
  %74 = call i32 @memcpy(i8* %68, i32 %71, i32 %73)
  %75 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %76 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @VERSION_LEN, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @write_to_ucd_unit(%struct.nitrox_device* %85, i32 %86, i32* %87, i32 0)
  %89 = load %struct.firmware*, %struct.firmware** %4, align 8
  %90 = call i32 @release_firmware(%struct.firmware* %89)
  %91 = load i32, i32* @DEFAULT_SE_GROUP, align 4
  %92 = call i32 @POM_GRP_EXECMASKX(i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @nitrox_write_csr(%struct.nitrox_device* %93, i32 %94, i64 -1)
  %96 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i64*
  store i64 0, i64* %96, align 8
  %97 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i64*
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @CNN55XX_UCD_BLOCK_SIZE, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %58
  %102 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i32*
  store i32 1, i32* %102, align 8
  br label %105

103:                                              ; preds = %58
  %104 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i32*
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %103, %101
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %109 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @UCD_SE_EID_UCODE_BLOCK_NUMX(i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %117 = load i32, i32* %8, align 4
  %118 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i64*
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @nitrox_write_csr(%struct.nitrox_device* %116, i32 %117, i64 %119)
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %106

124:                                              ; preds = %106
  %125 = load i8*, i8** @AE_FW, align 8
  store i8* %125, i8** %5, align 8
  %126 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %127 = call i32 @DEV(%struct.nitrox_device* %126)
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @dev_info(i32 %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %128)
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %132 = call i32 @DEV(%struct.nitrox_device* %131)
  %133 = call i32 @request_firmware(%struct.firmware** %4, i8* %130, i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %124
  %137 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %138 = call i32 @DEV(%struct.nitrox_device* %137)
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 (i32, i8*, ...) @dev_err(i32 %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %2, align 4
  br label %246

142:                                              ; preds = %124
  %143 = load %struct.firmware*, %struct.firmware** %4, align 8
  %144 = getelementptr inbounds %struct.firmware, %struct.firmware* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.ucode*
  store %struct.ucode* %146, %struct.ucode** %6, align 8
  %147 = load %struct.ucode*, %struct.ucode** %6, align 8
  %148 = getelementptr inbounds %struct.ucode, %struct.ucode* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @be32_to_cpu(i32 %149)
  %151 = mul nsw i32 %150, 2
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %142
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @CNN55XX_MAX_UCODE_SIZE, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154, %142
  %159 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %160 = call i32 @DEV(%struct.nitrox_device* %159)
  %161 = load i32, i32* %12, align 4
  %162 = load i8*, i8** %5, align 8
  %163 = call i32 (i32, i8*, ...) @dev_err(i32 %160, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %161, i8* %162)
  %164 = load %struct.firmware*, %struct.firmware** %4, align 8
  %165 = call i32 @release_firmware(%struct.firmware* %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %246

168:                                              ; preds = %154
  %169 = load %struct.ucode*, %struct.ucode** %6, align 8
  %170 = getelementptr inbounds %struct.ucode, %struct.ucode* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  store i32* %171, i32** %7, align 8
  %172 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %173 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load %struct.ucode*, %struct.ucode** %6, align 8
  %180 = getelementptr inbounds %struct.ucode, %struct.ucode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @VERSION_LEN, align 4
  %183 = sub nsw i32 %182, 2
  %184 = call i32 @memcpy(i8* %178, i32 %181, i32 %183)
  %185 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %186 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i8**, i8*** %187, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @VERSION_LEN, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8 0, i8* %194, align 1
  %195 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %196 = load i32, i32* %12, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = call i32 @write_to_ucd_unit(%struct.nitrox_device* %195, i32 %196, i32* %197, i32 2)
  %199 = load %struct.firmware*, %struct.firmware** %4, align 8
  %200 = call i32 @release_firmware(%struct.firmware* %199)
  %201 = load i32, i32* @DEFAULT_AE_GROUP, align 4
  %202 = call i32 @AQM_GRP_EXECMSK_LOX(i32 %201)
  store i32 %202, i32* %8, align 4
  %203 = bitcast %union.aqm_grp_execmsk_lo* %10 to i32*
  store i32 -1, i32* %203, align 8
  %204 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %205 = load i32, i32* %8, align 4
  %206 = bitcast %union.aqm_grp_execmsk_lo* %10 to i64*
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @nitrox_write_csr(%struct.nitrox_device* %204, i32 %205, i64 %207)
  %209 = load i32, i32* @DEFAULT_AE_GROUP, align 4
  %210 = call i32 @AQM_GRP_EXECMSK_HIX(i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = bitcast %union.aqm_grp_execmsk_hi* %11 to i32*
  store i32 -1, i32* %211, align 8
  %212 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %213 = load i32, i32* %8, align 4
  %214 = bitcast %union.aqm_grp_execmsk_hi* %11 to i64*
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @nitrox_write_csr(%struct.nitrox_device* %212, i32 %213, i64 %215)
  %217 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i64*
  store i64 0, i64* %217, align 8
  %218 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i64*
  store i64 0, i64* %218, align 8
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @CNN55XX_UCD_BLOCK_SIZE, align 4
  %221 = icmp sle i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %168
  %223 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i32*
  store i32 1, i32* %223, align 8
  br label %226

224:                                              ; preds = %168
  %225 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i32*
  store i32 0, i32* %225, align 8
  br label %226

226:                                              ; preds = %224, %222
  store i32 0, i32* %14, align 4
  br label %227

227:                                              ; preds = %242, %226
  %228 = load i32, i32* %14, align 4
  %229 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %230 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %228, %232
  br i1 %233, label %234, label %245

234:                                              ; preds = %227
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @UCD_AE_EID_UCODE_BLOCK_NUMX(i32 %235)
  store i32 %236, i32* %8, align 4
  %237 = load %struct.nitrox_device*, %struct.nitrox_device** %3, align 8
  %238 = load i32, i32* %8, align 4
  %239 = bitcast %union.ucd_core_eid_ucode_block_num* %9 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @nitrox_write_csr(%struct.nitrox_device* %237, i32 %238, i64 %240)
  br label %242

242:                                              ; preds = %234
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %14, align 4
  br label %227

245:                                              ; preds = %227
  store i32 0, i32* %2, align 4
  br label %246

246:                                              ; preds = %245, %158, %136, %48, %26
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @write_to_ucd_unit(%struct.nitrox_device*, i32, i32*, i32) #1

declare dso_local i32 @POM_GRP_EXECMASKX(i32) #1

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i64) #1

declare dso_local i32 @UCD_SE_EID_UCODE_BLOCK_NUMX(i32) #1

declare dso_local i32 @AQM_GRP_EXECMSK_LOX(i32) #1

declare dso_local i32 @AQM_GRP_EXECMSK_HIX(i32) #1

declare dso_local i32 @UCD_AE_EID_UCODE_BLOCK_NUMX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
