; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i64, i32, %struct.mxs_lradc* }
%struct.mxs_lradc = type { i32 }

@LRADC_CTRL1 = common dso_local global i64 0, align 8
@LRADC_CTRL1_TOUCH_DETECT_IRQ = common dso_local global i64 0, align 8
@TOUCHSCREEN_VCHANNEL1 = common dso_local global i32 0, align 4
@TOUCHSCREEN_VCHANNEL2 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mxs_lradc_ts_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_ts_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mxs_lradc_ts*, align 8
  %7 = alloca %struct.mxs_lradc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.mxs_lradc_ts*
  store %struct.mxs_lradc_ts* %13, %struct.mxs_lradc_ts** %6, align 8
  %14 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %6, align 8
  %15 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %14, i32 0, i32 2
  %16 = load %struct.mxs_lradc*, %struct.mxs_lradc** %15, align 8
  store %struct.mxs_lradc* %16, %struct.mxs_lradc** %7, align 8
  %17 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %6, align 8
  %18 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LRADC_CTRL1, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl(i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.mxs_lradc*, %struct.mxs_lradc** %7, align 8
  %24 = call i64 @mxs_lradc_irq_mask(%struct.mxs_lradc* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* @LRADC_CTRL1_TOUCH_DETECT_IRQ, align 8
  %26 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %27 = call i64 @LRADC_CTRL1_LRADC_IRQ(i32 %26)
  %28 = or i64 %25, %27
  %29 = load i32, i32* @TOUCHSCREEN_VCHANNEL2, align 4
  %30 = call i64 @LRADC_CTRL1_LRADC_IRQ(i32 %29)
  %31 = or i64 %28, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.mxs_lradc*, %struct.mxs_lradc** %7, align 8
  %34 = call i64 @mxs_lradc_irq_mask(%struct.mxs_lradc* %33)
  %35 = and i64 %32, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %76

39:                                               ; preds = %2
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %6, align 8
  %46 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %45, i32 0, i32 1
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %6, align 8
  %50 = call i32 @mxs_lradc_handle_touch(%struct.mxs_lradc_ts* %49)
  %51 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %6, align 8
  %52 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %51, i32 0, i32 1
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %56 = call i64 @LRADC_CTRL1_LRADC_IRQ(i32 %55)
  %57 = load i32, i32* @TOUCHSCREEN_VCHANNEL2, align 4
  %58 = call i64 @LRADC_CTRL1_LRADC_IRQ(i32 %57)
  %59 = or i64 %56, %58
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %9, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = and i64 %63, %64
  %66 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %6, align 8
  %67 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LRADC_CTRL1, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i64 %65, i64 %72)
  br label %74

74:                                               ; preds = %44, %39
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %37
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @mxs_lradc_irq_mask(%struct.mxs_lradc*) #1

declare dso_local i64 @LRADC_CTRL1_LRADC_IRQ(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mxs_lradc_handle_touch(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
