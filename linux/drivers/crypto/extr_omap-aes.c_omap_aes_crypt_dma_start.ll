; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_crypt_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_crypt_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"total: %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"dma_map_sg() error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_aes_crypt_dma_start(%struct.omap_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_aes_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %3, align 8
  %5 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %6 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %10 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %1
  %14 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %15 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %18 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %21 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DMA_TO_DEVICE, align 4
  %24 = call i32 @dma_map_sg(i32 %16, i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %13
  %28 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %29 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %103

34:                                               ; preds = %13
  %35 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %36 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %39 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %42 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @dma_map_sg(i32 %37, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %34
  %49 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %50 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %103

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %58 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %59 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %62 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %65 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %68 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @omap_aes_crypt_dma(%struct.omap_aes_dev* %57, i32 %60, i32 %63, i32 %66, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %56
  %74 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %75 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %101, label %78

78:                                               ; preds = %73
  %79 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %80 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %83 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %86 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i32 @dma_unmap_sg(i32 %81, i32 %84, i32 %87, i32 %88)
  %90 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %91 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %94 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %3, align 8
  %97 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %100 = call i32 @dma_unmap_sg(i32 %92, i32 %95, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %78, %73, %56
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %48, %27
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @omap_aes_crypt_dma(%struct.omap_aes_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
