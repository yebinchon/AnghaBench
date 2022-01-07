; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_sriov_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_sriov_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_22__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32 }
%struct.mmsch_v1_0_cmd_direct_write = type { %struct.TYPE_23__, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.mmsch_v1_0_cmd_direct_read_modify_write = type { %struct.TYPE_24__, %struct.TYPE_19__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.mmsch_v1_0_cmd_direct_polling = type { %struct.TYPE_25__, %struct.TYPE_20__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.mmsch_v1_0_cmd_end = type { %struct.TYPE_26__, %struct.TYPE_21__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.mmsch_v1_0_init_header = type { i32, i64, i32, i32, i32, i32 }

@MMSCH_COMMAND__DIRECT_REG_WRITE = common dso_local global i32 0, align 4
@MMSCH_COMMAND__DIRECT_REG_READ_MODIFY_WRITE = common dso_local global i32 0, align 4
@MMSCH_COMMAND__DIRECT_REG_POLLING = common dso_local global i32 0, align 4
@MMSCH_COMMAND__END = common dso_local global i32 0, align 4
@MMSCH_VERSION = common dso_local global i32 0, align 4
@VCE = common dso_local global i32 0, align 4
@mmVCE_RB_BASE_LO = common dso_local global i32 0, align 4
@mmVCE_RB_BASE_HI = common dso_local global i32 0, align 4
@mmVCE_RB_SIZE = common dso_local global i32 0, align 4
@mmVCE_LMI_CTRL = common dso_local global i32 0, align 4
@mmVCE_LMI_CACHE_CTRL = common dso_local global i32 0, align 4
@mmVCE_LMI_SWAP_CNTL = common dso_local global i32 0, align 4
@mmVCE_LMI_SWAP_CNTL1 = common dso_local global i32 0, align 4
@mmVCE_LMI_VM_CTRL = common dso_local global i32 0, align 4
@AMDGPU_VCE_FIRMWARE_OFFSET = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@AMDGPU_UCODE_ID_VCE = common dso_local global i64 0, align 8
@mmVCE_LMI_VCPU_CACHE_40BIT_BAR0 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_64BIT_BAR0 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_40BIT_BAR1 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_64BIT_BAR1 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_40BIT_BAR2 = common dso_local global i32 0, align 4
@mmVCE_LMI_VCPU_CACHE_64BIT_BAR2 = common dso_local global i32 0, align 4
@VCE_V4_0_FW_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@VCE_V4_0_STACK_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@VCE_V4_0_DATA_SIZE = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@mmVCE_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@mmVCE_LMI_CTRL2 = common dso_local global i32 0, align 4
@mmVCE_SYS_INT_EN = common dso_local global i32 0, align 4
@VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK = common dso_local global i32 0, align 4
@mmVCE_STATUS = common dso_local global i32 0, align 4
@VCE_STATUS__JOB_BUSY_MASK = common dso_local global i32 0, align 4
@mmVCE_VCPU_CNTL = common dso_local global i32 0, align 4
@VCE_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@mmVCE_SOFT_RESET = common dso_local global i32 0, align 4
@VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @vce_v4_0_sriov_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v4_0_sriov_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmsch_v1_0_cmd_direct_write, align 4
  %8 = alloca %struct.mmsch_v1_0_cmd_direct_read_modify_write, align 4
  %9 = alloca %struct.mmsch_v1_0_cmd_direct_polling, align 4
  %10 = alloca %struct.mmsch_v1_0_cmd_end, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mmsch_v1_0_init_header*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %6, align 4
  %16 = bitcast %struct.mmsch_v1_0_cmd_direct_write* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = bitcast %struct.mmsch_v1_0_cmd_direct_read_modify_write* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = bitcast %struct.mmsch_v1_0_cmd_direct_polling* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = bitcast %struct.mmsch_v1_0_cmd_end* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = bitcast i32* %25 to %struct.mmsch_v1_0_init_header*
  store %struct.mmsch_v1_0_init_header* %26, %struct.mmsch_v1_0_init_header** %12, align 8
  %27 = load i32, i32* @MMSCH_COMMAND__DIRECT_REG_WRITE, align 4
  %28 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_write, %struct.mmsch_v1_0_cmd_direct_write* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @MMSCH_COMMAND__DIRECT_REG_READ_MODIFY_WRITE, align 4
  %31 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_read_modify_write, %struct.mmsch_v1_0_cmd_direct_read_modify_write* %8, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MMSCH_COMMAND__DIRECT_REG_POLLING, align 4
  %34 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_polling, %struct.mmsch_v1_0_cmd_direct_polling* %9, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @MMSCH_COMMAND__END, align 4
  %37 = getelementptr inbounds %struct.mmsch_v1_0_cmd_end, %struct.mmsch_v1_0_cmd_end* %10, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %40 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %344

43:                                               ; preds = %1
  %44 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %45 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %344

48:                                               ; preds = %43
  %49 = load i32, i32* @MMSCH_VERSION, align 4
  %50 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %51 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %53 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %52, i32 0, i32 2
  store i32 8, i32* %53, align 8
  %54 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %55 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %48
  %59 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %60 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %65 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %68 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %79

69:                                               ; preds = %58, %48
  %70 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %71 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %74 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %78 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %69, %63
  %80 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %81 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %11, align 8
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %88, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %89, i64 0
  store %struct.amdgpu_ring* %90, %struct.amdgpu_ring** %3, align 8
  %91 = load i32, i32* @VCE, align 4
  %92 = load i32, i32* @mmVCE_RB_BASE_LO, align 4
  %93 = call i32 @SOC15_REG_OFFSET(i32 %91, i32 0, i32 %92)
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @lower_32_bits(i32 %96)
  %98 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %93, i32 %97)
  %99 = load i32, i32* @VCE, align 4
  %100 = load i32, i32* @mmVCE_RB_BASE_HI, align 4
  %101 = call i32 @SOC15_REG_OFFSET(i32 %99, i32 0, i32 %100)
  %102 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @upper_32_bits(i32 %104)
  %106 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %101, i32 %105)
  %107 = load i32, i32* @VCE, align 4
  %108 = load i32, i32* @mmVCE_RB_SIZE, align 4
  %109 = call i32 @SOC15_REG_OFFSET(i32 %107, i32 0, i32 %108)
  %110 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %111 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %112, 4
  %114 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %109, i32 %113)
  %115 = load i32, i32* @VCE, align 4
  %116 = load i32, i32* @mmVCE_LMI_CTRL, align 4
  %117 = call i32 @SOC15_REG_OFFSET(i32 %115, i32 0, i32 %116)
  %118 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %117, i32 3768320)
  %119 = load i32, i32* @VCE, align 4
  %120 = load i32, i32* @mmVCE_LMI_CACHE_CTRL, align 4
  %121 = call i32 @SOC15_REG_OFFSET(i32 %119, i32 0, i32 %120)
  %122 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %121, i32 -2, i32 0)
  %123 = load i32, i32* @VCE, align 4
  %124 = load i32, i32* @mmVCE_LMI_SWAP_CNTL, align 4
  %125 = call i32 @SOC15_REG_OFFSET(i32 %123, i32 0, i32 %124)
  %126 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %125, i32 0)
  %127 = load i32, i32* @VCE, align 4
  %128 = load i32, i32* @mmVCE_LMI_SWAP_CNTL1, align 4
  %129 = call i32 @SOC15_REG_OFFSET(i32 %127, i32 0, i32 %128)
  %130 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %129, i32 0)
  %131 = load i32, i32* @VCE, align 4
  %132 = load i32, i32* @mmVCE_LMI_VM_CTRL, align 4
  %133 = call i32 @SOC15_REG_OFFSET(i32 %131, i32 0, i32 %132)
  %134 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %133, i32 0)
  %135 = load i32, i32* @AMDGPU_VCE_FIRMWARE_OFFSET, align 4
  store i32 %135, i32* %4, align 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %180

142:                                              ; preds = %79
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load i64, i64* @AMDGPU_UCODE_ID_VCE, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %13, align 4
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load i64, i64* @AMDGPU_UCODE_ID_VCE, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = shl i32 %159, 32
  %161 = load i32, i32* %13, align 4
  %162 = or i32 %160, %161
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* @VCE, align 4
  %164 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR0, align 4
  %165 = call i32 @SOC15_REG_OFFSET(i32 %163, i32 0, i32 %164)
  %166 = load i32, i32* %15, align 4
  %167 = ashr i32 %166, 8
  %168 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %165, i32 %167)
  %169 = load i32, i32* @VCE, align 4
  %170 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_64BIT_BAR0, align 4
  %171 = call i32 @SOC15_REG_OFFSET(i32 %169, i32 0, i32 %170)
  %172 = load i32, i32* %15, align 4
  %173 = ashr i32 %172, 40
  %174 = and i32 %173, 255
  %175 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %171, i32 %174)
  %176 = load i32, i32* @VCE, align 4
  %177 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET0, align 4
  %178 = call i32 @SOC15_REG_OFFSET(i32 %176, i32 0, i32 %177)
  %179 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %178, i32 0)
  br label %206

180:                                              ; preds = %79
  %181 = load i32, i32* @VCE, align 4
  %182 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR0, align 4
  %183 = call i32 @SOC15_REG_OFFSET(i32 %181, i32 0, i32 %182)
  %184 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %185 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = ashr i32 %187, 8
  %189 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %183, i32 %188)
  %190 = load i32, i32* @VCE, align 4
  %191 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_64BIT_BAR0, align 4
  %192 = call i32 @SOC15_REG_OFFSET(i32 %190, i32 0, i32 %191)
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = ashr i32 %196, 40
  %198 = and i32 %197, 255
  %199 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %192, i32 %198)
  %200 = load i32, i32* @VCE, align 4
  %201 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET0, align 4
  %202 = call i32 @SOC15_REG_OFFSET(i32 %200, i32 0, i32 %201)
  %203 = load i32, i32* %4, align 4
  %204 = and i32 %203, -251658241
  %205 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %202, i32 %204)
  br label %206

206:                                              ; preds = %180, %142
  %207 = load i32, i32* @VCE, align 4
  %208 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR1, align 4
  %209 = call i32 @SOC15_REG_OFFSET(i32 %207, i32 0, i32 %208)
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %211 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = ashr i32 %213, 8
  %215 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %209, i32 %214)
  %216 = load i32, i32* @VCE, align 4
  %217 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_64BIT_BAR1, align 4
  %218 = call i32 @SOC15_REG_OFFSET(i32 %216, i32 0, i32 %217)
  %219 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %220 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = ashr i32 %222, 40
  %224 = and i32 %223, 255
  %225 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %218, i32 %224)
  %226 = load i32, i32* @VCE, align 4
  %227 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_40BIT_BAR2, align 4
  %228 = call i32 @SOC15_REG_OFFSET(i32 %226, i32 0, i32 %227)
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = ashr i32 %232, 8
  %234 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %228, i32 %233)
  %235 = load i32, i32* @VCE, align 4
  %236 = load i32, i32* @mmVCE_LMI_VCPU_CACHE_64BIT_BAR2, align 4
  %237 = call i32 @SOC15_REG_OFFSET(i32 %235, i32 0, i32 %236)
  %238 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %239 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = ashr i32 %241, 40
  %243 = and i32 %242, 255
  %244 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %237, i32 %243)
  %245 = load i32, i32* @VCE_V4_0_FW_SIZE, align 4
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* @VCE, align 4
  %247 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE0, align 4
  %248 = call i32 @SOC15_REG_OFFSET(i32 %246, i32 0, i32 %247)
  %249 = load i32, i32* %5, align 4
  %250 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %248, i32 %249)
  %251 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %252 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %206
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %258, %259
  br label %262

261:                                              ; preds = %206
  br label %262

262:                                              ; preds = %261, %257
  %263 = phi i32 [ %260, %257 ], [ 0, %261 ]
  store i32 %263, i32* %4, align 4
  %264 = load i32, i32* @VCE_V4_0_STACK_SIZE, align 4
  store i32 %264, i32* %5, align 4
  %265 = load i32, i32* @VCE, align 4
  %266 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET1, align 4
  %267 = call i32 @SOC15_REG_OFFSET(i32 %265, i32 0, i32 %266)
  %268 = load i32, i32* %4, align 4
  %269 = and i32 %268, -251658241
  %270 = or i32 %269, 16777216
  %271 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %267, i32 %270)
  %272 = load i32, i32* @VCE, align 4
  %273 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE1, align 4
  %274 = call i32 @SOC15_REG_OFFSET(i32 %272, i32 0, i32 %273)
  %275 = load i32, i32* %5, align 4
  %276 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %274, i32 %275)
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* %4, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %4, align 4
  %280 = load i32, i32* @VCE_V4_0_DATA_SIZE, align 4
  store i32 %280, i32* %5, align 4
  %281 = load i32, i32* @VCE, align 4
  %282 = load i32, i32* @mmVCE_VCPU_CACHE_OFFSET2, align 4
  %283 = call i32 @SOC15_REG_OFFSET(i32 %281, i32 0, i32 %282)
  %284 = load i32, i32* %4, align 4
  %285 = and i32 %284, -251658241
  %286 = or i32 %285, 33554432
  %287 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %283, i32 %286)
  %288 = load i32, i32* @VCE, align 4
  %289 = load i32, i32* @mmVCE_VCPU_CACHE_SIZE2, align 4
  %290 = call i32 @SOC15_REG_OFFSET(i32 %288, i32 0, i32 %289)
  %291 = load i32, i32* %5, align 4
  %292 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %290, i32 %291)
  %293 = load i32, i32* @VCE, align 4
  %294 = load i32, i32* @mmVCE_LMI_CTRL2, align 4
  %295 = call i32 @SOC15_REG_OFFSET(i32 %293, i32 0, i32 %294)
  %296 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %295, i32 -257, i32 0)
  %297 = load i32, i32* @VCE, align 4
  %298 = load i32, i32* @mmVCE_SYS_INT_EN, align 4
  %299 = call i32 @SOC15_REG_OFFSET(i32 %297, i32 0, i32 %298)
  %300 = load i32, i32* @VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK, align 4
  %301 = load i32, i32* @VCE_SYS_INT_EN__VCE_SYS_INT_TRAP_INTERRUPT_EN_MASK, align 4
  %302 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %299, i32 %300, i32 %301)
  %303 = load i32, i32* @VCE, align 4
  %304 = load i32, i32* @mmVCE_STATUS, align 4
  %305 = call i32 @SOC15_REG_OFFSET(i32 %303, i32 0, i32 %304)
  %306 = load i32, i32* @VCE_STATUS__JOB_BUSY_MASK, align 4
  %307 = load i32, i32* @VCE_STATUS__JOB_BUSY_MASK, align 4
  %308 = xor i32 %307, -1
  %309 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %305, i32 %306, i32 %308)
  %310 = load i32, i32* @VCE, align 4
  %311 = load i32, i32* @mmVCE_VCPU_CNTL, align 4
  %312 = call i32 @SOC15_REG_OFFSET(i32 %310, i32 0, i32 %311)
  %313 = load i32, i32* @VCE_VCPU_CNTL__CLK_EN_MASK, align 4
  %314 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %312, i32 -2097154, i32 %313)
  %315 = load i32, i32* @VCE, align 4
  %316 = load i32, i32* @mmVCE_SOFT_RESET, align 4
  %317 = call i32 @SOC15_REG_OFFSET(i32 %315, i32 0, i32 %316)
  %318 = load i32, i32* @VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK, align 4
  %319 = xor i32 %318, -1
  %320 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %317, i32 %319, i32 0)
  %321 = load i32, i32* @VCE, align 4
  %322 = load i32, i32* @mmVCE_STATUS, align 4
  %323 = call i32 @SOC15_REG_OFFSET(i32 %321, i32 0, i32 %322)
  %324 = load i32, i32* @VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK, align 4
  %325 = load i32, i32* @VCE_STATUS_VCPU_REPORT_FW_LOADED_MASK, align 4
  %326 = call i32 @MMSCH_V1_0_INSERT_DIRECT_POLL(i32 %323, i32 %324, i32 %325)
  %327 = load i32, i32* @VCE, align 4
  %328 = load i32, i32* @mmVCE_STATUS, align 4
  %329 = call i32 @SOC15_REG_OFFSET(i32 %327, i32 0, i32 %328)
  %330 = load i32, i32* @VCE_STATUS__JOB_BUSY_MASK, align 4
  %331 = xor i32 %330, -1
  %332 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %329, i32 %331, i32 0)
  %333 = load i32*, i32** %11, align 8
  %334 = bitcast i32* %333 to i8*
  %335 = call i32 @memcpy(i8* %334, %struct.mmsch_v1_0_cmd_end* %10, i32 8)
  %336 = load i32, i32* %6, align 4
  %337 = sext i32 %336 to i64
  %338 = add i64 %337, 2
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %6, align 4
  %340 = load i32, i32* %6, align 4
  %341 = sext i32 %340 to i64
  %342 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %12, align 8
  %343 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %342, i32 0, i32 1
  store i64 %341, i64* %343, align 8
  br label %344

344:                                              ; preds = %262, %43, %1
  %345 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %346 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %347 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = call i32 @vce_v4_0_mmsch_start(%struct.amdgpu_device* %345, %struct.TYPE_17__* %348)
  ret i32 %349
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32, i32) #2

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #2

declare dso_local i32 @lower_32_bits(i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32, i32, i32) #2

declare dso_local i32 @MMSCH_V1_0_INSERT_DIRECT_POLL(i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, %struct.mmsch_v1_0_cmd_end*, i32) #2

declare dso_local i32 @vce_v4_0_mmsch_start(%struct.amdgpu_device*, %struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
