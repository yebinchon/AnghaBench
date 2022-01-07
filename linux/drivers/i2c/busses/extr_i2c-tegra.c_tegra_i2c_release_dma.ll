; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_release_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_dev = type { i32*, i32*, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_i2c_dev*)* @tegra_i2c_release_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_i2c_release_dma(%struct.tegra_i2c_dev* %0) #0 {
  %2 = alloca %struct.tegra_i2c_dev*, align 8
  store %struct.tegra_i2c_dev* %0, %struct.tegra_i2c_dev** %2, align 8
  %3 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %15 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dma_free_coherent(i32 %10, i32 %13, i32* %16, i32 %19)
  %21 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %7, %1
  %24 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %25 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %30 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dma_release_channel(i32* %31)
  %33 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %34 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %37 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %42 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dma_release_channel(i32* %43)
  %45 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %2, align 8
  %46 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
