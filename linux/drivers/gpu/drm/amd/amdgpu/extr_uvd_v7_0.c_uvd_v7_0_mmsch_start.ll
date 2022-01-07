; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_mmsch_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_mmsch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i64* }
%struct.amdgpu_mm_table = type { i64, i32 }
%struct.mmsch_v1_0_init_header = type { i32, i32, i32 }

@VCE = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_CTX_ADDR_LO = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_CTX_ADDR_HI = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_VMID = common dso_local global i32 0, align 4
@VCE_MMSCH_VF_VMID__VF_CTX_VMID_MASK = common dso_local global i32 0, align 4
@VCE_MMSCH_VF_VMID__VF_CTX_VMID__SHIFT = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_CTX_SIZE = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_MAILBOX_RESP = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_MAILBOX_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"failed to init MMSCH, mmVCE_MMSCH_VF_MAILBOX_RESP = %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_mm_table*)* @uvd_v7_0_mmsch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_mmsch_start(%struct.amdgpu_device* %0, %struct.amdgpu_mm_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_mm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmsch_v1_0_init_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_mm_table* %1, %struct.amdgpu_mm_table** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.amdgpu_mm_table*, %struct.amdgpu_mm_table** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_mm_table, %struct.amdgpu_mm_table* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.amdgpu_mm_table*, %struct.amdgpu_mm_table** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_mm_table, %struct.amdgpu_mm_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mmsch_v1_0_init_header*
  store %struct.mmsch_v1_0_init_header* %18, %struct.mmsch_v1_0_init_header** %9, align 8
  %19 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %9, align 8
  %20 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %9, align 8
  %23 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %9, align 8
  %27 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @VCE, align 4
  %31 = load i32, i32* @mmVCE_MMSCH_VF_CTX_ADDR_LO, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = call i32 @WREG32_SOC15(i32 %30, i32 0, i32 %31, i32 %33)
  %35 = load i32, i32* @VCE, align 4
  %36 = load i32, i32* @mmVCE_MMSCH_VF_CTX_ADDR_HI, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @upper_32_bits(i32 %37)
  %39 = call i32 @WREG32_SOC15(i32 %35, i32 0, i32 %36, i32 %38)
  %40 = load i32, i32* @VCE, align 4
  %41 = load i32, i32* @mmVCE_MMSCH_VF_VMID, align 4
  %42 = call i32 @RREG32_SOC15(i32 %40, i32 0, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @VCE_MMSCH_VF_VMID__VF_CTX_VMID_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @VCE_MMSCH_VF_VMID__VF_CTX_VMID__SHIFT, align 4
  %48 = shl i32 0, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @VCE, align 4
  %52 = load i32, i32* @mmVCE_MMSCH_VF_VMID, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @WREG32_SOC15(i32 %51, i32 0, i32 %52, i32 %53)
  %55 = load i32, i32* @VCE, align 4
  %56 = load i32, i32* @mmVCE_MMSCH_VF_CTX_SIZE, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @WREG32_SOC15(i32 %55, i32 0, i32 %56, i32 %57)
  %59 = load i32, i32* @VCE, align 4
  %60 = load i32, i32* @mmVCE_MMSCH_VF_MAILBOX_RESP, align 4
  %61 = call i32 @WREG32_SOC15(i32 %59, i32 0, i32 %60, i32 0)
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %132, %2
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %135

69:                                               ; preds = %62
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %132

79:                                               ; preds = %69
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @WDOORBELL32(i32 %91, i32 0)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i64, i64* %96, i64 %108
  store i64 0, i64* %109, align 8
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %79, %78
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %62

135:                                              ; preds = %62
  %136 = load i32, i32* @VCE, align 4
  %137 = load i32, i32* @mmVCE_MMSCH_VF_MAILBOX_HOST, align 4
  %138 = call i32 @WREG32_SOC15(i32 %136, i32 0, i32 %137, i32 268435457)
  %139 = load i32, i32* @VCE, align 4
  %140 = load i32, i32* @mmVCE_MMSCH_VF_MAILBOX_RESP, align 4
  %141 = call i32 @RREG32_SOC15(i32 %139, i32 0, i32 %140)
  store i32 %141, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  br label %142

142:                                              ; preds = %156, %135
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, 268435458
  %145 = icmp ne i32 %144, 268435458
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = call i32 @udelay(i32 10)
  %148 = load i32, i32* @VCE, align 4
  %149 = load i32, i32* @mmVCE_MMSCH_VF_MAILBOX_RESP, align 4
  %150 = call i32 @RREG32_SOC15(i32 %148, i32 0, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %146
  br label %157

156:                                              ; preds = %146
  br label %142

157:                                              ; preds = %155, %142
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %157
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @dev_err(i32 %163, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @EBUSY, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %169

168:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %160
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WDOORBELL32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
