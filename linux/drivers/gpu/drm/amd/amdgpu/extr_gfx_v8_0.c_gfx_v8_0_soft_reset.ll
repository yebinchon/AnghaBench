; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@mmGMCON_DEBUG = common dso_local global i32 0, align 4
@GMCON_DEBUG = common dso_local global i32 0, align 4
@GFX_STALL = common dso_local global i32 0, align 4
@GFX_CLEAR = common dso_local global i32 0, align 4
@mmGRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@mmSRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v8_0_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_soft_reset(i8* %0) #0 {
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
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %131

22:                                               ; preds = %15, %1
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33, %22
  %37 = load i32, i32* @mmGMCON_DEBUG, align 4
  %38 = call i32 @RREG32(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GMCON_DEBUG, align 4
  %41 = load i32, i32* @GFX_STALL, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GMCON_DEBUG, align 4
  %45 = load i32, i32* @GFX_CLEAR, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 1)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @mmGMCON_DEBUG, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  %50 = call i32 @udelay(i32 50)
  br label %51

51:                                               ; preds = %36, %33
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %56 = call i32 @RREG32(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @WREG32(i32 %65, i32 %66)
  %68 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %69 = call i32 @RREG32(i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = call i32 @udelay(i32 50)
  %71 = load i32, i32* %5, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @WREG32(i32 %75, i32 %76)
  %78 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %79 = call i32 @RREG32(i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %54, %51
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %85 = call i32 @RREG32(i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_info(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  %97 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %98 = call i32 @RREG32(i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = call i32 @udelay(i32 50)
  %100 = load i32, i32* %6, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @WREG32(i32 %104, i32 %105)
  %107 = load i32, i32* @mmSRBM_SOFT_RESET, align 4
  %108 = call i32 @RREG32(i32 %107)
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %83, %80
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112, %109
  %116 = load i32, i32* @mmGMCON_DEBUG, align 4
  %117 = call i32 @RREG32(i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @GMCON_DEBUG, align 4
  %120 = load i32, i32* @GFX_STALL, align 4
  %121 = call i32 @REG_SET_FIELD(i32 %118, i32 %119, i32 %120, i32 0)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @GMCON_DEBUG, align 4
  %124 = load i32, i32* @GFX_CLEAR, align 4
  %125 = call i32 @REG_SET_FIELD(i32 %122, i32 %123, i32 %124, i32 0)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* @mmGMCON_DEBUG, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @WREG32(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %115, %112
  %130 = call i32 @udelay(i32 50)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %21
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
