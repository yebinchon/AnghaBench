; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_des_dev = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to request in DMA channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unable to request out DMA channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_des_dev*)* @omap_des_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_des_dma_init(%struct.omap_des_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_des_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_des_dev* %0, %struct.omap_des_dev** %3, align 8
  %5 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %6 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %5, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %8 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  %9 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %10 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @dma_request_chan(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %15 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %17 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %23 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %27 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @PTR_ERR(i32* %28)
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %32 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @dma_request_chan(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %37 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %39 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %30
  %44 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %45 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %49 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @PTR_ERR(i32* %50)
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %59

53:                                               ; preds = %43
  %54 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %55 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dma_release_channel(i32* %56)
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %52, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i8* @dma_request_chan(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
