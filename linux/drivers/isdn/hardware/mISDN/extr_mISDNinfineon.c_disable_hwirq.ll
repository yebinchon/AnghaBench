; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_disable_hwirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_disable_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TIGER_AUX_IRQMASK = common dso_local global i64 0, align 8
@QS1000_IRQ_OFF = common dso_local global i32 0, align 4
@ELSA_IRQ_ADDR = common dso_local global i64 0, align 8
@QS3000_IRQ_OFF = common dso_local global i32 0, align 4
@NICCY_IRQ_CTRL_REG = common dso_local global i64 0, align 8
@NICCY_IRQ_DISABLE = common dso_local global i64 0, align 8
@SCT_PLX_IRQ_ADDR = common dso_local global i64 0, align 8
@SCT_PLX_IRQ_ENABLE = common dso_local global i32 0, align 4
@GAZEL_INCSR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf_hw*)* @disable_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_hwirq(%struct.inf_hw* %0) #0 {
  %2 = alloca %struct.inf_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.inf_hw* %0, %struct.inf_hw** %2, align 8
  %5 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %6 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %97 [
    i32 137, label %10
    i32 136, label %10
    i32 128, label %16
    i32 130, label %16
    i32 132, label %25
    i32 131, label %35
    i32 133, label %45
    i32 129, label %66
    i32 135, label %88
    i32 134, label %88
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %12 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @writel(i32 0, i32 %14)
  br label %98

16:                                               ; preds = %1, %1
  %17 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %18 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @TIGER_AUX_IRQMASK, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 0, i64 %23)
  br label %98

25:                                               ; preds = %1
  %26 = load i32, i32* @QS1000_IRQ_OFF, align 4
  %27 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %28 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @ELSA_IRQ_ADDR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i32 %26, i64 %33)
  br label %98

35:                                               ; preds = %1
  %36 = load i32, i32* @QS3000_IRQ_OFF, align 4
  %37 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %38 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @ELSA_IRQ_ADDR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %36, i64 %43)
  br label %98

45:                                               ; preds = %1
  %46 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %47 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @NICCY_IRQ_CTRL_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i64 @inl(i64 %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* @NICCY_IRQ_DISABLE, align 8
  %55 = load i64, i64* %4, align 8
  %56 = and i64 %55, %54
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %59 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @NICCY_IRQ_CTRL_REG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outl(i64 %57, i64 %64)
  br label %98

66:                                               ; preds = %1
  %67 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %68 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @SCT_PLX_IRQ_ADDR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @inw(i64 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @SCT_PLX_IRQ_ENABLE, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %81 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @SCT_PLX_IRQ_ADDR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 %79, i64 %86)
  br label %98

88:                                               ; preds = %1, %1
  %89 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %90 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @GAZEL_INCSR, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outb(i32 0, i64 %95)
  br label %98

97:                                               ; preds = %1
  br label %98

98:                                               ; preds = %97, %88, %66, %45, %35, %25, %16, %10
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
