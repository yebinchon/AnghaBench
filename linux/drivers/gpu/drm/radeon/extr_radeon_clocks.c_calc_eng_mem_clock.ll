; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_clocks.c_calc_eng_mem_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_clocks.c_calc_eng_mem_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.radeon_pll }
%struct.radeon_pll = type { i32, i32 }

@RADEON_M_SPLL_REF_FB_DIV = common dso_local global i32 0, align 4
@RADEON_M_SPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32*, i32*)* @calc_eng_mem_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_eng_mem_clock(%struct.radeon_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.radeon_pll*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.radeon_pll* %13, %struct.radeon_pll** %9, align 8
  %14 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %15 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @RADEON_M_SPLL_REF_FB_DIV, align 4
  %21 = call i32 @RREG32_PLL(i32 %20)
  %22 = load i32, i32* @RADEON_M_SPLL_REF_DIV_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 15000
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  store i32 8, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 8
  store i32 %30, i32* %6, align 4
  br label %49

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 30000
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** %8, align 8
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 4
  store i32 %37, i32* %6, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 60000
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  store i32 2, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* %6, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32*, i32** %8, align 8
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %54 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %59 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 2, %60
  %62 = load i32, i32* %6, align 4
  %63 = sdiv i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 65535
  %69 = shl i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = load %struct.radeon_pll*, %struct.radeon_pll** %9, align 8
  %71 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sdiv i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sdiv i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @RREG32_PLL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
