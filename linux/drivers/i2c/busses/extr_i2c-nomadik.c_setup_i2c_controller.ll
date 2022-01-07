; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_setup_i2c_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_setup_i2c_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_i2c_dev = type { i32, i32, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@I2C_CR = common dso_local global i64 0, align 8
@I2C_HSMCR = common dso_local global i64 0, align 8
@I2C_TFTR = common dso_local global i64 0, align 8
@I2C_RFTR = common dso_local global i64 0, align 8
@I2C_DMAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"calculated SLSU = %04x\0A\00", align 1
@I2C_SCR = common dso_local global i64 0, align 8
@I2C_BRCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"do not support this mode defaulting to std. mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nmk_i2c_dev*)* @setup_i2c_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_i2c_controller(%struct.nmk_i2c_dev* %0) #0 {
  %2 = alloca %struct.nmk_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nmk_i2c_dev* %0, %struct.nmk_i2c_dev** %2, align 8
  %9 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @I2C_CR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  %15 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %16 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I2C_HSMCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 0, i64 %19)
  %21 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @I2C_TFTR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  %27 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %28 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @I2C_RFTR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 0, i64 %31)
  %33 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %34 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @I2C_DMAR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 0, i64 %37)
  %39 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %40 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_get_rate(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @DIV_ROUND_UP_ULL(i64 1000000000, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %46 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %55 [
    i32 131, label %48
    i32 130, label %48
    i32 129, label %51
    i32 128, label %54
  ]

48:                                               ; preds = %1, %1
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @DIV_ROUND_UP(i32 100, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %58

51:                                               ; preds = %1
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @DIV_ROUND_UP(i32 10, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %58

54:                                               ; preds = %1
  br label %55

55:                                               ; preds = %1, %54
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @DIV_ROUND_UP(i32 250, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %51, %48
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %62 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_dbg(i32* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 16
  %69 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %70 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @I2C_SCR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %76 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 100000
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 3, i32 2
  store i32 %80, i32* %6, align 4
  store i32 0, i32* %3, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %83 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sdiv i32 %81, %86
  %88 = and i32 %87, 65535
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %93 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @I2C_BRCR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %99 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 131
  br i1 %101, label %102, label %126

102:                                              ; preds = %58
  %103 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %104 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %103, i32 0, i32 5
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %5, align 4
  %109 = sdiv i32 %108, 200000
  %110 = and i32 %109, 65535
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %115 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @I2C_BRCR, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  %120 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %121 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @I2C_CR, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel(i32 2048, i64 %124)
  br label %126

126:                                              ; preds = %102, %58
  %127 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %128 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 4
  %131 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %132 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @I2C_CR, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %130, i64 %135)
  %137 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %138 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %141 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @I2C_TFTR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  %146 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %147 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %2, align 8
  %150 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @I2C_RFTR, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel(i32 %148, i64 %153)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
