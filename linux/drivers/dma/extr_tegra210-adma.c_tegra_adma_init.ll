; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_adma = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@ADMA_GLOBAL_SOFT_RESET = common dso_local global i64 0, align 8
@readl = common dso_local global i32 0, align 4
@ADMA_GLOBAL_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_adma*)* @tegra_adma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_adma_init(%struct.tegra_adma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_adma*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_adma* %0, %struct.tegra_adma** %3, align 8
  %6 = load %struct.tegra_adma*, %struct.tegra_adma** %3, align 8
  %7 = load %struct.tegra_adma*, %struct.tegra_adma** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @tdma_write(%struct.tegra_adma* %6, i64 %11, i32 1)
  %13 = load %struct.tegra_adma*, %struct.tegra_adma** %3, align 8
  %14 = load i64, i64* @ADMA_GLOBAL_SOFT_RESET, align 8
  %15 = call i32 @tdma_write(%struct.tegra_adma* %13, i64 %14, i32 1)
  %16 = load i32, i32* @readl, align 4
  %17 = load %struct.tegra_adma*, %struct.tegra_adma** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tegra_adma*, %struct.tegra_adma** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %19, %24
  %26 = load i64, i64* @ADMA_GLOBAL_SOFT_RESET, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @readx_poll_timeout(i32 %16, i64 %27, i64 %28, i32 %31, i32 20, i32 10000)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.tegra_adma*, %struct.tegra_adma** %3, align 8
  %39 = load i64, i64* @ADMA_GLOBAL_CMD, align 8
  %40 = call i32 @tdma_write(%struct.tegra_adma* %38, i64 %39, i32 1)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @tdma_write(%struct.tegra_adma*, i64, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
