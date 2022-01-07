; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i3c_master = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@MST_ISR = common dso_local global i64 0, align 8
@MST_IMR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@MST_INT_IBIR_THR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cdns_i3c_master_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i3c_master_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cdns_i3c_master*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.cdns_i3c_master*
  store %struct.cdns_i3c_master* %9, %struct.cdns_i3c_master** %6, align 8
  %10 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %11 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MST_ISR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %18 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MST_IMR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = and i32 %16, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %29 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @cdns_i3c_master_end_xfer_locked(%struct.cdns_i3c_master* %32, i32 %33)
  %35 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %36 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MST_INT_IBIR_THR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %6, align 8
  %45 = call i32 @cnds_i3c_master_demux_ibis(%struct.cdns_i3c_master* %44)
  br label %46

46:                                               ; preds = %43, %27
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %25
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cdns_i3c_master_end_xfer_locked(%struct.cdns_i3c_master*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cnds_i3c_master_demux_ibis(%struct.cdns_i3c_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
