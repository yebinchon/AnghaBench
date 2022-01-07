; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_copy_and_switch_arb_sets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_copy_and_switch_arb_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@MC_ARB_DRAM_TIMING = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2 = common dso_local global i32 0, align 4
@MC_ARB_BURST_TIME = common dso_local global i32 0, align 4
@STATE0_MASK = common dso_local global i32 0, align 4
@STATE0_SHIFT = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING_1 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2_1 = common dso_local global i32 0, align 4
@STATE1_MASK = common dso_local global i32 0, align 4
@STATE1_SHIFT = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING_2 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2_2 = common dso_local global i32 0, align 4
@STATE2_MASK = common dso_local global i32 0, align 4
@STATE2_SHIFT = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING_3 = common dso_local global i32 0, align 4
@MC_ARB_DRAM_TIMING2_3 = common dso_local global i32 0, align 4
@STATE3_MASK = common dso_local global i32 0, align 4
@STATE3_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MC_CG_CONFIG = common dso_local global i32 0, align 4
@MC_ARB_CG = common dso_local global i32 0, align 4
@CG_ARB_REQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_copy_and_switch_arb_sets(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %57 [
    i32 131, label %13
    i32 130, label %24
    i32 129, label %35
    i32 128, label %46
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = load i32, i32* @STATE0_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @STATE0_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %10, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load i32, i32* @MC_ARB_DRAM_TIMING_1, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @MC_ARB_DRAM_TIMING2_1, align 4
  %28 = call i32 @RREG32(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %30 = call i32 @RREG32(i32 %29)
  %31 = load i32, i32* @STATE1_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @STATE1_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %10, align 4
  br label %60

35:                                               ; preds = %3
  %36 = load i32, i32* @MC_ARB_DRAM_TIMING_2, align 4
  %37 = call i32 @RREG32(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @MC_ARB_DRAM_TIMING2_2, align 4
  %39 = call i32 @RREG32(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %41 = call i32 @RREG32(i32 %40)
  %42 = load i32, i32* @STATE2_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @STATE2_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %10, align 4
  br label %60

46:                                               ; preds = %3
  %47 = load i32, i32* @MC_ARB_DRAM_TIMING_3, align 4
  %48 = call i32 @RREG32(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @MC_ARB_DRAM_TIMING2_3, align 4
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %52 = call i32 @RREG32(i32 %51)
  %53 = load i32, i32* @STATE3_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @STATE3_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %10, align 4
  br label %60

57:                                               ; preds = %3
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %130

60:                                               ; preds = %46, %35, %24, %13
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %114 [
    i32 131, label %62
    i32 130, label %75
    i32 129, label %88
    i32 128, label %101
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* @MC_ARB_DRAM_TIMING, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  %66 = load i32, i32* @MC_ARB_DRAM_TIMING2, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  %69 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @STATE0(i32 %70)
  %72 = load i32, i32* @STATE0_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = call i32 @WREG32_P(i32 %69, i32 %71, i32 %73)
  br label %117

75:                                               ; preds = %60
  %76 = load i32, i32* @MC_ARB_DRAM_TIMING_1, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @WREG32(i32 %76, i32 %77)
  %79 = load i32, i32* @MC_ARB_DRAM_TIMING2_1, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @WREG32(i32 %79, i32 %80)
  %82 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @STATE1(i32 %83)
  %85 = load i32, i32* @STATE1_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = call i32 @WREG32_P(i32 %82, i32 %84, i32 %86)
  br label %117

88:                                               ; preds = %60
  %89 = load i32, i32* @MC_ARB_DRAM_TIMING_2, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @WREG32(i32 %89, i32 %90)
  %92 = load i32, i32* @MC_ARB_DRAM_TIMING2_2, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @WREG32(i32 %92, i32 %93)
  %95 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @STATE2(i32 %96)
  %98 = load i32, i32* @STATE2_MASK, align 4
  %99 = xor i32 %98, -1
  %100 = call i32 @WREG32_P(i32 %95, i32 %97, i32 %99)
  br label %117

101:                                              ; preds = %60
  %102 = load i32, i32* @MC_ARB_DRAM_TIMING_3, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @WREG32(i32 %102, i32 %103)
  %105 = load i32, i32* @MC_ARB_DRAM_TIMING2_3, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @WREG32(i32 %105, i32 %106)
  %108 = load i32, i32* @MC_ARB_BURST_TIME, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @STATE3(i32 %109)
  %111 = load i32, i32* @STATE3_MASK, align 4
  %112 = xor i32 %111, -1
  %113 = call i32 @WREG32_P(i32 %108, i32 %110, i32 %112)
  br label %117

114:                                              ; preds = %60
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %130

117:                                              ; preds = %101, %88, %75, %62
  %118 = load i32, i32* @MC_CG_CONFIG, align 4
  %119 = call i32 @RREG32(i32 %118)
  %120 = or i32 %119, 15
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* @MC_CG_CONFIG, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @WREG32(i32 %121, i32 %122)
  %124 = load i32, i32* @MC_ARB_CG, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @CG_ARB_REQ(i32 %125)
  %127 = load i32, i32* @CG_ARB_REQ_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = call i32 @WREG32_P(i32 %124, i32 %126, i32 %128)
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %117, %114, %57
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @STATE0(i32) #1

declare dso_local i32 @STATE1(i32) #1

declare dso_local i32 @STATE2(i32) #1

declare dso_local i32 @STATE3(i32) #1

declare dso_local i32 @CG_ARB_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
