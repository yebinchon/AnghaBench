; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_is_dp_sst_stream_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_is_dp_sst_stream_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@ni_dig_offsets = common dso_local global i64* null, align 8
@NI_DIG_FE_CNTL = common dso_local global i64 0, align 8
@NI_DIG_FE_CNTL_SYMCLK_FE_ON = common dso_local global i32 0, align 4
@NI_DIG_BE_CNTL = common dso_local global i64 0, align 8
@NI_DIG_BE_DPSST = common dso_local global i32 0, align 4
@NI_DIG_BE_EN_CNTL = common dso_local global i64 0, align 8
@NI_DCIO_UNIPHY0_PLL_CONTROL1 = common dso_local global i64 0, align 8
@ni_tx_offsets = common dso_local global i64* null, align 8
@NI_DIG_BE_EN_CNTL_ENABLE = common dso_local global i32 0, align 4
@NI_DIG_BE_EN_CNTL_SYMBCLK_ON = common dso_local global i32 0, align 4
@NI_DCIO_UNIPHY0_PLL_CONTROL1_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32*)* @evergreen_is_dp_sst_stream_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_is_dp_sst_stream_enabled(%struct.radeon_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %45, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i64*, i64** @ni_dig_offsets, align 8
  %20 = call i32 @ARRAY_SIZE(i64* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load i64, i64* @NI_DIG_FE_CNTL, align 8
  %24 = load i64*, i64** @ni_dig_offsets, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %23, %28
  %30 = call i32 @RREG32(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @NI_DIG_FE_CNTL_SYMCLK_FE_ON, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @NI_DIG_FE_CNTL_SOURCE_SELECT(i32 %37)
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  store i32 1, i32* %16, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 1, %41
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %35, %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %17

48:                                               ; preds = %40, %17
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %118

51:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %114, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i64*, i64** @ni_dig_offsets, align 8
  %55 = call i32 @ARRAY_SIZE(i64* %54)
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %57, label %117

57:                                               ; preds = %52
  %58 = load i64, i64* @NI_DIG_BE_CNTL, align 8
  %59 = load i64*, i64** @ni_dig_offsets, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = call i32 @RREG32(i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @NI_DIG_BE_CNTL_FE_SOURCE_SELECT(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @NI_DIG_FE_CNTL_MODE(i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %57
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @NI_DIG_BE_DPSST, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %74
  %79 = load i64, i64* @NI_DIG_BE_EN_CNTL, align 8
  %80 = load i64*, i64** @ni_dig_offsets, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = call i32 @RREG32(i64 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i64, i64* @NI_DCIO_UNIPHY0_PLL_CONTROL1, align 8
  %88 = load i64*, i64** @ni_tx_offsets, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %87, %92
  %94 = call i32 @RREG32(i64 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @NI_DIG_BE_EN_CNTL_ENABLE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %78
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @NI_DIG_BE_EN_CNTL_SYMBCLK_ON, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @NI_DCIO_UNIPHY0_PLL_CONTROL1_ENABLE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  store i32 1, i32* %15, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %6, align 8
  store i32 %110, i32* %111, align 4
  br label %117

112:                                              ; preds = %104, %99, %78
  br label %113

113:                                              ; preds = %112, %74, %57
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %52

117:                                              ; preds = %109, %52
  br label %118

118:                                              ; preds = %117, %48
  %119 = load i32, i32* %15, align 4
  ret i32 %119
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @NI_DIG_FE_CNTL_SOURCE_SELECT(i32) #1

declare dso_local i32 @NI_DIG_BE_CNTL_FE_SOURCE_SELECT(i32) #1

declare dso_local i32 @NI_DIG_FE_CNTL_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
