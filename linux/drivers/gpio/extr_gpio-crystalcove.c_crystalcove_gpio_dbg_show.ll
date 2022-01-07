; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_gpio_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-crystalcove.c_crystalcove_gpio_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.crystalcove_gpio = type { i32 }

@CRYSTALCOVE_GPIO_NUM = common dso_local global i32 0, align 4
@CTRL_OUT = common dso_local global i32 0, align 4
@CTRL_IN = common dso_local global i32 0, align 4
@MGPIO0IRQS0 = common dso_local global i32 0, align 4
@MGPIO1IRQS0 = common dso_local global i32 0, align 4
@MGPIO0IRQSX = common dso_local global i32 0, align 4
@MGPIO1IRQSX = common dso_local global i32 0, align 4
@GPIO0IRQ = common dso_local global i32 0, align 4
@GPIO1IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c" gpio-%-2d %s %s %s %s ctlo=%2x,%s %s %s\0A\00", align 1
@CTLO_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"in \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@CTLI_INTCNT_NE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"fall\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@CTLI_INTCNT_PE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"rise\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"s0 mask  \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"s0 unmask\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"sx mask  \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"sx unmask\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gpio_chip*)* @crystalcove_gpio_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crystalcove_gpio_dbg_show(%struct.seq_file* %0, %struct.gpio_chip* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.crystalcove_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %4, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = call %struct.crystalcove_gpio* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.crystalcove_gpio* %14, %struct.crystalcove_gpio** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %120, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CRYSTALCOVE_GPIO_NUM, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %123

19:                                               ; preds = %15
  %20 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %21 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CTRL_OUT, align 4
  %25 = call i32 @to_reg(i32 %23, i32 %24)
  %26 = call i32 @regmap_read(i32 %22, i32 %25, i32* %8)
  %27 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %28 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CTRL_IN, align 4
  %32 = call i32 @to_reg(i32 %30, i32 %31)
  %33 = call i32 @regmap_read(i32 %29, i32 %32, i32* %9)
  %34 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %35 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = load i32, i32* @MGPIO0IRQS0, align 4
  br label %43

41:                                               ; preds = %19
  %42 = load i32, i32* @MGPIO1IRQS0, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @regmap_read(i32 %36, i32 %44, i32* %10)
  %46 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %47 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @MGPIO0IRQSX, align 4
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @MGPIO1IRQSX, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = call i32 @regmap_read(i32 %48, i32 %56, i32* %11)
  %58 = load %struct.crystalcove_gpio*, %struct.crystalcove_gpio** %5, align 8
  %59 = getelementptr inbounds %struct.crystalcove_gpio, %struct.crystalcove_gpio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @GPIO0IRQ, align 4
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @GPIO1IRQ, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = call i32 @regmap_read(i32 %60, i32 %68, i32* %12)
  %70 = load i32, i32* %6, align 4
  %71 = srem i32 %70, 8
  store i32 %71, i32* %7, align 4
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @CTLO_DIR_OUT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @CTLI_INTCNT_NE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @CTLI_INTCNT_PE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @BIT(i32 %99)
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @BIT(i32 %106)
  %108 = and i32 %105, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @BIT(i32 %113)
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)
  %119 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %79, i8* %84, i8* %90, i8* %96, i32 %97, i8* %104, i8* %111, i8* %118)
  br label %120

120:                                              ; preds = %67
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %15

123:                                              ; preds = %15
  ret void
}

declare dso_local %struct.crystalcove_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @to_reg(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
