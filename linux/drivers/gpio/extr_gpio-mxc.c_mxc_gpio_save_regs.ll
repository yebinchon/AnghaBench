; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mxc_gpio_save_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mxc_gpio_save_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_gpio_port = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@GPIO_ICR1 = common dso_local global i64 0, align 8
@GPIO_ICR2 = common dso_local global i64 0, align 8
@GPIO_IMR = common dso_local global i64 0, align 8
@GPIO_GDIR = common dso_local global i64 0, align 8
@GPIO_EDGE_SEL = common dso_local global i64 0, align 8
@GPIO_DR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_gpio_port*)* @mxc_gpio_save_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_gpio_save_regs(%struct.mxc_gpio_port* %0) #0 {
  %2 = alloca %struct.mxc_gpio_port*, align 8
  store %struct.mxc_gpio_port* %0, %struct.mxc_gpio_port** %2, align 8
  %3 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %4 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %63

8:                                                ; preds = %1
  %9 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %10 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GPIO_ICR1, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i8* @readl(i64 %13)
  %15 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %16 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i8* %14, i8** %17, align 8
  %18 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %19 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GPIO_ICR2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i8* @readl(i64 %22)
  %24 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %25 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i8* %23, i8** %26, align 8
  %27 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %28 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GPIO_IMR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i8* @readl(i64 %31)
  %33 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %34 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %37 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GPIO_GDIR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i8* @readl(i64 %40)
  %42 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %43 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %46 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GPIO_EDGE_SEL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i8* @readl(i64 %49)
  %51 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %52 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %55 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GPIO_DR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i8* @readl(i64 %58)
  %60 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %61 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  br label %63

63:                                               ; preds = %8, %7
  ret void
}

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
