; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_check_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_check_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@mmGRBM_STATUS = common dso_local global i32 0, align 4
@GRBM_STATUS__PA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SC_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__BCI_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SX_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__TA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__VGT_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__DB_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CB_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__GDS_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SPI_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__IA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__IA_BUSY_NO_DMA_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CP_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CP_COHERENCY_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_GFX = common dso_local global i32 0, align 4
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_GRBM = common dso_local global i32 0, align 4
@mmGRBM_STATUS2 = common dso_local global i32 0, align 4
@GRBM_STATUS2 = common dso_local global i32 0, align 4
@RLC_BUSY = common dso_local global i32 0, align 4
@SOFT_RESET_RLC = common dso_local global i32 0, align 4
@CPF_BUSY = common dso_local global i32 0, align 4
@CPC_BUSY = common dso_local global i32 0, align 4
@CPG_BUSY = common dso_local global i32 0, align 4
@SOFT_RESET_CPF = common dso_local global i32 0, align 4
@SOFT_RESET_CPC = common dso_local global i32 0, align 4
@SOFT_RESET_CPG = common dso_local global i32 0, align 4
@mmSRBM_STATUS = common dso_local global i32 0, align 4
@SRBM_STATUS = common dso_local global i32 0, align 4
@GRBM_RQ_PENDING = common dso_local global i32 0, align 4
@SEM_BUSY = common dso_local global i32 0, align 4
@SOFT_RESET_SEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v8_0_check_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_check_soft_reset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @mmGRBM_STATUS, align 4
  %11 = call i32 @RREG32(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GRBM_STATUS__PA_BUSY_MASK, align 4
  %14 = load i32, i32* @GRBM_STATUS__SC_BUSY_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @GRBM_STATUS__BCI_BUSY_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @GRBM_STATUS__SX_BUSY_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GRBM_STATUS__TA_BUSY_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GRBM_STATUS__VGT_BUSY_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GRBM_STATUS__DB_BUSY_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GRBM_STATUS__CB_BUSY_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GRBM_STATUS__GDS_BUSY_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GRBM_STATUS__SPI_BUSY_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @GRBM_STATUS__IA_BUSY_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GRBM_STATUS__IA_BUSY_NO_DMA_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @GRBM_STATUS__CP_BUSY_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @GRBM_STATUS__CP_COHERENCY_BUSY_MASK, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %12, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %1
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %45 = load i32, i32* @SOFT_RESET_CP, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %49 = load i32, i32* @SOFT_RESET_GFX, align 4
  %50 = call i32 @REG_SET_FIELD(i32 %47, i32 %48, i32 %49, i32 1)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %53 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %54 = call i32 @REG_SET_FIELD(i32 %51, i32 %52, i32 %53, i32 1)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %42, %1
  %56 = load i32, i32* @mmGRBM_STATUS2, align 4
  %57 = call i32 @RREG32(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @GRBM_STATUS2, align 4
  %60 = load i32, i32* @RLC_BUSY, align 4
  %61 = call i64 @REG_GET_FIELD(i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %66 = load i32, i32* @SOFT_RESET_RLC, align 4
  %67 = call i32 @REG_SET_FIELD(i32 %64, i32 %65, i32 %66, i32 1)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %55
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @GRBM_STATUS2, align 4
  %71 = load i32, i32* @CPF_BUSY, align 4
  %72 = call i64 @REG_GET_FIELD(i32 %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @GRBM_STATUS2, align 4
  %77 = load i32, i32* @CPC_BUSY, align 4
  %78 = call i64 @REG_GET_FIELD(i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @GRBM_STATUS2, align 4
  %83 = load i32, i32* @CPG_BUSY, align 4
  %84 = call i64 @REG_GET_FIELD(i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %80, %74, %68
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %89 = load i32, i32* @SOFT_RESET_CPF, align 4
  %90 = call i32 @REG_SET_FIELD(i32 %87, i32 %88, i32 %89, i32 1)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %93 = load i32, i32* @SOFT_RESET_CPC, align 4
  %94 = call i32 @REG_SET_FIELD(i32 %91, i32 %92, i32 %93, i32 1)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %97 = load i32, i32* @SOFT_RESET_CPG, align 4
  %98 = call i32 @REG_SET_FIELD(i32 %95, i32 %96, i32 %97, i32 1)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %101 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %102 = call i32 @REG_SET_FIELD(i32 %99, i32 %100, i32 %101, i32 1)
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %86, %80
  %104 = load i32, i32* @mmSRBM_STATUS, align 4
  %105 = call i32 @RREG32(i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SRBM_STATUS, align 4
  %108 = load i32, i32* @GRBM_RQ_PENDING, align 4
  %109 = call i64 @REG_GET_FIELD(i32 %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %114 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %115 = call i32 @REG_SET_FIELD(i32 %112, i32 %113, i32 %114, i32 1)
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %111, %103
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @SRBM_STATUS, align 4
  %119 = load i32, i32* @SEM_BUSY, align 4
  %120 = call i64 @REG_GET_FIELD(i32 %117, i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %125 = load i32, i32* @SOFT_RESET_SEM, align 4
  %126 = call i32 @REG_SET_FIELD(i32 %123, i32 %124, i32 %125, i32 1)
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %122, %116
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130, %127
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  store i32 1, i32* %2, align 4
  br label %149

142:                                              ; preds = %130
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 4
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %142, %133
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
