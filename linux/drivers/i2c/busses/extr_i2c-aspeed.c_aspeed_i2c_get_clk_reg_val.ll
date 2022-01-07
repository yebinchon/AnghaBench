; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_get_clk_reg_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-aspeed.c_aspeed_i2c_get_clk_reg_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@ASPEED_I2CD_TIME_BASE_DIVISOR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"clamping clock divider: divider requested, %u, is greater than largest possible divider, %u.\0A\00", align 1
@ASPEED_I2CD_TIME_SCL_HIGH_SHIFT = common dso_local global i32 0, align 4
@ASPEED_I2CD_TIME_SCL_HIGH_MASK = common dso_local global i32 0, align 4
@ASPEED_I2CD_TIME_SCL_LOW_SHIFT = common dso_local global i32 0, align 4
@ASPEED_I2CD_TIME_SCL_LOW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @aspeed_i2c_get_clk_reg_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_i2c_get_clk_reg_val(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %20, %21
  %23 = call i32 @ilog2(i32 %22)
  %24 = add nsw i32 %23, 1
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi i32 [ %24, %18 ], [ 0, %25 ]
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ASPEED_I2CD_TIME_BASE_DIVISOR_MASK, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* @ASPEED_I2CD_TIME_BASE_DIVISOR_MASK, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40)
  br label %67

42:                                               ; preds = %26
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = add nsw i32 %43, %45
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %42
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %31
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @ASPEED_I2CD_TIME_SCL_HIGH_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* @ASPEED_I2CD_TIME_SCL_HIGH_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @ASPEED_I2CD_TIME_SCL_LOW_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* @ASPEED_I2CD_TIME_SCL_LOW_MASK, align 4
  %77 = and i32 %75, %76
  %78 = or i32 %72, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ASPEED_I2CD_TIME_BASE_DIVISOR_MASK, align 4
  %81 = and i32 %79, %80
  %82 = or i32 %78, %81
  ret i32 %82
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
