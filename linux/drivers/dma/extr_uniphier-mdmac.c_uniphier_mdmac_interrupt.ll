; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_uniphier-mdmac.c_uniphier_mdmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_mdmac_chan = type { %struct.TYPE_2__, %struct.uniphier_mdmac_desc*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.uniphier_mdmac_desc = type { i64, i64, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@UNIPHIER_MDMAC_CH_IRQ_DET = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@UNIPHIER_MDMAC_CH_IRQ_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @uniphier_mdmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_mdmac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uniphier_mdmac_chan*, align 8
  %6 = alloca %struct.uniphier_mdmac_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uniphier_mdmac_chan*
  store %struct.uniphier_mdmac_chan* %10, %struct.uniphier_mdmac_chan** %5, align 8
  %11 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %5, align 8
  %13 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %5, align 8
  %17 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNIPHIER_MDMAC_CH_IRQ_DET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %7, align 4
  br label %66

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %5, align 8
  %29 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UNIPHIER_MDMAC_CH_IRQ_REQ, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %5, align 8
  %35 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %34, i32 0, i32 1
  %36 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %35, align 8
  store %struct.uniphier_mdmac_desc* %36, %struct.uniphier_mdmac_desc** %6, align 8
  %37 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %6, align 8
  %38 = icmp ne %struct.uniphier_mdmac_desc* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %66

40:                                               ; preds = %26
  %41 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %6, align 8
  %42 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %6, align 8
  %46 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %6, align 8
  %49 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %6, align 8
  %54 = getelementptr inbounds %struct.uniphier_mdmac_desc, %struct.uniphier_mdmac_desc* %53, i32 0, i32 2
  %55 = call i32 @vchan_cookie_complete(i32* %54)
  %56 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %5, align 8
  %57 = call %struct.uniphier_mdmac_desc* @uniphier_mdmac_next_desc(%struct.uniphier_mdmac_chan* %56)
  store %struct.uniphier_mdmac_desc* %57, %struct.uniphier_mdmac_desc** %6, align 8
  %58 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %6, align 8
  %59 = icmp ne %struct.uniphier_mdmac_desc* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %66

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %5, align 8
  %64 = load %struct.uniphier_mdmac_desc*, %struct.uniphier_mdmac_desc** %6, align 8
  %65 = call i32 @uniphier_mdmac_handle(%struct.uniphier_mdmac_chan* %63, %struct.uniphier_mdmac_desc* %64)
  br label %66

66:                                               ; preds = %62, %60, %39, %24
  %67 = load %struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_chan** %5, align 8
  %68 = getelementptr inbounds %struct.uniphier_mdmac_chan, %struct.uniphier_mdmac_chan* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local %struct.uniphier_mdmac_desc* @uniphier_mdmac_next_desc(%struct.uniphier_mdmac_chan*) #1

declare dso_local i32 @uniphier_mdmac_handle(%struct.uniphier_mdmac_chan*, %struct.uniphier_mdmac_desc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
