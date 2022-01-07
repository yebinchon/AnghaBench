; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_intern.h_caam_get_dma_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_intern.h_caam_get_dma_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@caam_ptr_sz = common dso_local global i32 0, align 4
@caam_dpaa2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"fsl,sec-v5.0-job-ring\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fsl,sec-v5.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @caam_get_dma_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_get_dma_mask(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = load i32, i32* @caam_ptr_sz, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @DMA_BIT_MASK(i32 32)
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load i64, i64* @caam_dpaa2, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @DMA_BIT_MASK(i32 49)
  store i32 %17, i32* %2, align 4
  br label %30

18:                                               ; preds = %13
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i64 @of_device_is_compatible(%struct.device_node* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i64 @of_device_is_compatible(%struct.device_node* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18
  %27 = call i32 @DMA_BIT_MASK(i32 40)
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %22
  %29 = call i32 @DMA_BIT_MASK(i32 36)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26, %16, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
