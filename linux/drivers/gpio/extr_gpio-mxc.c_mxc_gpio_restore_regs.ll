; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mxc_gpio_restore_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mxc.c_mxc_gpio_restore_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_gpio_port = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@GPIO_ICR1 = common dso_local global i64 0, align 8
@GPIO_ICR2 = common dso_local global i64 0, align 8
@GPIO_IMR = common dso_local global i64 0, align 8
@GPIO_GDIR = common dso_local global i64 0, align 8
@GPIO_EDGE_SEL = common dso_local global i64 0, align 8
@GPIO_DR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_gpio_port*)* @mxc_gpio_restore_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_gpio_restore_regs(%struct.mxc_gpio_port* %0) #0 {
  %2 = alloca %struct.mxc_gpio_port*, align 8
  store %struct.mxc_gpio_port* %0, %struct.mxc_gpio_port** %2, align 8
  %3 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %4 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %69

8:                                                ; preds = %1
  %9 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %10 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %14 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GPIO_ICR1, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %20 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %24 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GPIO_ICR2, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %30 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %34 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GPIO_IMR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %40 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %44 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @GPIO_GDIR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %50 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %54 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @GPIO_EDGE_SEL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %60 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %2, align 8
  %64 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GPIO_DR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  br label %69

69:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
