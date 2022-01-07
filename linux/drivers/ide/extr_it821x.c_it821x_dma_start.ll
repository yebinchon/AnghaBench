; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_it821x.c_it821x_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_it821x.c_it821x_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.it821x_dev = type { i64*, i64*, i64 }

@MWDMA_OFF = common dso_local global i64 0, align 8
@UDMA_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @it821x_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_dma_start(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.it821x_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.it821x_dev* @ide_get_hwifdata(i32* %9)
  store %struct.it821x_dev* %10, %struct.it821x_dev** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load %struct.it821x_dev*, %struct.it821x_dev** %4, align 8
  %17 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MWDMA_OFF, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = load %struct.it821x_dev*, %struct.it821x_dev** %4, align 8
  %27 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @it821x_program(%struct.TYPE_6__* %25, i64 %31)
  br label %57

33:                                               ; preds = %1
  %34 = load %struct.it821x_dev*, %struct.it821x_dev** %4, align 8
  %35 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UDMA_OFF, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load %struct.it821x_dev*, %struct.it821x_dev** %4, align 8
  %44 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = load %struct.it821x_dev*, %struct.it821x_dev** %4, align 8
  %50 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @it821x_program_udma(%struct.TYPE_6__* %48, i64 %54)
  br label %56

56:                                               ; preds = %47, %42, %33
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = call i32 @ide_dma_start(%struct.TYPE_6__* %58)
  ret void
}

declare dso_local %struct.it821x_dev* @ide_get_hwifdata(i32*) #1

declare dso_local i32 @it821x_program(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @it821x_program_udma(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ide_dma_start(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
