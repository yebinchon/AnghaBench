; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_rlc_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_rlc_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_12__, i32, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_13__, i8*, i8* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, i8*, i8*, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i64, i32, %struct.amdgpu_firmware_info* }
%struct.amdgpu_firmware_info = type { i64, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32 }
%struct.common_firmware_header = type { i32 }
%struct.rlc_firmware_header_v2_0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"picasso\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"amdgpu/%s_rlc_am4.bin\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"raven\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"amdgpu/%s_kicker_rlc.bin\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_rlc.bin\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_G = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"gfx9: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i8*)* @gfx_v9_0_init_rlc_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_init_rlc_microcode(%struct.amdgpu_device* %0, i8* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [30 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_firmware_info*, align 8
  %8 = alloca %struct.common_firmware_header*, align 8
  %9 = alloca %struct.rlc_firmware_header_v2_0*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.amdgpu_firmware_info* null, %struct.amdgpu_firmware_info** %7, align 8
  store %struct.common_firmware_header* null, %struct.common_firmware_header** %8, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %2
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 200
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 207
  br i1 %31, label %46, label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 216
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 3
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 223
  br i1 %45, label %46, label %50

46:                                               ; preds = %39, %25
  %47 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @snprintf(i8* %47, i32 30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %70

50:                                               ; preds = %39, %32, %2
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = call i64 @amdgpu_pm_load_smu_firmware(%struct.amdgpu_device* %55, i32* %14)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %14, align 4
  %60 = icmp sge i32 %59, 269867
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @snprintf(i8* %62, i32 30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %69

65:                                               ; preds = %58, %54, %50
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @snprintf(i8* %66, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @request_firmware(%struct.TYPE_14__** %73, i8* %74, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %484

82:                                               ; preds = %70
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = call i32 @amdgpu_ucode_validate(%struct.TYPE_14__* %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.rlc_firmware_header_v2_0*
  store %struct.rlc_firmware_header_v2_0* %94, %struct.rlc_firmware_header_v2_0** %9, align 8
  %95 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %96 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %95, i32 0, i32 12
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %101 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %100, i32 0, i32 12
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16_to_cpu(i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %115

107:                                              ; preds = %82
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %110, %107, %82
  %116 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %117 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %116, i32 0, i32 12
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @le32_to_cpu(i32 %119)
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  store i8* %120, i8** %123, align 8
  %124 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %125 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @le32_to_cpu(i32 %126)
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  %131 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %132 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le32_to_cpu(i32 %133)
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 14
  store i8* %134, i8** %138, align 8
  %139 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %140 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @le32_to_cpu(i32 %141)
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 13
  store i8* %142, i8** %146, align 8
  %147 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %148 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @le32_to_cpu(i32 %149)
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 12
  store i8* %150, i8** %154, align 8
  %155 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %156 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @le32_to_cpu(i32 %157)
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 11
  store i8* %158, i8** %162, align 8
  %163 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %164 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @le32_to_cpu(i32 %165)
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 10
  store i8* %166, i8** %170, align 8
  %171 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %172 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @le32_to_cpu(i32 %173)
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 9
  store i8* %174, i8** %178, align 8
  %179 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %180 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @le32_to_cpu(i32 %181)
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 8
  store i8* %182, i8** %186, align 8
  %187 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %188 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @le32_to_cpu(i32 %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %193 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  store i32 %191, i32* %195, align 4
  %196 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %197 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @le32_to_cpu(i32 %198)
  %200 = ptrtoint i8* %199 to i32
  %201 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %202 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  store i32 %200, i32* %204, align 8
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %211 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %209, %214
  %216 = load i32, i32* @GFP_KERNEL, align 4
  %217 = call i8** @kmalloc(i32 %215, i32 %216)
  %218 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %219 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 7
  store i8** %217, i8*** %221, align 8
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 7
  %226 = load i8**, i8*** %225, align 8
  %227 = icmp ne i8** %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %115
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %6, align 4
  br label %484

231:                                              ; preds = %115
  %232 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %233 = ptrtoint %struct.rlc_firmware_header_v2_0* %232 to i64
  %234 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %235 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %234, i32 0, i32 10
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @le32_to_cpu(i32 %236)
  %238 = getelementptr i8, i8* %237, i64 %233
  %239 = bitcast i8* %238 to i32*
  store i32* %239, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %240

240:                                              ; preds = %264, %231
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %243 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = ashr i32 %246, 2
  %248 = icmp ult i32 %241, %247
  br i1 %248, label %249, label %267

249:                                              ; preds = %240
  %250 = load i32*, i32** %10, align 8
  %251 = load i32, i32* %11, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i8* @le32_to_cpu(i32 %254)
  %256 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %257 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 7
  %260 = load i8**, i8*** %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  store i8* %255, i8** %263, align 8
  br label %264

264:                                              ; preds = %249
  %265 = load i32, i32* %11, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %11, align 4
  br label %240

267:                                              ; preds = %240
  %268 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %269 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 7
  %272 = load i8**, i8*** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %277 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 6
  store i8** %275, i8*** %279, align 8
  %280 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %281 = ptrtoint %struct.rlc_firmware_header_v2_0* %280 to i64
  %282 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %9, align 8
  %283 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %282, i32 0, i32 11
  %284 = load i32, i32* %283, align 4
  %285 = call i8* @le32_to_cpu(i32 %284)
  %286 = getelementptr i8, i8* %285, i64 %281
  %287 = bitcast i8* %286 to i32*
  store i32* %287, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %288

288:                                              ; preds = %312, %267
  %289 = load i32, i32* %11, align 4
  %290 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %291 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = ashr i32 %294, 2
  %296 = icmp ult i32 %289, %295
  br i1 %296, label %297, label %315

297:                                              ; preds = %288
  %298 = load i32*, i32** %10, align 8
  %299 = load i32, i32* %11, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @le32_to_cpu(i32 %302)
  %304 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %305 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 6
  %308 = load i8**, i8*** %307, align 8
  %309 = load i32, i32* %11, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i8*, i8** %308, i64 %310
  store i8* %303, i8** %311, align 8
  br label %312

312:                                              ; preds = %297
  %313 = load i32, i32* %11, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %11, align 4
  br label %288

315:                                              ; preds = %288
  %316 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %317 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %315
  %323 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %324 = call i32 @gfx_v9_0_init_rlc_ext_microcode(%struct.amdgpu_device* %323)
  br label %325

325:                                              ; preds = %322, %315
  %326 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %327 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %483

332:                                              ; preds = %325
  %333 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %334 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 2
  %336 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %335, align 8
  %337 = load i64, i64* @AMDGPU_UCODE_ID_RLC_G, align 8
  %338 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %336, i64 %337
  store %struct.amdgpu_firmware_info* %338, %struct.amdgpu_firmware_info** %7, align 8
  %339 = load i64, i64* @AMDGPU_UCODE_ID_RLC_G, align 8
  %340 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %341 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %340, i32 0, i32 0
  store i64 %339, i64* %341, align 8
  %342 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %343 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %344, align 8
  %346 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %347 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %346, i32 0, i32 1
  store %struct.TYPE_14__* %345, %struct.TYPE_14__** %347, align 8
  %348 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %349 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %348, i32 0, i32 1
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = inttoptr i64 %352 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %353, %struct.common_firmware_header** %8, align 8
  %354 = load %struct.common_firmware_header*, %struct.common_firmware_header** %8, align 8
  %355 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @le32_to_cpu(i32 %356)
  %358 = load i32, i32* @PAGE_SIZE, align 4
  %359 = call i64 @ALIGN(i8* %357, i32 %358)
  %360 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %361 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %364, %359
  %366 = trunc i64 %365 to i32
  store i32 %366, i32* %362, align 8
  %367 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %368 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %482

373:                                              ; preds = %332
  %374 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %375 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 3
  %378 = load i8*, i8** %377, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %380, label %482

380:                                              ; preds = %373
  %381 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %382 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 4
  %385 = load i8*, i8** %384, align 8
  %386 = icmp ne i8* %385, null
  br i1 %386, label %387, label %482

387:                                              ; preds = %380
  %388 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %389 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 5
  %392 = load i8*, i8** %391, align 8
  %393 = icmp ne i8* %392, null
  br i1 %393, label %394, label %482

394:                                              ; preds = %387
  %395 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %396 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 2
  %398 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %397, align 8
  %399 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL, align 8
  %400 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %398, i64 %399
  store %struct.amdgpu_firmware_info* %400, %struct.amdgpu_firmware_info** %7, align 8
  %401 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL, align 8
  %402 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %403 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %402, i32 0, i32 0
  store i64 %401, i64* %403, align 8
  %404 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %405 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %406, align 8
  %408 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %409 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %408, i32 0, i32 1
  store %struct.TYPE_14__* %407, %struct.TYPE_14__** %409, align 8
  %410 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %411 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 3
  %414 = load i8*, i8** %413, align 8
  %415 = load i32, i32* @PAGE_SIZE, align 4
  %416 = call i64 @ALIGN(i8* %414, i32 %415)
  %417 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %418 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = sext i32 %420 to i64
  %422 = add nsw i64 %421, %416
  %423 = trunc i64 %422 to i32
  store i32 %423, i32* %419, align 8
  %424 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %425 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 2
  %427 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %426, align 8
  %428 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM, align 8
  %429 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %427, i64 %428
  store %struct.amdgpu_firmware_info* %429, %struct.amdgpu_firmware_info** %7, align 8
  %430 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM, align 8
  %431 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %432 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %431, i32 0, i32 0
  store i64 %430, i64* %432, align 8
  %433 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %434 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_14__*, %struct.TYPE_14__** %435, align 8
  %437 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %438 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %437, i32 0, i32 1
  store %struct.TYPE_14__* %436, %struct.TYPE_14__** %438, align 8
  %439 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %440 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 4
  %443 = load i8*, i8** %442, align 8
  %444 = load i32, i32* @PAGE_SIZE, align 4
  %445 = call i64 @ALIGN(i8* %443, i32 %444)
  %446 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %447 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = sext i32 %449 to i64
  %451 = add nsw i64 %450, %445
  %452 = trunc i64 %451 to i32
  store i32 %452, i32* %448, align 8
  %453 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %454 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 2
  %456 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %455, align 8
  %457 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM, align 8
  %458 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %456, i64 %457
  store %struct.amdgpu_firmware_info* %458, %struct.amdgpu_firmware_info** %7, align 8
  %459 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM, align 8
  %460 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %461 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %460, i32 0, i32 0
  store i64 %459, i64* %461, align 8
  %462 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %463 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 0
  %465 = load %struct.TYPE_14__*, %struct.TYPE_14__** %464, align 8
  %466 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %467 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %466, i32 0, i32 1
  store %struct.TYPE_14__* %465, %struct.TYPE_14__** %467, align 8
  %468 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %469 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 5
  %472 = load i8*, i8** %471, align 8
  %473 = load i32, i32* @PAGE_SIZE, align 4
  %474 = call i64 @ALIGN(i8* %472, i32 %473)
  %475 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %476 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %475, i32 0, i32 2
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = sext i32 %478 to i64
  %480 = add nsw i64 %479, %474
  %481 = trunc i64 %480 to i32
  store i32 %481, i32* %477, align 8
  br label %482

482:                                              ; preds = %394, %387, %380, %373, %332
  br label %483

483:                                              ; preds = %482, %325
  br label %484

484:                                              ; preds = %483, %228, %81
  %485 = load i32, i32* %6, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %501

487:                                              ; preds = %484
  %488 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %489 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %492 = call i32 @dev_err(i32 %490, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %491)
  %493 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %494 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 0
  %496 = load %struct.TYPE_14__*, %struct.TYPE_14__** %495, align 8
  %497 = call i32 @release_firmware(%struct.TYPE_14__* %496)
  %498 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %499 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %500, align 8
  br label %501

501:                                              ; preds = %487, %484
  %502 = load i32, i32* %6, align 4
  ret i32 %502
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @amdgpu_pm_load_smu_firmware(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_14__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_14__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8** @kmalloc(i32, i32) #1

declare dso_local i32 @gfx_v9_0_init_rlc_ext_microcode(%struct.amdgpu_device*) #1

declare dso_local i64 @ALIGN(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
