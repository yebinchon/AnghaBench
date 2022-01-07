; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.h_malidp_se_set_enh_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.h_malidp_se_set_enh_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@malidp_se_set_enh_coeffs.enhancer_coeffs = internal constant [9 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 128, i32 -8, i32 -8, i32 -8, i32 -8], align 16
@MALIDP_SE_ENH_LOW_LEVEL = common dso_local global i32 0, align 4
@MALIDP_SE_ENH_HIGH_LEVEL = common dso_local global i32 0, align 4
@MALIDP_REGMAP_HAS_CLEARIRQ = common dso_local global i32 0, align 4
@MALIDP_SE_IMAGE_ENH = common dso_local global i32 0, align 4
@MALIDP_SE_ENH_COEFF0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_hw_device*)* @malidp_se_set_enh_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_se_set_enh_coeffs(%struct.malidp_hw_device* %0) #0 {
  %2 = alloca %struct.malidp_hw_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %2, align 8
  %7 = load i32, i32* @MALIDP_SE_ENH_LOW_LEVEL, align 4
  %8 = call i32 @MALIDP_SE_SET_ENH_LIMIT_LOW(i32 %7)
  %9 = load i32, i32* @MALIDP_SE_ENH_HIGH_LEVEL, align 4
  %10 = call i32 @MALIDP_SE_SET_ENH_LIMIT_HIGH(i32 %9)
  %11 = or i32 %8, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %13 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %19 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MALIDP_REGMAP_HAS_CLEARIRQ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 16, i32 12
  %29 = add nsw i32 %17, %28
  %30 = load i32, i32* @MALIDP_SE_IMAGE_ENH, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MALIDP_SE_ENH_COEFF0, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %35, i32 %36, i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %54, %1
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @malidp_se_set_enh_coeffs.enhancer_coeffs, i64 0, i64 0))
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* @malidp_se_set_enh_coeffs.enhancer_coeffs, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %49, %51
  %53 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %44, i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %39

57:                                               ; preds = %39
  ret void
}

declare dso_local i32 @MALIDP_SE_SET_ENH_LIMIT_LOW(i32) #1

declare dso_local i32 @MALIDP_SE_SET_ENH_LIMIT_HIGH(i32) #1

declare dso_local i32 @malidp_hw_write(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
