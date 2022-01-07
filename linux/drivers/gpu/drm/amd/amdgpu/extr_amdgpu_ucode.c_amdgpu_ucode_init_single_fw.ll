; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ucode.c_amdgpu_ucode_init_single_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ucode.c_amdgpu_ucode_init_single_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i32, i8*, i32, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.amdgpu_firmware_info = type { i64, i32, i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.common_firmware_header = type { i32, i32 }
%struct.gfx_firmware_header_v1_0 = type { i32, i32 }
%struct.dmcu_firmware_header_v1_0 = type { i32, i32 }

@AMDGPU_UCODE_ID_STORAGE = common dso_local global i64 0, align 8
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC1 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC2 = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC1_JT = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_CP_MEC2_JT = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_DMCU_ERAM = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_DMCU_INTV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_firmware_info*, i32, i8*)* @amdgpu_ucode_init_single_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ucode_init_single_fw(%struct.amdgpu_device* %0, %struct.amdgpu_firmware_info* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_firmware_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.common_firmware_header*, align 8
  %11 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %12 = alloca %struct.dmcu_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_firmware_info* %1, %struct.amdgpu_firmware_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.common_firmware_header* null, %struct.common_firmware_header** %10, align 8
  store %struct.gfx_firmware_header_v1_0* null, %struct.gfx_firmware_header_v1_0** %11, align 8
  store %struct.dmcu_firmware_header_v1_0* null, %struct.dmcu_firmware_header_v1_0** %12, align 8
  %13 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %14 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp eq %struct.TYPE_6__* null, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %392

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %21 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AMDGPU_UCODE_ID_STORAGE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %392

31:                                               ; preds = %18
  %32 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %33 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %37, %struct.common_firmware_header** %10, align 8
  %38 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %43, %struct.gfx_firmware_header_v1_0** %11, align 8
  %44 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %45 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.dmcu_firmware_header_v1_0*
  store %struct.dmcu_firmware_header_v1_0* %49, %struct.dmcu_firmware_header_v1_0** %12, align 8
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %110, label %56

56:                                               ; preds = %31
  %57 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %58 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %137

62:                                               ; preds = %56
  %63 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %137

68:                                               ; preds = %62
  %69 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %70 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1_JT, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %137

74:                                               ; preds = %68
  %75 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %76 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2_JT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %137

80:                                               ; preds = %74
  %81 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %82 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %80
  %87 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %88 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %137

92:                                               ; preds = %86
  %93 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %94 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %92
  %99 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %100 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_ERAM, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %98
  %105 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %106 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_INTV, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %137

110:                                              ; preds = %104, %31
  %111 = load %struct.common_firmware_header*, %struct.common_firmware_header** %10, align 8
  %112 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32_to_cpu(i32 %113)
  %115 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %116 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %118 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %121 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load %struct.common_firmware_header*, %struct.common_firmware_header** %10, align 8
  %127 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  %132 = bitcast i32* %131 to i8*
  %133 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %134 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @memcpy(i8* %119, i8* %132, i32 %135)
  br label %391

137:                                              ; preds = %104, %98, %92, %86, %80, %74, %68, %62, %56
  %138 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %139 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %145 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %182

149:                                              ; preds = %143, %137
  %150 = load %struct.common_firmware_header*, %struct.common_firmware_header** %10, align 8
  %151 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le32_to_cpu(i32 %152)
  %154 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %155 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le32_to_cpu(i32 %156)
  %158 = mul nsw i32 %157, 4
  %159 = sub nsw i32 %153, %158
  %160 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %161 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %163 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %166 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %165, i32 0, i32 3
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = load %struct.common_firmware_header*, %struct.common_firmware_header** %10, align 8
  %172 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @le32_to_cpu(i32 %173)
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %170, i64 %175
  %177 = bitcast i32* %176 to i8*
  %178 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %179 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @memcpy(i8* %164, i8* %177, i32 %180)
  br label %390

182:                                              ; preds = %143
  %183 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %184 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC1_JT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %190 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @AMDGPU_UCODE_ID_CP_MEC2_JT, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %229

194:                                              ; preds = %188, %182
  %195 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %196 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @le32_to_cpu(i32 %197)
  %199 = mul nsw i32 %198, 4
  %200 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %201 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %203 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %206 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %205, i32 0, i32 3
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i32*
  %211 = load %struct.common_firmware_header*, %struct.common_firmware_header** %10, align 8
  %212 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @le32_to_cpu(i32 %213)
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %210, i64 %215
  %217 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %11, align 8
  %218 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @le32_to_cpu(i32 %219)
  %221 = mul nsw i32 %220, 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %216, i64 %222
  %224 = bitcast i32* %223 to i8*
  %225 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %226 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @memcpy(i8* %204, i8* %224, i32 %227)
  br label %389

229:                                              ; preds = %188
  %230 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %231 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_ERAM, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %267

235:                                              ; preds = %229
  %236 = load %struct.common_firmware_header*, %struct.common_firmware_header** %10, align 8
  %237 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @le32_to_cpu(i32 %238)
  %240 = load %struct.dmcu_firmware_header_v1_0*, %struct.dmcu_firmware_header_v1_0** %12, align 8
  %241 = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, %struct.dmcu_firmware_header_v1_0* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @le32_to_cpu(i32 %242)
  %244 = sub nsw i32 %239, %243
  %245 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %246 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 8
  %247 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %248 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %251 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %250, i32 0, i32 3
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to i32*
  %256 = load %struct.common_firmware_header*, %struct.common_firmware_header** %10, align 8
  %257 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le32_to_cpu(i32 %258)
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %255, i64 %260
  %262 = bitcast i32* %261 to i8*
  %263 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %264 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @memcpy(i8* %249, i8* %262, i32 %265)
  br label %388

267:                                              ; preds = %229
  %268 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %269 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @AMDGPU_UCODE_ID_DMCU_INTV, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %306

273:                                              ; preds = %267
  %274 = load %struct.dmcu_firmware_header_v1_0*, %struct.dmcu_firmware_header_v1_0** %12, align 8
  %275 = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, %struct.dmcu_firmware_header_v1_0* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @le32_to_cpu(i32 %276)
  %278 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %279 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 8
  %280 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %281 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %284 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %283, i32 0, i32 3
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to i32*
  %289 = load %struct.common_firmware_header*, %struct.common_firmware_header** %10, align 8
  %290 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @le32_to_cpu(i32 %291)
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %288, i64 %293
  %295 = load %struct.dmcu_firmware_header_v1_0*, %struct.dmcu_firmware_header_v1_0** %12, align 8
  %296 = getelementptr inbounds %struct.dmcu_firmware_header_v1_0, %struct.dmcu_firmware_header_v1_0* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @le32_to_cpu(i32 %297)
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %294, i64 %299
  %301 = bitcast i32* %300 to i8*
  %302 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %303 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @memcpy(i8* %282, i8* %301, i32 %304)
  br label %387

306:                                              ; preds = %267
  %307 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %308 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %332

312:                                              ; preds = %306
  %313 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %314 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %319 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 8
  %320 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %321 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %320, i32 0, i32 2
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %324 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %329 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @memcpy(i8* %322, i8* %327, i32 %330)
  br label %386

332:                                              ; preds = %306
  %333 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %334 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %358

338:                                              ; preds = %332
  %339 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %340 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %345 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 8
  %346 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %347 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %346, i32 0, i32 2
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %350 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 3
  %353 = load i8*, i8** %352, align 8
  %354 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %355 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @memcpy(i8* %348, i8* %353, i32 %356)
  br label %385

358:                                              ; preds = %332
  %359 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %360 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %384

364:                                              ; preds = %358
  %365 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %366 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %371 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %370, i32 0, i32 1
  store i32 %369, i32* %371, align 8
  %372 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %373 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %372, i32 0, i32 2
  %374 = load i8*, i8** %373, align 8
  %375 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %376 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 5
  %379 = load i8*, i8** %378, align 8
  %380 = load %struct.amdgpu_firmware_info*, %struct.amdgpu_firmware_info** %7, align 8
  %381 = getelementptr inbounds %struct.amdgpu_firmware_info, %struct.amdgpu_firmware_info* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = call i32 @memcpy(i8* %374, i8* %379, i32 %382)
  br label %384

384:                                              ; preds = %364, %358
  br label %385

385:                                              ; preds = %384, %338
  br label %386

386:                                              ; preds = %385, %312
  br label %387

387:                                              ; preds = %386, %273
  br label %388

388:                                              ; preds = %387, %235
  br label %389

389:                                              ; preds = %388, %194
  br label %390

390:                                              ; preds = %389, %149
  br label %391

391:                                              ; preds = %390, %110
  store i32 0, i32* %5, align 4
  br label %392

392:                                              ; preds = %391, %30, %17
  %393 = load i32, i32* %5, align 4
  ret i32 %393
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
