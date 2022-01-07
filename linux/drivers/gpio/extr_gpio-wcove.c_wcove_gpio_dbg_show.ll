; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_gpio_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-wcove.c_wcove_gpio_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.wcove_gpio = type { i32 }

@WCOVE_GPIO_NUM = common dso_local global i32 0, align 4
@GROUP0_NR_IRQS = common dso_local global i32 0, align 4
@CTRL_OUT = common dso_local global i32 0, align 4
@CTRL_IN = common dso_local global i32 0, align 4
@IRQ_MASK_BASE = common dso_local global i64 0, align 8
@IRQ_STATUS_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Failed to read registers: ctrl out/in or irq status/mask\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c" gpio-%-2d %s %s %s %s ctlo=%2x,%s %s\0A\00", align 1
@CTLO_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"in \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@CTLI_INTCNT_NE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"fall\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@CTLI_INTCNT_PE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"rise\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"mask  \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"unmask\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gpio_chip*)* @wcove_gpio_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcove_gpio_dbg_show(%struct.seq_file* %0, %struct.gpio_chip* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wcove_gpio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %4, align 8
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %15 = call %struct.wcove_gpio* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.wcove_gpio* %15, %struct.wcove_gpio** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %120, %2
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @WCOVE_GPIO_NUM, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %123

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @GROUP0_NR_IRQS, align 4
  %23 = icmp slt i32 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  store i32 %25, i32* %12, align 4
  %26 = load %struct.wcove_gpio*, %struct.wcove_gpio** %9, align 8
  %27 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CTRL_OUT, align 4
  %31 = call i64 @to_reg(i32 %29, i32 %30)
  %32 = call i64 @regmap_read(i32 %28, i64 %31, i32* %5)
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load %struct.wcove_gpio*, %struct.wcove_gpio** %9, align 8
  %38 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @CTRL_IN, align 4
  %42 = call i64 @to_reg(i32 %40, i32 %41)
  %43 = call i64 @regmap_read(i32 %39, i64 %42, i32* %6)
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load %struct.wcove_gpio*, %struct.wcove_gpio** %9, align 8
  %49 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @IRQ_MASK_BASE, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i64 @regmap_read(i32 %50, i64 %54, i32* %7)
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load %struct.wcove_gpio*, %struct.wcove_gpio** %9, align 8
  %61 = getelementptr inbounds %struct.wcove_gpio, %struct.wcove_gpio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @IRQ_STATUS_BASE, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = call i64 @regmap_read(i32 %62, i64 %66, i32* %8)
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %20
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %123

76:                                               ; preds = %20
  %77 = load i32, i32* %10, align 4
  %78 = srem i32 %77, 8
  store i32 %78, i32* %11, align 4
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @CTLO_DIR_OUT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @CTLI_INTCNT_NE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @CTLI_INTCNT_PE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @BIT(i32 %113)
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)
  %119 = call i32 @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %80, i8* %86, i8* %91, i8* %97, i8* %103, i32 %104, i8* %111, i8* %118)
  br label %120

120:                                              ; preds = %76
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %16

123:                                              ; preds = %74, %16
  ret void
}

declare dso_local %struct.wcove_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @regmap_read(i32, i64, i32*) #1

declare dso_local i64 @to_reg(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
