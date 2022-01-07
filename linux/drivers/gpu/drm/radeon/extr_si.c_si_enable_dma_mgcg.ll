; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_enable_dma_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_enable_dma_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CG_SUPPORT_SDMA_MGCG = common dso_local global i32 0, align 4
@DMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@DMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@DMA_POWER_CNTL = common dso_local global i32 0, align 4
@MEM_POWER_OVERRIDE = common dso_local global i32 0, align 4
@DMA_CLK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @si_enable_dma_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_enable_dma_mgcg(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %2
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RADEON_CG_SUPPORT_SDMA_MGCG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  store i32 %26, i32* %7, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* @DMA_POWER_CNTL, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %6, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @MEM_POWER_OVERRIDE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i32, i32* @DMA_POWER_CNTL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @WREG32(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %29
  %48 = load i32, i32* @DMA_CLK_CTRL, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @WREG32(i32 %50, i32 256)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %19

55:                                               ; preds = %19
  br label %103

56:                                               ; preds = %11, %2
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %99, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %102

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @DMA0_REGISTER_OFFSET, align 4
  store i32 %64, i32* %7, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @DMA1_REGISTER_OFFSET, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i32, i32* @DMA_POWER_CNTL, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %68, %69
  %71 = call i32 @RREG32(i32 %70)
  store i32 %71, i32* %6, align 4
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @MEM_POWER_OVERRIDE, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load i32, i32* @DMA_POWER_CNTL, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @WREG32(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %67
  %85 = load i32, i32* @DMA_CLK_CTRL, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  %88 = call i32 @RREG32(i32 %87)
  store i32 %88, i32* %6, align 4
  store i32 %88, i32* %5, align 4
  store i32 -16777216, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load i32, i32* @DMA_CLK_CTRL, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @WREG32(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %84
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %57

102:                                              ; preds = %57
  br label %103

103:                                              ; preds = %102, %55
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
