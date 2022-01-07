; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@RB_ENABLE = common dso_local global i32 0, align 4
@ENABLE_INTR = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PSP program IH_RB_CNTL failed!\0A\00", align 1
@mmIH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@IH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"program IH_RB_CNTL_RING1 failed!\0A\00", align 1
@mmIH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@IH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@PSP_REG_IH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"program IH_RB_CNTL_RING2 failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @vega10_ih_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_ih_enable_interrupts(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @OSSSYS, align 4
  %5 = load i32, i32* @mmIH_RB_CNTL, align 4
  %6 = call i32 @RREG32_SOC15(i32 %4, i32 0, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IH_RB_CNTL, align 4
  %9 = load i32, i32* @RB_ENABLE, align 4
  %10 = call i32 @REG_SET_FIELD(i32 %7, i32 %8, i32 %9, i32 1)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IH_RB_CNTL, align 4
  %13 = load i32, i32* @ENABLE_INTR, align 4
  %14 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 %13, i32 1)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load i32, i32* @PSP_REG_IH_RB_CNTL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @psp_reg_program(i32* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %113

27:                                               ; preds = %18
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @OSSSYS, align 4
  %30 = load i32, i32* @mmIH_RB_CNTL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @WREG32_SOC15(i32 %29, i32 0, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %27
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %33
  %45 = load i32, i32* @OSSSYS, align 4
  %46 = load i32, i32* @mmIH_RB_CNTL_RING1, align 4
  %47 = call i32 @RREG32_SOC15(i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @IH_RB_CNTL_RING1, align 4
  %50 = load i32, i32* @RB_ENABLE, align 4
  %51 = call i32 @REG_SET_FIELD(i32 %48, i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %3, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %44
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = load i32, i32* @PSP_REG_IH_RB_CNTL_RING1, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @psp_reg_program(i32* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %113

64:                                               ; preds = %55
  br label %70

65:                                               ; preds = %44
  %66 = load i32, i32* @OSSSYS, align 4
  %67 = load i32, i32* @mmIH_RB_CNTL_RING1, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @WREG32_SOC15(i32 %66, i32 0, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %64
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %33
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %75
  %83 = load i32, i32* @OSSSYS, align 4
  %84 = load i32, i32* @mmIH_RB_CNTL_RING2, align 4
  %85 = call i32 @RREG32_SOC15(i32 %83, i32 0, i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @IH_RB_CNTL_RING2, align 4
  %88 = load i32, i32* @RB_ENABLE, align 4
  %89 = call i32 @REG_SET_FIELD(i32 %86, i32 %87, i32 %88, i32 1)
  store i32 %89, i32* %3, align 4
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %91 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %82
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 1
  %96 = load i32, i32* @PSP_REG_IH_RB_CNTL_RING2, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i64 @psp_reg_program(i32* %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %113

102:                                              ; preds = %93
  br label %108

103:                                              ; preds = %82
  %104 = load i32, i32* @OSSSYS, align 4
  %105 = load i32, i32* @mmIH_RB_CNTL_RING2, align 4
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @WREG32_SOC15(i32 %104, i32 0, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %102
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %25, %62, %100, %108, %75
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @psp_reg_program(i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
