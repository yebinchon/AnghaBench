; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_done_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_done_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_des_dev = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"enter done_task\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@FLAGS_IN_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@FLAGS_OUT_DATA_ST_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @omap_des_done_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_des_done_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.omap_des_dev*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.omap_des_dev*
  store %struct.omap_des_dev* %5, %struct.omap_des_dev** %3, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %8 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %1
  %12 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %13 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %16 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %19 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %22 = call i32 @dma_sync_sg_for_device(i32 %14, i32 %17, i32 %20, i32 %21)
  %23 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %24 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %27 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %30 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i32 @dma_unmap_sg(i32 %25, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %35 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %38 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %41 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_unmap_sg(i32 %36, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %46 = call i32 @omap_des_crypt_dma_stop(%struct.omap_des_dev* %45)
  br label %47

47:                                               ; preds = %11, %1
  %48 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %49 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %48, i32 0, i32 4
  %50 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %51 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FLAGS_IN_DATA_ST_SHIFT, align 4
  %54 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %55 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @omap_crypto_cleanup(i32* %49, i32* null, i32 0, i32 %52, i32 %53, i32 %56)
  %58 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %59 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %58, i32 0, i32 3
  %60 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %61 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %64 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FLAGS_OUT_DATA_ST_SHIFT, align 4
  %67 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %68 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @omap_crypto_cleanup(i32* %59, i32* %62, i32 0, i32 %65, i32 %66, i32 %69)
  %71 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %72 = call i32 @omap_des_finish_req(%struct.omap_des_dev* %71, i32 0)
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @dma_sync_sg_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @omap_des_crypt_dma_stop(%struct.omap_des_dev*) #1

declare dso_local i32 @omap_crypto_cleanup(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @omap_des_finish_req(%struct.omap_des_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
