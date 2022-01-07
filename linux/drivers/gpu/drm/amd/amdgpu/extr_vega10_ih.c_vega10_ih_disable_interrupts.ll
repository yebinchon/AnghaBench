; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@RB_ENABLE = common dso_local global i32 0, align 4
@ENABLE_INTR = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PSP program IH_RB_CNTL failed!\0A\00", align 1
@mmIH_RB_RPTR = common dso_local global i32 0, align 4
@mmIH_RB_WPTR = common dso_local global i32 0, align 4
@mmIH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@IH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"program IH_RB_CNTL_RING1 failed!\0A\00", align 1
@mmIH_RB_RPTR_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@IH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"program IH_RB_CNTL_RING2 failed!\0A\00", align 1
@mmIH_RB_RPTR_RING2 = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_RING2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vega10_ih_disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_ih_disable_interrupts(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @OSSSYS, align 4
  %5 = load i32, i32* @mmIH_RB_CNTL, align 4
  %6 = call i64 @RREG32_SOC15(i32 %4, i32 0, i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* @IH_RB_CNTL, align 4
  %9 = load i32, i32* @RB_ENABLE, align 4
  %10 = call i64 @REG_SET_FIELD(i64 %7, i32 %8, i32 %9, i32 0)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @IH_RB_CNTL, align 4
  %13 = load i32, i32* @ENABLE_INTR, align 4
  %14 = call i64 @REG_SET_FIELD(i64 %11, i32 %12, i32 %13, i32 0)
  store i64 %14, i64* %3, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load i32, i32* @PSP_REG_IH_RB_CNTL, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @psp_reg_program(i32* %20, i32 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %143

27:                                               ; preds = %18
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @OSSSYS, align 4
  %30 = load i32, i32* @mmIH_RB_CNTL, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @WREG32_SOC15(i32 %29, i32 0, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* @OSSSYS, align 4
  %35 = load i32, i32* @mmIH_RB_RPTR, align 4
  %36 = call i32 @WREG32_SOC15(i32 %34, i32 0, i32 %35, i64 0)
  %37 = load i32, i32* @OSSSYS, align 4
  %38 = load i32, i32* @mmIH_RB_WPTR, align 4
  %39 = call i32 @WREG32_SOC15(i32 %37, i32 0, i32 %38, i64 0)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %95

54:                                               ; preds = %33
  %55 = load i32, i32* @OSSSYS, align 4
  %56 = load i32, i32* @mmIH_RB_CNTL_RING1, align 4
  %57 = call i64 @RREG32_SOC15(i32 %55, i32 0, i32 %56)
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i32, i32* @IH_RB_CNTL_RING1, align 4
  %60 = load i32, i32* @RB_ENABLE, align 4
  %61 = call i64 @REG_SET_FIELD(i64 %58, i32 %59, i32 %60, i32 0)
  store i64 %61, i64* %3, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 1
  %68 = load i32, i32* @PSP_REG_IH_RB_CNTL_RING1, align 4
  %69 = load i64, i64* %3, align 8
  %70 = call i64 @psp_reg_program(i32* %67, i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %143

74:                                               ; preds = %65
  br label %80

75:                                               ; preds = %54
  %76 = load i32, i32* @OSSSYS, align 4
  %77 = load i32, i32* @mmIH_RB_CNTL_RING1, align 4
  %78 = load i64, i64* %3, align 8
  %79 = call i32 @WREG32_SOC15(i32 %76, i32 0, i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %75, %74
  %81 = load i32, i32* @OSSSYS, align 4
  %82 = load i32, i32* @mmIH_RB_RPTR_RING1, align 4
  %83 = call i32 @WREG32_SOC15(i32 %81, i32 0, i32 %82, i64 0)
  %84 = load i32, i32* @OSSSYS, align 4
  %85 = load i32, i32* @mmIH_RB_WPTR_RING1, align 4
  %86 = call i32 @WREG32_SOC15(i32 %84, i32 0, i32 %85, i64 0)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %80, %33
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %143

102:                                              ; preds = %95
  %103 = load i32, i32* @OSSSYS, align 4
  %104 = load i32, i32* @mmIH_RB_CNTL_RING2, align 4
  %105 = call i64 @RREG32_SOC15(i32 %103, i32 0, i32 %104)
  store i64 %105, i64* %3, align 8
  %106 = load i64, i64* %3, align 8
  %107 = load i32, i32* @IH_RB_CNTL_RING2, align 4
  %108 = load i32, i32* @RB_ENABLE, align 4
  %109 = call i64 @REG_SET_FIELD(i64 %106, i32 %107, i32 %108, i32 0)
  store i64 %109, i64* %3, align 8
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %111 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %102
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 1
  %116 = load i32, i32* @PSP_REG_IH_RB_CNTL_RING2, align 4
  %117 = load i64, i64* %3, align 8
  %118 = call i64 @psp_reg_program(i32* %115, i32 %116, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %143

122:                                              ; preds = %113
  br label %128

123:                                              ; preds = %102
  %124 = load i32, i32* @OSSSYS, align 4
  %125 = load i32, i32* @mmIH_RB_CNTL_RING2, align 4
  %126 = load i64, i64* %3, align 8
  %127 = call i32 @WREG32_SOC15(i32 %124, i32 0, i32 %125, i64 %126)
  br label %128

128:                                              ; preds = %123, %122
  %129 = load i32, i32* @OSSSYS, align 4
  %130 = load i32, i32* @mmIH_RB_RPTR_RING2, align 4
  %131 = call i32 @WREG32_SOC15(i32 %129, i32 0, i32 %130, i64 0)
  %132 = load i32, i32* @OSSSYS, align 4
  %133 = load i32, i32* @mmIH_RB_WPTR_RING2, align 4
  %134 = call i32 @WREG32_SOC15(i32 %132, i32 0, i32 %133, i64 0)
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %25, %72, %120, %128, %95
  ret void
}

declare dso_local i64 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @psp_reg_program(i32*, i32, i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
