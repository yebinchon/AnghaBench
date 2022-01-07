; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_parse_pll_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_parse_pll_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@RADEON_CLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@RADEON_MC_BUSY = common dso_local global i32 0, align 4
@RADEON_DLL_READY = common dso_local global i32 0, align 4
@RADEON_CG_NO1_DEBUG_0 = common dso_local global i32 0, align 4
@RADEON_MCLK_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i64)* @combios_parse_pll_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combios_parse_pll_table(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %131

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %129, %18
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @RBIOS8(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %130

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @RBIOS8(i64 %24)
  %26 = and i32 %25, 192
  %27 = ashr i32 %26, 6
  store i32 %27, i32* %6, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @RBIOS8(i64 %28)
  %30 = and i32 %29, 63
  store i32 %30, i32* %7, align 4
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %4, align 8
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %128 [
    i32 0, label %34
    i32 1, label %42
    i32 2, label %76
    i32 3, label %76
  ]

34:                                               ; preds = %23
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @RBIOS32(i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %37, 4
  store i64 %38, i64* %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @WREG32_PLL(i32 %39, i32 %40)
  br label %129

42:                                               ; preds = %23
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @RBIOS8(i64 %43)
  %45 = mul nsw i32 %44, 8
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* %4, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @RBIOS8(i64 %48)
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 255, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i64, i64* %4, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @RBIOS8(i64 %59)
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %60, %61
  store i32 %62, i32* %12, align 4
  %63 = load i64, i64* %4, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @RREG32_PLL(i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @WREG32_PLL(i32 %73, i32 %74)
  br label %129

76:                                               ; preds = %23, %23
  store i32 1000, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %126 [
    i32 1, label %78
    i32 2, label %80
    i32 3, label %82
    i32 4, label %96
    i32 5, label %110
  ]

78:                                               ; preds = %76
  %79 = call i32 @udelay(i32 150)
  br label %127

80:                                               ; preds = %76
  %81 = call i32 @mdelay(i32 1)
  br label %127

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %94, %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %10, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32, i32* @RADEON_CLK_PWRMGT_CNTL, align 4
  %89 = call i32 @RREG32_PLL(i32 %88)
  %90 = load i32, i32* @RADEON_MC_BUSY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %95

94:                                               ; preds = %87
  br label %83

95:                                               ; preds = %93, %83
  br label %127

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %108, %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %10, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32, i32* @RADEON_CLK_PWRMGT_CNTL, align 4
  %103 = call i32 @RREG32_PLL(i32 %102)
  %104 = load i32, i32* @RADEON_DLL_READY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %109

108:                                              ; preds = %101
  br label %97

109:                                              ; preds = %107, %97
  br label %127

110:                                              ; preds = %76
  %111 = load i32, i32* @RADEON_CLK_PWRMGT_CNTL, align 4
  %112 = call i32 @RREG32_PLL(i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @RADEON_CG_NO1_DEBUG_0, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load i32, i32* @RADEON_CLK_PWRMGT_CNTL, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @RADEON_CG_NO1_DEBUG_0, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = call i32 @WREG32_PLL(i32 %118, i32 %122)
  %124 = call i32 @mdelay(i32 10)
  br label %125

125:                                              ; preds = %117, %110
  br label %127

126:                                              ; preds = %76
  br label %127

127:                                              ; preds = %126, %125, %109, %95, %80, %78
  br label %129

128:                                              ; preds = %23
  br label %129

129:                                              ; preds = %128, %127, %42, %34
  br label %19

130:                                              ; preds = %19
  br label %131

131:                                              ; preds = %130, %2
  ret void
}

declare dso_local i32 @RBIOS8(i64) #1

declare dso_local i32 @RBIOS32(i64) #1

declare dso_local i32 @WREG32_PLL(i32, i32) #1

declare dso_local i32 @RREG32_PLL(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
