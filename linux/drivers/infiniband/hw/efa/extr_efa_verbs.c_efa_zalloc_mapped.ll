; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_zalloc_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_zalloc_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to map DMA address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.efa_dev*, i32*, i64, i32)* @efa_zalloc_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @efa_zalloc_mapped(%struct.efa_dev* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efa_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.efa_dev* %0, %struct.efa_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @__GFP_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i8* @alloc_pages_exact(i64 %11, i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %21 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dma_map_single(i32* %23, i8* %24, i64 %25, i32 %26)
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %30 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @dma_mapping_error(i32* %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %19
  %38 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %39 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %38, i32 0, i32 0
  %40 = call i32 @ibdev_err(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @free_pages_exact(i8* %41, i64 %42)
  store i8* null, i8** %5, align 8
  br label %46

44:                                               ; preds = %19
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %44, %37, %18
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i8* @alloc_pages_exact(i64, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @ibdev_err(i32*, i8*) #1

declare dso_local i32 @free_pages_exact(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
