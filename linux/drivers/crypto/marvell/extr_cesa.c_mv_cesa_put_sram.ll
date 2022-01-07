; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_put_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_put_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv_cesa_dev = type { i32, i32, %struct.mv_cesa_engine* }
%struct.mv_cesa_engine = type { i32, i64, i64 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @mv_cesa_put_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_cesa_put_sram(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_cesa_dev*, align 8
  %6 = alloca %struct.mv_cesa_engine*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.mv_cesa_dev* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.mv_cesa_dev* %8, %struct.mv_cesa_dev** %5, align 8
  %9 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %9, i32 0, i32 2
  %11 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %11, i64 %13
  store %struct.mv_cesa_engine* %14, %struct.mv_cesa_engine** %6, align 8
  %15 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %6, align 8
  %16 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %6, align 8
  %21 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %6, align 8
  %24 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %5, align 8
  %27 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @gen_pool_free(i64 %22, i64 %25, i32 %28)
  br label %42

30:                                               ; preds = %2
  %31 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %6, align 8
  %35 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %41 = call i32 @dma_unmap_resource(i32 %33, i32 %36, i32 %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %30, %19
  ret void
}

declare dso_local %struct.mv_cesa_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @gen_pool_free(i64, i64, i32) #1

declare dso_local i32 @dma_unmap_resource(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
