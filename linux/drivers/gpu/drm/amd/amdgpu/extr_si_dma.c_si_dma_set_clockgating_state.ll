; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_set_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dma.c_si_dma_set_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMD_CG_STATE_GATE = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_SDMA_MGCG = common dso_local global i32 0, align 4
@DMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@DMA_POWER_CNTL = common dso_local global i32 0, align 4
@MEM_POWER_OVERRIDE = common dso_local global i32 0, align 4
@DMA_CLK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @si_dma_set_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dma_set_clockgating_state(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @AMD_CG_STATE_GATE, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %2
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AMD_CG_SUPPORT_SDMA_MGCG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %65, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* @DMA_POWER_CNTL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @RREG32(i32 %45)
  store i32 %46, i32* %6, align 4
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @MEM_POWER_OVERRIDE, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i32, i32* @DMA_POWER_CNTL, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @WREG32(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %42
  %61 = load i32, i32* @DMA_CLK_CTRL, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @WREG32(i32 %63, i32 256)
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %28

68:                                               ; preds = %28
  br label %120

69:                                               ; preds = %20, %2
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %116, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  store i32 %81, i32* %7, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i32, i32* @DMA_POWER_CNTL, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  %88 = call i32 @RREG32(i32 %87)
  store i32 %88, i32* %6, align 4
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @MEM_POWER_OVERRIDE, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @DMA_POWER_CNTL, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @WREG32(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %84
  %102 = load i32, i32* @DMA_CLK_CTRL, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @RREG32(i32 %104)
  store i32 %105, i32* %6, align 4
  store i32 %105, i32* %5, align 4
  store i32 -16777216, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @DMA_CLK_CTRL, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @WREG32(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %101
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %70

119:                                              ; preds = %70
  br label %120

120:                                              ; preds = %119, %68
  ret i32 0
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
