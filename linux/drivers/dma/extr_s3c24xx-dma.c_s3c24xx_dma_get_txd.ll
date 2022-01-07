; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_get_txd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_get_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_txd = type { i32, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@S3C24XX_DCON_INT = common dso_local global i32 0, align 4
@S3C24XX_DCON_NORELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s3c24xx_txd* ()* @s3c24xx_dma_get_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s3c24xx_txd* @s3c24xx_dma_get_txd() #0 {
  %1 = alloca %struct.s3c24xx_txd*, align 8
  %2 = load i32, i32* @GFP_NOWAIT, align 4
  %3 = call %struct.s3c24xx_txd* @kzalloc(i32 8, i32 %2)
  store %struct.s3c24xx_txd* %3, %struct.s3c24xx_txd** %1, align 8
  %4 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %1, align 8
  %5 = icmp ne %struct.s3c24xx_txd* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %1, align 8
  %8 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %7, i32 0, i32 1
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load i32, i32* @S3C24XX_DCON_INT, align 4
  %11 = load i32, i32* @S3C24XX_DCON_NORELOAD, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %1, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %6, %0
  %16 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %1, align 8
  ret %struct.s3c24xx_txd* %16
}

declare dso_local %struct.s3c24xx_txd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
