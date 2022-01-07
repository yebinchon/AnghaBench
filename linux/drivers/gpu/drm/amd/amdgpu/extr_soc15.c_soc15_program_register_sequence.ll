; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_program_register_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_program_register_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32*** }
%struct.soc15_reg_golden = type { i64, i64, i64, i32, i32, i32 }

@GC = common dso_local global i32 0, align 4
@mmPA_SC_BINNER_EVENT_CNTL_3 = common dso_local global i32 0, align 4
@mmPA_SC_ENHANCE = common dso_local global i32 0, align 4
@mmPA_SC_ENHANCE_1 = common dso_local global i32 0, align 4
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soc15_program_register_sequence(%struct.amdgpu_device* %0, %struct.soc15_reg_golden* %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.soc15_reg_golden*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc15_reg_golden*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.soc15_reg_golden* %1, %struct.soc15_reg_golden** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %101, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %104

15:                                               ; preds = %11
  %16 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %16, i64 %18
  store %struct.soc15_reg_golden* %19, %struct.soc15_reg_golden** %7, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load i32***, i32**** %21, align 8
  %23 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %24 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32**, i32*** %22, i64 %25
  %27 = load i32**, i32*** %26, align 8
  %28 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %29 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32*, i32** %27, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %34 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %39 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %43 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %15
  %47 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %48 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  br label %68

50:                                               ; preds = %15
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @RREG32(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %54 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %60 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.soc15_reg_golden*, %struct.soc15_reg_golden** %7, align 8
  %63 = getelementptr inbounds %struct.soc15_reg_golden, %struct.soc15_reg_golden* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, %64
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %50, %46
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @GC, align 4
  %71 = load i32, i32* @mmPA_SC_BINNER_EVENT_CNTL_3, align 4
  %72 = call i32 @SOC15_REG_OFFSET(i32 %70, i32 0, i32 %71)
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %92, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @GC, align 4
  %77 = load i32, i32* @mmPA_SC_ENHANCE, align 4
  %78 = call i32 @SOC15_REG_OFFSET(i32 %76, i32 0, i32 %77)
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @GC, align 4
  %83 = load i32, i32* @mmPA_SC_ENHANCE_1, align 4
  %84 = call i32 @SOC15_REG_OFFSET(i32 %82, i32 0, i32 %83)
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @GC, align 4
  %89 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %90 = call i32 @SOC15_REG_OFFSET(i32 %88, i32 0, i32 %89)
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86, %80, %74, %68
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @WREG32_RLC(i32 %93, i32 %94)
  br label %100

96:                                               ; preds = %86
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @WREG32(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %11

104:                                              ; preds = %11
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WREG32_RLC(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
