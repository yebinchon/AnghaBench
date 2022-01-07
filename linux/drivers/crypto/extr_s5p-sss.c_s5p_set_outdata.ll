; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_set_outdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_set_outdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_aes_dev*, %struct.scatterlist*)* @s5p_set_outdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_set_outdata(%struct.s5p_aes_dev* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_aes_dev*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  %6 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %7 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %18 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %19 = call i32 @dma_map_sg(i32 %16, %struct.scatterlist* %17, i32 1, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %13
  %25 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %26 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %27 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %26, i32 0, i32 0
  store %struct.scatterlist* %25, %struct.scatterlist** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %21, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
