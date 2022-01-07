; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i3c_master = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@INTR_STATUS = common dso_local global i64 0, align 8
@INTR_STATUS_EN = common dso_local global i64 0, align 8
@INTR_ALL = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INTR_TRANSFER_ERR_STAT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_i3c_master_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_master_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dw_i3c_master*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.dw_i3c_master*
  store %struct.dw_i3c_master* %9, %struct.dw_i3c_master** %6, align 8
  %10 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %6, align 8
  %11 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INTR_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %6, align 8
  %18 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INTR_STATUS_EN, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = and i32 %16, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @INTR_ALL, align 4
  %27 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %6, align 8
  %28 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @INTR_STATUS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %60

34:                                               ; preds = %2
  %35 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %6, align 8
  %36 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dw_i3c_master_end_xfer_locked(%struct.dw_i3c_master* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @INTR_TRANSFER_ERR_STAT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i32, i32* @INTR_TRANSFER_ERR_STAT, align 4
  %48 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %6, align 8
  %49 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INTR_STATUS, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  br label %54

54:                                               ; preds = %46, %34
  %55 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %6, align 8
  %56 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %25
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dw_i3c_master_end_xfer_locked(%struct.dw_i3c_master*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
