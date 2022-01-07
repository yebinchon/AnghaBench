; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_se_calc_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_se_calc_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32 }
%struct.malidp_se_config = type { i64, i64, i64, i64 }
%struct.videomode = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"mclk requirement of %lu kHz can't be met.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.malidp_hw_device*, %struct.malidp_se_config*, %struct.videomode*)* @malidp500_se_calc_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @malidp500_se_calc_mclk(%struct.malidp_hw_device* %0, %struct.malidp_se_config* %1, %struct.videomode* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.malidp_hw_device*, align 8
  %6 = alloca %struct.malidp_se_config*, align 8
  %7 = alloca %struct.videomode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %5, align 8
  store %struct.malidp_se_config* %1, %struct.malidp_se_config** %6, align 8
  store %struct.videomode* %2, %struct.videomode** %7, align 8
  %14 = load %struct.videomode*, %struct.videomode** %7, align 8
  %15 = getelementptr inbounds %struct.videomode, %struct.videomode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.videomode*, %struct.videomode** %7, align 8
  %18 = getelementptr inbounds %struct.videomode, %struct.videomode* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.videomode*, %struct.videomode** %7, align 8
  %21 = getelementptr inbounds %struct.videomode, %struct.videomode* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  %24 = load %struct.videomode*, %struct.videomode** %7, align 8
  %25 = getelementptr inbounds %struct.videomode, %struct.videomode* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %23, %26
  %28 = load %struct.videomode*, %struct.videomode** %7, align 8
  %29 = getelementptr inbounds %struct.videomode, %struct.videomode* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %27, %30
  store i64 %31, i64* %10, align 8
  %32 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %33 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %36 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %34, %37
  store i64 %38, i64* %11, align 8
  store i64 10, i64* %12, align 8
  %39 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %40 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %3
  %44 = load i64, i64* %11, align 8
  %45 = mul i64 15, %44
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %48 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %46, %49
  %51 = udiv i64 %45, %50
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ult i64 %52, 15
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i64 15, i64* %12, align 8
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55, %3
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %9, align 8
  %59 = mul i64 %57, %58
  %60 = udiv i64 %59, 10
  store i64 %60, i64* %8, align 8
  %61 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %62 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @clk_get_rate(i32 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i64, i64* %8, align 8
  %70 = udiv i64 %69, 1000
  %71 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* @EINVAL, align 8
  %73 = sub nsw i64 0, %72
  store i64 %73, i64* %4, align 8
  br label %76

74:                                               ; preds = %56
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
