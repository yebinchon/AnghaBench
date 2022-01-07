; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { i64, i32, i64, i32 }

@HS = common dso_local global i64 0, align 8
@ULTRA_FAST = common dso_local global i64 0, align 8
@I2C_CLK_RATIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TWO_PIN_OO = common dso_local global i32 0, align 4
@TWO_PIN_OD = common dso_local global i32 0, align 4
@MCFGR1_IGNACK = common dso_local global i32 0, align 4
@LPI2C_MCFGR1 = common dso_local global i64 0, align 8
@LPI2C_MCFGR2 = common dso_local global i64 0, align 8
@LPI2C_MCCR1 = common dso_local global i64 0, align 8
@LPI2C_MCCR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpi2c_imx_struct*)* @lpi2c_imx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpi2c_imx_config(%struct.lpi2c_imx_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpi2c_imx_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %3, align 8
  %14 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %15 = call i32 @lpi2c_imx_set_mode(%struct.lpi2c_imx_struct* %14)
  %16 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %17 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_get_rate(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %21 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %27 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ULTRA_FAST, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %1
  store i32 0, i32* %5, align 4
  br label %33

32:                                               ; preds = %25
  store i32 2, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 %35, 7
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %42 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  %45 = udiv i32 %38, %44
  %46 = sub i32 %45, 3
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 1
  %49 = sub i32 %46, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @I2C_CLK_RATIO, align 4
  %52 = add i32 %50, %51
  %53 = load i32, i32* @I2C_CLK_RATIO, align 4
  %54 = add i32 %53, 1
  %55 = udiv i32 %52, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  %58 = sub i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 64
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  br label %66

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %34

66:                                               ; preds = %61, %34
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 7
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %151

72:                                               ; preds = %66
  %73 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %74 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ULTRA_FAST, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @TWO_PIN_OO, align 4
  store i32 %79, i32* %12, align 4
  br label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @TWO_PIN_OD, align 4
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %12, align 4
  %85 = shl i32 %84, 24
  %86 = or i32 %83, %85
  store i32 %86, i32* %13, align 4
  %87 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %88 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ULTRA_FAST, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load i32, i32* @MCFGR1_IGNACK, align 4
  %94 = load i32, i32* %13, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %92, %82
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %99 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LPI2C_MCFGR1, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load i32, i32* %5, align 4
  %105 = shl i32 %104, 16
  %106 = load i32, i32* %5, align 4
  %107 = shl i32 %106, 24
  %108 = or i32 %105, %107
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %111 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @LPI2C_MCFGR2, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel(i32 %109, i64 %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = ashr i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = shl i32 %119, 24
  %121 = load i32, i32* %6, align 4
  %122 = shl i32 %121, 16
  %123 = or i32 %120, %122
  %124 = load i32, i32* %7, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %123, %125
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %13, align 4
  %129 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %130 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HS, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %96
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %137 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @LPI2C_MCCR1, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  br label %150

142:                                              ; preds = %96
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %145 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @LPI2C_MCCR0, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  br label %150

150:                                              ; preds = %142, %134
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %69
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @lpi2c_imx_set_mode(%struct.lpi2c_imx_struct*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
