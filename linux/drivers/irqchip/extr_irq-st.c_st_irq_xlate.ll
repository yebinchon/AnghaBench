; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-st.c_st_irq_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-st.c_st_irq_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.st_irq_syscfg = type { i32 }

@ST_A9_IRQ_EN_EXT_0 = common dso_local global i32 0, align 4
@ST_A9_IRQ_EN_EXT_1 = common dso_local global i32 0, align 4
@ST_A9_IRQ_EN_EXT_2 = common dso_local global i32 0, align 4
@ST_A9_IRQ_EN_CTI_0 = common dso_local global i32 0, align 4
@ST_A9_IRQ_EN_CTI_1 = common dso_local global i32 0, align 4
@ST_A9_IRQ_EN_PMU_0 = common dso_local global i32 0, align 4
@ST_A9_IRQ_EN_PMU_1 = common dso_local global i32 0, align 4
@ST_A9_IRQ_EN_PL310_L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unrecognised device %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, i32, i32)* @st_irq_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_irq_xlate(%struct.platform_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_irq_syscfg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.st_irq_syscfg* @dev_get_drvdata(i32* %12)
  store %struct.st_irq_syscfg* %13, %struct.st_irq_syscfg** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %64 [
    i32 133, label %15
    i32 132, label %21
    i32 131, label %27
    i32 136, label %33
    i32 135, label %39
    i32 130, label %45
    i32 129, label %51
    i32 128, label %57
    i32 134, label %63
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @ST_A9_IRQ_EN_EXT_0, align 4
  %17 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %18 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %71

21:                                               ; preds = %4
  %22 = load i32, i32* @ST_A9_IRQ_EN_EXT_1, align 4
  %23 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %24 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %71

27:                                               ; preds = %4
  %28 = load i32, i32* @ST_A9_IRQ_EN_EXT_2, align 4
  %29 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %30 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %71

33:                                               ; preds = %4
  %34 = load i32, i32* @ST_A9_IRQ_EN_CTI_0, align 4
  %35 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %36 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %71

39:                                               ; preds = %4
  %40 = load i32, i32* @ST_A9_IRQ_EN_CTI_1, align 4
  %41 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %42 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %71

45:                                               ; preds = %4
  %46 = load i32, i32* @ST_A9_IRQ_EN_PMU_0, align 4
  %47 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %48 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %71

51:                                               ; preds = %4
  %52 = load i32, i32* @ST_A9_IRQ_EN_PMU_1, align 4
  %53 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %54 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %71

57:                                               ; preds = %4
  %58 = load i32, i32* @ST_A9_IRQ_EN_PL310_L2, align 4
  %59 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %60 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %71

63:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %88

64:                                               ; preds = %4
  %65 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %88

71:                                               ; preds = %57, %51, %45, %39, %33, %27, %21, %15
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ST_A9_IRQ_N_SEL(i32 %75, i32 %76)
  br label %82

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ST_A9_FIQ_N_SEL(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %77, %74 ], [ %81, %78 ]
  %84 = load %struct.st_irq_syscfg*, %struct.st_irq_syscfg** %10, align 8
  %85 = getelementptr inbounds %struct.st_irq_syscfg, %struct.st_irq_syscfg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %64, %63
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.st_irq_syscfg* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ST_A9_IRQ_N_SEL(i32, i32) #1

declare dso_local i32 @ST_A9_FIQ_N_SEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
