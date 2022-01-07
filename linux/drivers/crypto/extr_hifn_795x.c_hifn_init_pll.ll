; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_init_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_init_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HIFN_1_PLL = common dso_local global i32 0, align 4
@HIFN_PLL_RESERVED_1 = common dso_local global i32 0, align 4
@hifn_pll_ref = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@HIFN_PLL_REF_CLK_PLL = common dso_local global i32 0, align 4
@HIFN_PLL_REF_CLK_HBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"assuming %uMHz clock speed, override with hifn_pll_ref=%.3s<frequency>\0A\00", align 1
@HIFN_PLL_FCK_MAX = common dso_local global i32 0, align 4
@HIFN_PLL_ND_SHIFT = common dso_local global i32 0, align 4
@HIFN_PLL_IS_1_8 = common dso_local global i32 0, align 4
@HIFN_PLL_IS_9_12 = common dso_local global i32 0, align 4
@HIFN_PLL_PK_CLK_HBI = common dso_local global i32 0, align 4
@HIFN_PLL_PE_CLK_HBI = common dso_local global i32 0, align 4
@HIFN_PLL_BP = common dso_local global i32 0, align 4
@HIFN_PLL_PK_CLK_PLL = common dso_local global i32 0, align 4
@HIFN_PLL_PE_CLK_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_device*)* @hifn_init_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_init_pll(%struct.hifn_device* %0) #0 {
  %2 = alloca %struct.hifn_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %2, align 8
  %6 = load i32, i32* @HIFN_1_PLL, align 4
  %7 = load i32, i32* @HIFN_PLL_RESERVED_1, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** @hifn_pll_ref, align 8
  %10 = call i64 @strncmp(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @HIFN_PLL_REF_CLK_PLL, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @HIFN_PLL_REF_CLK_HBI, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i8*, i8** @hifn_pll_ref, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8*, i8** @hifn_pll_ref, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = call i32 @simple_strtoul(i8* %28, i32* null, i32 10)
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %20
  store i32 66, i32* %3, align 4
  %31 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %32 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %3, align 4
  %36 = load i8*, i8** @hifn_pll_ref, align 8
  %37 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %30, %26
  %39 = load i32, i32* @HIFN_PLL_FCK_MAX, align 4
  %40 = load i32, i32* %3, align 4
  %41 = udiv i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = udiv i32 %42, 2
  %44 = sub i32 %43, 1
  %45 = load i32, i32* @HIFN_PLL_ND_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ule i32 %49, 8
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i32, i32* @HIFN_PLL_IS_1_8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %59

55:                                               ; preds = %38
  %56 = load i32, i32* @HIFN_PLL_IS_9_12, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %61 = load i32, i32* @HIFN_1_PLL, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HIFN_PLL_PK_CLK_HBI, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @HIFN_PLL_PE_CLK_HBI, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @HIFN_PLL_BP, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @hifn_write_1(%struct.hifn_device* %60, i32 %61, i32 %68)
  %70 = call i32 @mdelay(i32 10)
  %71 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %72 = load i32, i32* @HIFN_1_PLL, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @HIFN_PLL_PK_CLK_HBI, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @HIFN_PLL_PE_CLK_HBI, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @hifn_write_1(%struct.hifn_device* %71, i32 %72, i32 %77)
  %79 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %80 = load i32, i32* @HIFN_1_PLL, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @HIFN_PLL_PK_CLK_PLL, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @HIFN_PLL_PE_CLK_PLL, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @hifn_write_1(%struct.hifn_device* %79, i32 %80, i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = add i32 %87, 1
  %89 = mul i32 1000000, %88
  %90 = load i32, i32* %4, align 4
  %91 = mul i32 %89, %90
  %92 = udiv i32 %91, 2
  %93 = load %struct.hifn_device*, %struct.hifn_device** %2, align 8
  %94 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
