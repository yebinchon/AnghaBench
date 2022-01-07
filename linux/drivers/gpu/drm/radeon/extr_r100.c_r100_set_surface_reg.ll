; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_set_surface_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_set_surface_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_RS200 = common dso_local global i64 0, align 8
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@RADEON_SURF_TILE_COLOR_BOTH = common dso_local global i32 0, align 4
@RADEON_SURF_TILE_COLOR_MACRO = common dso_local global i32 0, align 4
@CHIP_RV280 = common dso_local global i64 0, align 8
@R200_SURF_TILE_COLOR_MACRO = common dso_local global i32 0, align 4
@R200_SURF_TILE_COLOR_MICRO = common dso_local global i32 0, align 4
@R300_SURF_TILE_MACRO = common dso_local global i32 0, align 4
@R300_SURF_TILE_MICRO = common dso_local global i32 0, align 4
@RADEON_TILING_SWAP_16BIT = common dso_local global i32 0, align 4
@RADEON_SURF_AP0_SWP_16BPP = common dso_local global i32 0, align 4
@RADEON_SURF_AP1_SWP_16BPP = common dso_local global i32 0, align 4
@RADEON_TILING_SWAP_32BIT = common dso_local global i32 0, align 4
@RADEON_SURF_AP0_SWP_32BPP = common dso_local global i32 0, align 4
@RADEON_SURF_AP1_SWP_32BPP = common dso_local global i32 0, align 4
@CHIP_R300 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"writing surface %d %d %x %x\0A\00", align 1
@RADEON_SURFACE0_INFO = common dso_local global i64 0, align 8
@RADEON_SURFACE0_LOWER_BOUND = common dso_local global i64 0, align 8
@RADEON_SURFACE0_UPPER_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_set_surface_reg(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %15, 16
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHIP_RS200, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %25 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %29 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* @RADEON_SURF_TILE_COLOR_BOTH, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @RADEON_SURF_TILE_COLOR_MACRO, align 4
  %43 = load i32, i32* %14, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %48 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %52, %45
  br label %99

54:                                               ; preds = %6
  %55 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CHIP_RV280, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @R200_SURF_TILE_COLOR_MACRO, align 4
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @R200_SURF_TILE_COLOR_MICRO, align 4
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %74, %69
  br label %98

79:                                               ; preds = %54
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @R300_SURF_TILE_MACRO, align 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @R300_SURF_TILE_MICRO, align 4
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %53
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @RADEON_TILING_SWAP_16BIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @RADEON_SURF_AP0_SWP_16BPP, align 4
  %106 = load i32, i32* @RADEON_SURF_AP1_SWP_16BPP, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @RADEON_TILING_SWAP_32BIT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load i32, i32* @RADEON_SURF_AP0_SWP_32BPP, align 4
  %117 = load i32, i32* @RADEON_SURF_AP1_SWP_32BPP, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %14, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %115, %110
  %122 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @CHIP_R300, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i32, i32* %10, align 4
  %129 = sdiv i32 %128, 16
  %130 = load i32, i32* %14, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %137

132:                                              ; preds = %121
  %133 = load i32, i32* %10, align 4
  %134 = sdiv i32 %133, 8
  %135 = load i32, i32* %14, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %141, %142
  %144 = sub nsw i32 %143, 1
  %145 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139, i32 %140, i32 %144)
  %146 = load i64, i64* @RADEON_SURFACE0_INFO, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @WREG32(i64 %149, i32 %150)
  %152 = load i64, i64* @RADEON_SURFACE0_LOWER_BOUND, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @WREG32(i64 %155, i32 %156)
  %158 = load i64, i64* @RADEON_SURFACE0_UPPER_BOUND, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %162, %163
  %165 = sub nsw i32 %164, 1
  %166 = call i32 @WREG32(i64 %161, i32 %165)
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
