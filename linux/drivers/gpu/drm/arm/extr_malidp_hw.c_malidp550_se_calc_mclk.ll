; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_se_calc_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_se_calc_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32 }
%struct.malidp_se_config = type { i64, i64, i64, i32, i64 }
%struct.videomode = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"mclk requirement of %lu kHz can't be met.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.malidp_hw_device*, %struct.malidp_se_config*, %struct.videomode*)* @malidp550_se_calc_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @malidp550_se_calc_mclk(%struct.malidp_hw_device* %0, %struct.malidp_se_config* %1, %struct.videomode* %2) #0 {
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
  store i64 1, i64* %11, align 8
  store i64 1, i64* %12, align 8
  %32 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %33 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %3
  %37 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %38 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %41 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @max(i32 %39, i64 %42)
  %44 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %45 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %43, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %49 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %52 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %55 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %58 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @min(i64 %56, i64 %59)
  %61 = sub i64 %53, %60
  %62 = mul i64 %50, %61
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub i64 %65, 2
  %67 = load %struct.malidp_se_config*, %struct.malidp_se_config** %6, align 8
  %68 = getelementptr inbounds %struct.malidp_se_config, %struct.malidp_se_config* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 %66, %69
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %36, %3
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i64 1, i64* %12, align 8
  store i64 1, i64* %11, align 8
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %11, align 8
  %79 = mul i64 %77, %78
  %80 = load i64, i64* %12, align 8
  %81 = udiv i64 %79, %80
  store i64 %81, i64* %8, align 8
  %82 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %83 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @clk_get_rate(i32 %84)
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load i64, i64* %8, align 8
  %91 = udiv i64 %90, 1000
  %92 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* @EINVAL, align 8
  %94 = sub nsw i64 0, %93
  store i64 %94, i64* %4, align 8
  br label %97

95:                                               ; preds = %76
  %96 = load i64, i64* %13, align 8
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %95, %89
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
