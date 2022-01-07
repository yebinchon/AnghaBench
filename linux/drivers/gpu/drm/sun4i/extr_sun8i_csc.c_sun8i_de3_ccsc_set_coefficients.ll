; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_csc.c_sun8i_de3_ccsc_set_coefficients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_csc.c_sun8i_de3_ccsc_set_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@yuv2rgb_de3 = common dso_local global i32*** null, align 8
@yvu2rgb_de3 = common dso_local global i32*** null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Wrong CSC mode specified.\0A\00", align 1
@DE3_BLD_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, i32, i32, i32, i32)* @sun8i_de3_ccsc_set_coefficients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_de3_ccsc_set_coefficients(%struct.regmap* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %34 [
    i32 129, label %14
    i32 128, label %24
  ]

14:                                               ; preds = %5
  %15 = load i32***, i32**** @yuv2rgb_de3, align 8
  %16 = load i32, i32* %10, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32**, i32*** %15, i64 %17
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %11, align 8
  br label %36

24:                                               ; preds = %5
  %25 = load i32***, i32**** @yvu2rgb_de3, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32**, i32*** %25, i64 %27
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %11, align 8
  br label %36

34:                                               ; preds = %5
  %35 = call i32 @DRM_WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %44

36:                                               ; preds = %24, %14
  %37 = load i32, i32* @DE3_BLD_BASE, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @SUN50I_MIXER_BLEND_CSC_COEFF(i32 %37, i32 %38, i32 0, i32 0)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.regmap*, %struct.regmap** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @regmap_bulk_write(%struct.regmap* %40, i32 %41, i32* %42, i32 12)
  br label %44

44:                                               ; preds = %36, %34
  ret void
}

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @SUN50I_MIXER_BLEND_CSC_COEFF(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
