; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_sriov_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_sriov_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_26__, %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_26__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32, %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.mmsch_v1_0_cmd_direct_write = type { %struct.TYPE_27__, %struct.TYPE_22__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.mmsch_v1_0_cmd_direct_read_modify_write = type { %struct.TYPE_28__, %struct.TYPE_23__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.mmsch_v1_0_cmd_direct_polling = type { %struct.TYPE_29__, %struct.TYPE_24__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.mmsch_v1_0_cmd_end = type { %struct.TYPE_30__, %struct.TYPE_25__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.mmsch_v1_0_init_header = type { i32, i64, i32, i32, i32, i32 }

@MMSCH_COMMAND__DIRECT_REG_WRITE = common dso_local global i32 0, align 4
@MMSCH_COMMAND__DIRECT_REG_READ_MODIFY_WRITE = common dso_local global i32 0, align 4
@MMSCH_COMMAND__DIRECT_REG_POLLING = common dso_local global i32 0, align 4
@MMSCH_COMMAND__END = common dso_local global i32 0, align 4
@MMSCH_VERSION = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_STATUS = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_UVD = common dso_local global i64 0, align 8
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@AMDGPU_UVD_FIRMWARE_OFFSET = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@AMDGPU_UVD_HEAP_SIZE = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@AMDGPU_UVD_STACK_SIZE = common dso_local global i32 0, align 4
@AMDGPU_UVD_SESSION_SIZE = common dso_local global i32 0, align 4
@mmUVD_GP_SCRATCH4 = common dso_local global i32 0, align 4
@mmUVD_CGC_CTRL = common dso_local global i32 0, align 4
@UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK = common dso_local global i32 0, align 4
@mmUVD_MASTINT_EN = common dso_local global i32 0, align 4
@UVD_MASTINT_EN__VCPU_EN_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL2 = common dso_local global i32 0, align 4
@UVD_LMI_CTRL2__STALL_ARB_UMC_MASK = common dso_local global i32 0, align 4
@mmUVD_SOFT_RESET = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__RBC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__CSM_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__CXW_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__TAP_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK = common dso_local global i32 0, align 4
@mmUVD_LMI_CTRL = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK = common dso_local global i32 0, align 4
@UVD_LMI_CTRL__REQ_MODE_MASK = common dso_local global i32 0, align 4
@mmUVD_VCPU_CNTL = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL__CLK_EN_MASK = common dso_local global i32 0, align 4
@UVD_MASTINT_EN__SYS_EN_MASK = common dso_local global i32 0, align 4
@UVD_STATUS__VCPU_REPORT__SHIFT = common dso_local global i32 0, align 4
@UVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_NO_FETCH = common dso_local global i32 0, align 4
@mmUVD_RBC_RB_CNTL = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_LO = common dso_local global i32 0, align 4
@mmUVD_RB_BASE_HI = common dso_local global i32 0, align 4
@mmUVD_RB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @uvd_v7_0_sriov_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_sriov_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmsch_v1_0_cmd_direct_write, align 4
  %9 = alloca %struct.mmsch_v1_0_cmd_direct_read_modify_write, align 4
  %10 = alloca %struct.mmsch_v1_0_cmd_direct_polling, align 4
  %11 = alloca %struct.mmsch_v1_0_cmd_end, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mmsch_v1_0_init_header*, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %7, align 4
  %15 = bitcast %struct.mmsch_v1_0_cmd_direct_write* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %struct.mmsch_v1_0_cmd_direct_read_modify_write* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = bitcast %struct.mmsch_v1_0_cmd_direct_polling* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = bitcast %struct.mmsch_v1_0_cmd_end* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = bitcast i32* %24 to %struct.mmsch_v1_0_init_header*
  store %struct.mmsch_v1_0_init_header* %25, %struct.mmsch_v1_0_init_header** %13, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* @MMSCH_COMMAND__DIRECT_REG_WRITE, align 4
  %27 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_write, %struct.mmsch_v1_0_cmd_direct_write* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @MMSCH_COMMAND__DIRECT_REG_READ_MODIFY_WRITE, align 4
  %30 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_read_modify_write, %struct.mmsch_v1_0_cmd_direct_read_modify_write* %9, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @MMSCH_COMMAND__DIRECT_REG_POLLING, align 4
  %33 = getelementptr inbounds %struct.mmsch_v1_0_cmd_direct_polling, %struct.mmsch_v1_0_cmd_direct_polling* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @MMSCH_COMMAND__END, align 4
  %36 = getelementptr inbounds %struct.mmsch_v1_0_cmd_end, %struct.mmsch_v1_0_cmd_end* %11, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %39 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %494

42:                                               ; preds = %1
  %43 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %44 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %494

47:                                               ; preds = %42
  %48 = load i32, i32* @MMSCH_VERSION, align 4
  %49 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %50 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %52 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %51, i32 0, i32 2
  store i32 8, i32* %52, align 8
  %53 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %54 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %47
  %58 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %59 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %64 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %67 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %78

68:                                               ; preds = %57, %47
  %69 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %70 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %73 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %77 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %62
  %79 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %80 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %479, %78
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %482

92:                                               ; preds = %85
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %14, align 4
  %98 = shl i32 1, %97
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %479

102:                                              ; preds = %92
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 2
  store %struct.amdgpu_ring* %110, %struct.amdgpu_ring** %3, align 8
  %111 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 4
  %120 = call i32 @AMDGPU_GPU_PAGE_ALIGN(i64 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @UVD, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @mmUVD_STATUS, align 4
  %124 = call i32 @SOC15_REG_OFFSET(i32 %121, i32 %122, i32 %123)
  %125 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %124, i32 -1, i32 4)
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %102
  %133 = load i32, i32* @UVD, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %136 = call i32 @SOC15_REG_OFFSET(i32 %133, i32 %134, i32 %135)
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = load i64, i64* @AMDGPU_UCODE_ID_UVD, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %136, i32 %144)
  %146 = load i32, i32* @UVD, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %149 = call i32 @SOC15_REG_OFFSET(i32 %146, i32 %147, i32 %148)
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = load i64, i64* @AMDGPU_UCODE_ID_UVD, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %149, i32 %157)
  %159 = load i32, i32* @UVD, align 4
  %160 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %161 = call i32 @SOC15_REG_OFFSET(i32 %159, i32 0, i32 %160)
  %162 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %161, i32 0)
  store i32 0, i32* %4, align 4
  br label %201

163:                                              ; preds = %102
  %164 = load i32, i32* @UVD, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %167 = call i32 @SOC15_REG_OFFSET(i32 %164, i32 %165, i32 %166)
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @lower_32_bits(i32 %176)
  %178 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %167, i32 %177)
  %179 = load i32, i32* @UVD, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %182 = call i32 @SOC15_REG_OFFSET(i32 %179, i32 %180, i32 %181)
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @upper_32_bits(i32 %191)
  %193 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %182, i32 %192)
  %194 = load i32, i32* %5, align 4
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* @UVD, align 4
  %196 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %197 = call i32 @SOC15_REG_OFFSET(i32 %195, i32 0, i32 %196)
  %198 = load i32, i32* @AMDGPU_UVD_FIRMWARE_OFFSET, align 4
  %199 = ashr i32 %198, 3
  %200 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %197, i32 %199)
  br label %201

201:                                              ; preds = %163, %132
  %202 = load i32, i32* @UVD, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE0, align 4
  %205 = call i32 @SOC15_REG_OFFSET(i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %205, i32 %206)
  %208 = load i32, i32* @UVD, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW, align 4
  %211 = call i32 @SOC15_REG_OFFSET(i32 %208, i32 %209, i32 %210)
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %213 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %214, align 8
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = add nsw i32 %220, %221
  %223 = call i32 @lower_32_bits(i32 %222)
  %224 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %211, i32 %223)
  %225 = load i32, i32* @UVD, align 4
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH, align 4
  %228 = call i32 @SOC15_REG_OFFSET(i32 %225, i32 %226, i32 %227)
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %231, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = add nsw i32 %237, %238
  %240 = call i32 @upper_32_bits(i32 %239)
  %241 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %228, i32 %240)
  %242 = load i32, i32* @UVD, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET1, align 4
  %245 = call i32 @SOC15_REG_OFFSET(i32 %242, i32 %243, i32 %244)
  %246 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %245, i32 2097152)
  %247 = load i32, i32* @UVD, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE1, align 4
  %250 = call i32 @SOC15_REG_OFFSET(i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* @AMDGPU_UVD_HEAP_SIZE, align 4
  %252 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %250, i32 %251)
  %253 = load i32, i32* @UVD, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW, align 4
  %256 = call i32 @SOC15_REG_OFFSET(i32 %253, i32 %254, i32 %255)
  %257 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %258 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %259, align 8
  %261 = load i32, i32* %14, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %4, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* @AMDGPU_UVD_HEAP_SIZE, align 4
  %269 = add nsw i32 %267, %268
  %270 = call i32 @lower_32_bits(i32 %269)
  %271 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %256, i32 %270)
  %272 = load i32, i32* @UVD, align 4
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH, align 4
  %275 = call i32 @SOC15_REG_OFFSET(i32 %272, i32 %273, i32 %274)
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %277 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %278, align 8
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %4, align 4
  %286 = add nsw i32 %284, %285
  %287 = load i32, i32* @AMDGPU_UVD_HEAP_SIZE, align 4
  %288 = add nsw i32 %286, %287
  %289 = call i32 @upper_32_bits(i32 %288)
  %290 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %275, i32 %289)
  %291 = load i32, i32* @UVD, align 4
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET2, align 4
  %294 = call i32 @SOC15_REG_OFFSET(i32 %291, i32 %292, i32 %293)
  %295 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %294, i32 4194304)
  %296 = load i32, i32* @UVD, align 4
  %297 = load i32, i32* %14, align 4
  %298 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE2, align 4
  %299 = call i32 @SOC15_REG_OFFSET(i32 %296, i32 %297, i32 %298)
  %300 = load i32, i32* @AMDGPU_UVD_STACK_SIZE, align 4
  %301 = load i32, i32* @AMDGPU_UVD_SESSION_SIZE, align 4
  %302 = mul nsw i32 %301, 40
  %303 = add nsw i32 %300, %302
  %304 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %299, i32 %303)
  %305 = load i32, i32* @UVD, align 4
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* @mmUVD_GP_SCRATCH4, align 4
  %308 = call i32 @SOC15_REG_OFFSET(i32 %305, i32 %306, i32 %307)
  %309 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %310 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %308, i32 %312)
  %314 = load i32, i32* @UVD, align 4
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* @mmUVD_CGC_CTRL, align 4
  %317 = call i32 @SOC15_REG_OFFSET(i32 %314, i32 %315, i32 %316)
  %318 = load i32, i32* @UVD_CGC_CTRL__DYN_CLOCK_MODE_MASK, align 4
  %319 = xor i32 %318, -1
  %320 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %317, i32 %319, i32 0)
  %321 = load i32, i32* @UVD, align 4
  %322 = load i32, i32* %14, align 4
  %323 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %324 = call i32 @SOC15_REG_OFFSET(i32 %321, i32 %322, i32 %323)
  %325 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %326 = xor i32 %325, -1
  %327 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %324, i32 %326, i32 0)
  %328 = load i32, i32* @UVD, align 4
  %329 = load i32, i32* %14, align 4
  %330 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %331 = call i32 @SOC15_REG_OFFSET(i32 %328, i32 %329, i32 %330)
  %332 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %333 = xor i32 %332, -1
  %334 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %335 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %331, i32 %333, i32 %334)
  %336 = load i32, i32* @UVD, align 4
  %337 = load i32, i32* %14, align 4
  %338 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %339 = call i32 @SOC15_REG_OFFSET(i32 %336, i32 %337, i32 %338)
  %340 = load i32, i32* @UVD_SOFT_RESET__LMI_SOFT_RESET_MASK, align 4
  %341 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @UVD_SOFT_RESET__LBSI_SOFT_RESET_MASK, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* @UVD_SOFT_RESET__RBC_SOFT_RESET_MASK, align 4
  %346 = or i32 %344, %345
  %347 = load i32, i32* @UVD_SOFT_RESET__CSM_SOFT_RESET_MASK, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* @UVD_SOFT_RESET__CXW_SOFT_RESET_MASK, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @UVD_SOFT_RESET__TAP_SOFT_RESET_MASK, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* @UVD_SOFT_RESET__LMI_UMC_SOFT_RESET_MASK, align 4
  %354 = or i32 %352, %353
  %355 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %339, i32 %354)
  %356 = load i32, i32* @UVD, align 4
  %357 = load i32, i32* %14, align 4
  %358 = load i32, i32* @mmUVD_LMI_CTRL, align 4
  %359 = call i32 @SOC15_REG_OFFSET(i32 %356, i32 %357, i32 %358)
  %360 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER__SHIFT, align 4
  %361 = shl i32 64, %360
  %362 = load i32, i32* @UVD_LMI_CTRL__WRITE_CLEAN_TIMER_EN_MASK, align 4
  %363 = or i32 %361, %362
  %364 = load i32, i32* @UVD_LMI_CTRL__DATA_COHERENCY_EN_MASK, align 4
  %365 = or i32 %363, %364
  %366 = load i32, i32* @UVD_LMI_CTRL__VCPU_DATA_COHERENCY_EN_MASK, align 4
  %367 = or i32 %365, %366
  %368 = load i32, i32* @UVD_LMI_CTRL__REQ_MODE_MASK, align 4
  %369 = or i32 %367, %368
  %370 = sext i32 %369 to i64
  %371 = or i64 %370, 1048576
  %372 = trunc i64 %371 to i32
  %373 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %359, i32 %372)
  %374 = load i32, i32* @UVD, align 4
  %375 = load i32, i32* %14, align 4
  %376 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %377 = call i32 @SOC15_REG_OFFSET(i32 %374, i32 %375, i32 %376)
  %378 = load i32, i32* @UVD_SOFT_RESET__VCPU_SOFT_RESET_MASK, align 4
  %379 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %377, i32 %378)
  %380 = load i32, i32* @UVD, align 4
  %381 = load i32, i32* %14, align 4
  %382 = load i32, i32* @mmUVD_VCPU_CNTL, align 4
  %383 = call i32 @SOC15_REG_OFFSET(i32 %380, i32 %381, i32 %382)
  %384 = load i32, i32* @UVD_VCPU_CNTL__CLK_EN_MASK, align 4
  %385 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %383, i32 %384)
  %386 = load i32, i32* @UVD, align 4
  %387 = load i32, i32* %14, align 4
  %388 = load i32, i32* @mmUVD_MASTINT_EN, align 4
  %389 = call i32 @SOC15_REG_OFFSET(i32 %386, i32 %387, i32 %388)
  %390 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %391 = load i32, i32* @UVD_MASTINT_EN__SYS_EN_MASK, align 4
  %392 = or i32 %390, %391
  %393 = xor i32 %392, -1
  %394 = load i32, i32* @UVD_MASTINT_EN__VCPU_EN_MASK, align 4
  %395 = load i32, i32* @UVD_MASTINT_EN__SYS_EN_MASK, align 4
  %396 = or i32 %394, %395
  %397 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %389, i32 %393, i32 %396)
  %398 = load i32, i32* @UVD, align 4
  %399 = load i32, i32* %14, align 4
  %400 = load i32, i32* @mmUVD_STATUS, align 4
  %401 = call i32 @SOC15_REG_OFFSET(i32 %398, i32 %399, i32 %400)
  %402 = load i32, i32* @UVD_STATUS__VCPU_REPORT__SHIFT, align 4
  %403 = shl i32 2, %402
  %404 = xor i32 %403, -1
  %405 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %401, i32 %404, i32 0)
  %406 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %407 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @order_base_2(i32 %408)
  store i32 %409, i32* %5, align 4
  %410 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %411 = load i32, i32* @RB_BUFSZ, align 4
  %412 = load i32, i32* %5, align 4
  %413 = call i32 @REG_SET_FIELD(i32 0, i32 %410, i32 %411, i32 %412)
  store i32 %413, i32* %6, align 4
  %414 = load i32, i32* %6, align 4
  %415 = load i32, i32* @UVD_RBC_RB_CNTL, align 4
  %416 = load i32, i32* @RB_NO_FETCH, align 4
  %417 = call i32 @REG_SET_FIELD(i32 %414, i32 %415, i32 %416, i32 1)
  store i32 %417, i32* %6, align 4
  %418 = load i32, i32* @UVD, align 4
  %419 = load i32, i32* %14, align 4
  %420 = load i32, i32* @mmUVD_RBC_RB_CNTL, align 4
  %421 = call i32 @SOC15_REG_OFFSET(i32 %418, i32 %419, i32 %420)
  %422 = load i32, i32* %6, align 4
  %423 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %421, i32 %422)
  %424 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %425 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 3
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %426, align 8
  %428 = load i32, i32* %14, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 1
  %432 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %431, align 8
  %433 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %432, i64 0
  store %struct.amdgpu_ring* %433, %struct.amdgpu_ring** %3, align 8
  %434 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %435 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %434, i32 0, i32 2
  store i64 0, i64* %435, align 8
  %436 = load i32, i32* @UVD, align 4
  %437 = load i32, i32* %14, align 4
  %438 = load i32, i32* @mmUVD_RB_BASE_LO, align 4
  %439 = call i32 @SOC15_REG_OFFSET(i32 %436, i32 %437, i32 %438)
  %440 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %441 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %439, i32 %442)
  %444 = load i32, i32* @UVD, align 4
  %445 = load i32, i32* %14, align 4
  %446 = load i32, i32* @mmUVD_RB_BASE_HI, align 4
  %447 = call i32 @SOC15_REG_OFFSET(i32 %444, i32 %445, i32 %446)
  %448 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %449 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @upper_32_bits(i32 %450)
  %452 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %447, i32 %451)
  %453 = load i32, i32* @UVD, align 4
  %454 = load i32, i32* %14, align 4
  %455 = load i32, i32* @mmUVD_RB_SIZE, align 4
  %456 = call i32 @SOC15_REG_OFFSET(i32 %453, i32 %454, i32 %455)
  %457 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %458 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = sdiv i32 %459, 4
  %461 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %456, i32 %460)
  %462 = load i32, i32* @UVD, align 4
  %463 = load i32, i32* %14, align 4
  %464 = load i32, i32* @mmUVD_SOFT_RESET, align 4
  %465 = call i32 @SOC15_REG_OFFSET(i32 %462, i32 %463, i32 %464)
  %466 = call i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32 %465, i32 0)
  %467 = load i32, i32* @UVD, align 4
  %468 = load i32, i32* %14, align 4
  %469 = load i32, i32* @mmUVD_LMI_CTRL2, align 4
  %470 = call i32 @SOC15_REG_OFFSET(i32 %467, i32 %468, i32 %469)
  %471 = load i32, i32* @UVD_LMI_CTRL2__STALL_ARB_UMC_MASK, align 4
  %472 = xor i32 %471, -1
  %473 = call i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32 %470, i32 %472, i32 0)
  %474 = load i32, i32* @UVD, align 4
  %475 = load i32, i32* %14, align 4
  %476 = load i32, i32* @mmUVD_STATUS, align 4
  %477 = call i32 @SOC15_REG_OFFSET(i32 %474, i32 %475, i32 %476)
  %478 = call i32 @MMSCH_V1_0_INSERT_DIRECT_POLL(i32 %477, i32 2, i32 2)
  br label %479

479:                                              ; preds = %201, %101
  %480 = load i32, i32* %14, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %14, align 4
  br label %85

482:                                              ; preds = %85
  %483 = load i32*, i32** %12, align 8
  %484 = bitcast i32* %483 to i8*
  %485 = call i32 @memcpy(i8* %484, %struct.mmsch_v1_0_cmd_end* %11, i32 8)
  %486 = load i32, i32* %7, align 4
  %487 = sext i32 %486 to i64
  %488 = add i64 %487, 2
  %489 = trunc i64 %488 to i32
  store i32 %489, i32* %7, align 4
  %490 = load i32, i32* %7, align 4
  %491 = sext i32 %490 to i64
  %492 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %13, align 8
  %493 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %492, i32 0, i32 1
  store i64 %491, i64* %493, align 8
  br label %494

494:                                              ; preds = %482, %42, %1
  %495 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %496 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %497 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %497, i32 0, i32 0
  %499 = call i32 @uvd_v7_0_mmsch_start(%struct.amdgpu_device* %495, %struct.TYPE_21__* %498)
  ret i32 %499
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AMDGPU_GPU_PAGE_ALIGN(i64) #2

declare dso_local i32 @MMSCH_V1_0_INSERT_DIRECT_RD_MOD_WT(i32, i32, i32) #2

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #2

declare dso_local i32 @MMSCH_V1_0_INSERT_DIRECT_WT(i32, i32) #2

declare dso_local i32 @lower_32_bits(i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @order_base_2(i32) #2

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #2

declare dso_local i32 @MMSCH_V1_0_INSERT_DIRECT_POLL(i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, %struct.mmsch_v1_0_cmd_end*, i32) #2

declare dso_local i32 @uvd_v7_0_mmsch_start(%struct.amdgpu_device*, %struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
