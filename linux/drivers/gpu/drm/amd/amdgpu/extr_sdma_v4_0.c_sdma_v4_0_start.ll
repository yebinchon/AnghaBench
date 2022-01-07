; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.amdgpu_ring, %struct.amdgpu_ring }
%struct.TYPE_5__ = type { i64 }

@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL = common dso_local global i32 0, align 4
@mmSDMA0_CNTL = common dso_local global i32 0, align 4
@SDMA0_CNTL = common dso_local global i32 0, align 4
@UTC_L1_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_F32_CNTL = common dso_local global i32 0, align 4
@SDMA0_F32_CNTL = common dso_local global i32 0, align 4
@HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @sdma_v4_0_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = call i32 @sdma_v4_0_ctx_switch_enable(%struct.amdgpu_device* %13, i32 0)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = call i32 @sdma_v4_0_enable(%struct.amdgpu_device* %15, i32 0)
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = call i32 @sdma_v4_0_load_microcode(%struct.amdgpu_device* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %180

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = call i32 @sdma_v4_0_enable(%struct.amdgpu_device* %33, i32 1)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = call i32 @sdma_v4_0_ctx_switch_enable(%struct.amdgpu_device* %35, i32 1)
  br label %37

37:                                               ; preds = %32, %12
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %89, %37
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL, align 4
  %48 = call i32 @WREG32_SDMA(i32 %46, i32 %47, i64 0)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @sdma_v4_0_gfx_resume(%struct.amdgpu_device* %49, i32 %50)
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @sdma_v4_0_page_resume(%struct.amdgpu_device* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %45
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @mmSDMA0_CNTL, align 4
  %64 = call i64 @RREG32_SDMA(i32 %62, i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @SDMA0_CNTL, align 4
  %67 = load i32, i32* @UTC_L1_ENABLE, align 4
  %68 = call i64 @REG_SET_FIELD(i64 %65, i32 %66, i32 %67, i32 1)
  store i64 %68, i64* %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @mmSDMA0_CNTL, align 4
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @WREG32_SDMA(i32 %69, i32 %70, i64 %71)
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @mmSDMA0_F32_CNTL, align 4
  %79 = call i64 @RREG32_SDMA(i32 %77, i32 %78)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* @SDMA0_F32_CNTL, align 4
  %82 = load i32, i32* @HALT, align 4
  %83 = call i64 @REG_SET_FIELD(i64 %80, i32 %81, i32 %82, i32 0)
  store i64 %83, i64* %7, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @mmSDMA0_F32_CNTL, align 4
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @WREG32_SDMA(i32 %84, i32 %85, i64 %86)
  br label %88

88:                                               ; preds = %76, %61
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %38

92:                                               ; preds = %38
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = call i32 @sdma_v4_0_ctx_switch_enable(%struct.amdgpu_device* %97, i32 1)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %100 = call i32 @sdma_v4_0_enable(%struct.amdgpu_device* %99, i32 1)
  br label %109

101:                                              ; preds = %92
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = call i32 @sdma_v4_0_rlc_resume(%struct.amdgpu_device* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %180

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %96
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %175, %109
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %178

117:                                              ; preds = %110
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store %struct.amdgpu_ring* %125, %struct.amdgpu_ring** %4, align 8
  %126 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %127 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %180

132:                                              ; preds = %117
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %132
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store %struct.amdgpu_ring* %146, %struct.amdgpu_ring** %8, align 8
  %147 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %148 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %138
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %180

153:                                              ; preds = %138
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %156, align 8
  %158 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %159 = icmp eq %struct.amdgpu_ring* %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %162 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %161, i32 1)
  br label %163

163:                                              ; preds = %160, %153
  br label %164

164:                                              ; preds = %163, %132
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %167, align 8
  %169 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %170 = icmp eq %struct.amdgpu_ring* %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %173 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %172, i32 1)
  br label %174

174:                                              ; preds = %171, %164
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %110

178:                                              ; preds = %110
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %151, %130, %106, %29
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @sdma_v4_0_ctx_switch_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @sdma_v4_0_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @sdma_v4_0_load_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SDMA(i32, i32, i64) #1

declare dso_local i32 @sdma_v4_0_gfx_resume(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @sdma_v4_0_page_resume(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @RREG32_SDMA(i32, i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @sdma_v4_0_rlc_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
