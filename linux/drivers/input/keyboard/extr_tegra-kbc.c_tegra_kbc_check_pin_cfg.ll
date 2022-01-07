; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_check_pin_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_check_pin_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_kbc = type { i32, %struct.TYPE_2__*, %struct.tegra_kbc_pin_cfg* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tegra_kbc_pin_cfg = type { i32, i32 }

@KBC_MAX_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pin_cfg[%d]: invalid row number %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"pin_cfg[%d]: invalid column number %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"pin_cfg[%d]: invalid entry type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_kbc*, i32*)* @tegra_kbc_check_pin_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_kbc_check_pin_cfg(%struct.tegra_kbc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_kbc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_kbc_pin_cfg*, align 8
  store %struct.tegra_kbc* %0, %struct.tegra_kbc** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %79, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @KBC_MAX_GPIO, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %82

13:                                               ; preds = %9
  %14 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %14, i32 0, i32 2
  %16 = load %struct.tegra_kbc_pin_cfg*, %struct.tegra_kbc_pin_cfg** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tegra_kbc_pin_cfg, %struct.tegra_kbc_pin_cfg* %16, i64 %18
  store %struct.tegra_kbc_pin_cfg* %19, %struct.tegra_kbc_pin_cfg** %7, align 8
  %20 = load %struct.tegra_kbc_pin_cfg*, %struct.tegra_kbc_pin_cfg** %7, align 8
  %21 = getelementptr inbounds %struct.tegra_kbc_pin_cfg, %struct.tegra_kbc_pin_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %67 [
    i32 128, label %23
    i32 130, label %46
    i32 129, label %66
  ]

23:                                               ; preds = %13
  %24 = load %struct.tegra_kbc_pin_cfg*, %struct.tegra_kbc_pin_cfg** %7, align 8
  %25 = getelementptr inbounds %struct.tegra_kbc_pin_cfg, %struct.tegra_kbc_pin_cfg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %26, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %23
  %34 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tegra_kbc_pin_cfg*, %struct.tegra_kbc_pin_cfg** %7, align 8
  %39 = getelementptr inbounds %struct.tegra_kbc_pin_cfg, %struct.tegra_kbc_pin_cfg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  store i32 0, i32* %3, align 4
  br label %83

42:                                               ; preds = %23
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %78

46:                                               ; preds = %13
  %47 = load %struct.tegra_kbc_pin_cfg*, %struct.tegra_kbc_pin_cfg** %7, align 8
  %48 = getelementptr inbounds %struct.tegra_kbc_pin_cfg, %struct.tegra_kbc_pin_cfg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %49, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.tegra_kbc_pin_cfg*, %struct.tegra_kbc_pin_cfg** %7, align 8
  %62 = getelementptr inbounds %struct.tegra_kbc_pin_cfg, %struct.tegra_kbc_pin_cfg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63)
  store i32 0, i32* %3, align 4
  br label %83

65:                                               ; preds = %46
  br label %78

66:                                               ; preds = %13
  br label %78

67:                                               ; preds = %13
  %68 = load %struct.tegra_kbc*, %struct.tegra_kbc** %4, align 8
  %69 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.tegra_kbc_pin_cfg*, %struct.tegra_kbc_pin_cfg** %7, align 8
  %72 = getelementptr inbounds %struct.tegra_kbc_pin_cfg, %struct.tegra_kbc_pin_cfg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tegra_kbc_pin_cfg*, %struct.tegra_kbc_pin_cfg** %7, align 8
  %75 = getelementptr inbounds %struct.tegra_kbc_pin_cfg, %struct.tegra_kbc_pin_cfg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76)
  store i32 0, i32* %3, align 4
  br label %83

78:                                               ; preds = %66, %65, %42
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %9

82:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %67, %56, %33
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
