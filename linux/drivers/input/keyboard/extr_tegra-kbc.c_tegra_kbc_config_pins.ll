; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_config_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_config_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_kbc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@KBC_MAX_GPIO = common dso_local global i32 0, align 4
@KBC_ROW_CFG0_0 = common dso_local global i32 0, align 4
@KBC_COL_CFG0_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_kbc*)* @tegra_kbc_config_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_kbc_config_pins(%struct.tegra_kbc* %0) #0 {
  %2 = alloca %struct.tegra_kbc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_kbc* %0, %struct.tegra_kbc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %111, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @KBC_MAX_GPIO, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %114

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = srem i32 %17, 6
  %19 = mul nsw i32 5, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = srem i32 %20, 8
  %22 = mul nsw i32 4, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 31, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 15, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %27, 6
  %29 = mul nsw i32 %28, 4
  %30 = load i32, i32* @KBC_ROW_CFG0_0, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sdiv i32 %32, 8
  %34 = mul nsw i32 %33, 4
  %35 = load i32, i32* @KBC_COL_CFG0_0, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %38 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @readl(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %44 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @readl(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %6, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %58 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %96 [
    i32 128, label %65
    i32 130, label %80
    i32 129, label %95
  ]

65:                                               ; preds = %16
  %66 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %67 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  %75 = or i32 %74, 1
  %76 = load i32, i32* %4, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %96

80:                                               ; preds = %16
  %81 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %82 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 1
  %90 = or i32 %89, 1
  %91 = load i32, i32* %5, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %96

95:                                               ; preds = %16
  br label %96

96:                                               ; preds = %16, %95, %80, %65
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %99 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @writel(i32 %97, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %106 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i32 @writel(i32 %104, i32 %109)
  br label %111

111:                                              ; preds = %96
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %12

114:                                              ; preds = %12
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
