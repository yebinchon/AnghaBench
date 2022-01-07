; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_mc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_5.c_vcn_v2_5_mc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@UVD = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_VCN = common dso_local global i64 0, align 8
@mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET0 = common dso_local global i32 0, align 4
@AMDGPU_UVD_FIRMWARE_OFFSET = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE0 = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET1 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE1 = common dso_local global i32 0, align 4
@AMDGPU_VCN_STACK_SIZE = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_OFFSET2 = common dso_local global i32 0, align 4
@mmUVD_VCPU_CACHE_SIZE2 = common dso_local global i32 0, align 4
@AMDGPU_VCN_CONTEXT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vcn_v2_5_mc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v2_5_mc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 4
  %13 = call i32 @AMDGPU_GPU_PAGE_ALIGN(i64 %12)
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %195, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %198

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %195

31:                                               ; preds = %21
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %31
  %39 = load i32, i32* @UVD, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WREG32_SOC15(i32 %39, i32 %40, i32 %41, i32 %49)
  %51 = load i32, i32* @UVD, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i64, i64* @AMDGPU_UCODE_ID_VCN, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @WREG32_SOC15(i32 %51, i32 %52, i32 %53, i32 %61)
  %63 = load i32, i32* @UVD, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %66 = call i32 @WREG32_SOC15(i32 %63, i32 %64, i32 %65, i32 0)
  store i32 0, i32* %4, align 4
  br label %103

67:                                               ; preds = %31
  %68 = load i32, i32* @UVD, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @lower_32_bits(i32 %79)
  %81 = call i32 @WREG32_SOC15(i32 %68, i32 %69, i32 %70, i32 %80)
  %82 = load i32, i32* @UVD, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH, align 4
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @upper_32_bits(i32 %93)
  %95 = call i32 @WREG32_SOC15(i32 %82, i32 %83, i32 %84, i32 %94)
  %96 = load i32, i32* %3, align 4
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* @UVD, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET0, align 4
  %100 = load i32, i32* @AMDGPU_UVD_FIRMWARE_OFFSET, align 4
  %101 = ashr i32 %100, 3
  %102 = call i32 @WREG32_SOC15(i32 %97, i32 %98, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %67, %38
  %104 = load i32, i32* @UVD, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE0, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @WREG32_SOC15(i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @UVD, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_LOW, align 4
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %120, %121
  %123 = call i32 @lower_32_bits(i32 %122)
  %124 = call i32 @WREG32_SOC15(i32 %109, i32 %110, i32 %111, i32 %123)
  %125 = load i32, i32* @UVD, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @mmUVD_LMI_VCPU_CACHE1_64BIT_BAR_HIGH, align 4
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %136, %137
  %139 = call i32 @upper_32_bits(i32 %138)
  %140 = call i32 @WREG32_SOC15(i32 %125, i32 %126, i32 %127, i32 %139)
  %141 = load i32, i32* @UVD, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET1, align 4
  %144 = call i32 @WREG32_SOC15(i32 %141, i32 %142, i32 %143, i32 0)
  %145 = load i32, i32* @UVD, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE1, align 4
  %148 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %149 = call i32 @WREG32_SOC15(i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* @UVD, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_LOW, align 4
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %165 = add nsw i32 %163, %164
  %166 = call i32 @lower_32_bits(i32 %165)
  %167 = call i32 @WREG32_SOC15(i32 %150, i32 %151, i32 %152, i32 %166)
  %168 = load i32, i32* @UVD, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @mmUVD_LMI_VCPU_CACHE2_64BIT_BAR_HIGH, align 4
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %172 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* @AMDGPU_VCN_STACK_SIZE, align 4
  %183 = add nsw i32 %181, %182
  %184 = call i32 @upper_32_bits(i32 %183)
  %185 = call i32 @WREG32_SOC15(i32 %168, i32 %169, i32 %170, i32 %184)
  %186 = load i32, i32* @UVD, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @mmUVD_VCPU_CACHE_OFFSET2, align 4
  %189 = call i32 @WREG32_SOC15(i32 %186, i32 %187, i32 %188, i32 0)
  %190 = load i32, i32* @UVD, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @mmUVD_VCPU_CACHE_SIZE2, align 4
  %193 = load i32, i32* @AMDGPU_VCN_CONTEXT_SIZE, align 4
  %194 = call i32 @WREG32_SOC15(i32 %190, i32 %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %103, %30
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %14

198:                                              ; preds = %14
  ret void
}

declare dso_local i32 @AMDGPU_GPU_PAGE_ALIGN(i64) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
