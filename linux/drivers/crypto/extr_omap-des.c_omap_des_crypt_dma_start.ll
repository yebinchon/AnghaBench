; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_crypt_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_crypt_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_des_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"total: %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"dma_map_sg() error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_des_dev*)* @omap_des_crypt_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_des_crypt_dma_start(%struct.omap_des_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_des_dev*, align 8
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_des_dev* %0, %struct.omap_des_dev** %3, align 8
  %6 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %7 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @crypto_ablkcipher_reqtfm(i32 %8)
  %10 = call %struct.crypto_tfm* @crypto_ablkcipher_tfm(i32 %9)
  store %struct.crypto_tfm* %10, %struct.crypto_tfm** %4, align 8
  %11 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %12 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %16 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %1
  %20 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %21 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %24 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %27 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_map_sg(i32 %22, i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %19
  %34 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %35 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %109

40:                                               ; preds = %19
  %41 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %42 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %45 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %48 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = call i32 @dma_map_sg(i32 %43, i32 %46, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %40
  %55 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %56 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %109

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %64 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %65 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %68 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %71 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %74 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @omap_des_crypt_dma(%struct.crypto_tfm* %63, i32 %66, i32 %69, i32 %72, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %62
  %80 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %81 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %107, label %84

84:                                               ; preds = %79
  %85 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %86 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %89 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %92 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @dma_unmap_sg(i32 %87, i32 %90, i32 %93, i32 %94)
  %96 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %97 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %100 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %103 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %106 = call i32 @dma_unmap_sg(i32 %98, i32 %101, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %84, %79, %62
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %54, %33
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.crypto_tfm* @crypto_ablkcipher_tfm(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @omap_des_crypt_dma(%struct.crypto_tfm*, i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
