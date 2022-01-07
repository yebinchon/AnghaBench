; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_se_write_pp_coefftab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp500_se_write_pp_coefftab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32 }

@MALIDP500_SE_CONTROL = common dso_local global i32 0, align 4
@MALIDP_SE_SCALING_CONTROL = common dso_local global i32 0, align 4
@MALIDP_SE_COEFFTAB_ADDR_MASK = common dso_local global i32 0, align 4
@MALIDP_SE_COEFFTAB_ADDR = common dso_local global i32 0, align 4
@dp500_se_scaling_coeffs = common dso_local global i32** null, align 8
@MALIDP_SE_COEFFTAB_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_hw_device*, i32, i32, i64)* @malidp500_se_write_pp_coefftab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp500_se_write_pp_coefftab(%struct.malidp_hw_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.malidp_hw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @MALIDP500_SE_CONTROL, align 4
  %12 = load i32, i32* @MALIDP_SE_SCALING_CONTROL, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MALIDP_SE_COEFFTAB_ADDR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MALIDP_SE_COEFFTAB_ADDR, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %14, i32 %19, i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %44, %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32**, i32*** @dp500_se_scaling_coeffs, align 8
  %27 = call i32 @ARRAY_SIZE(i32** %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %31 = load i32**, i32*** @dp500_se_scaling_coeffs, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MALIDP_SE_SET_COEFFTAB_DATA(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MALIDP_SE_COEFFTAB_DATA, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %30, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %24

47:                                               ; preds = %24
  ret void
}

declare dso_local i32 @malidp_hw_write(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @MALIDP_SE_SET_COEFFTAB_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
