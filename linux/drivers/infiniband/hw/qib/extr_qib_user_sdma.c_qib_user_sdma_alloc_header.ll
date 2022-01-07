; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_alloc_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_alloc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_user_sdma_queue = type { i32 }

@QIB_USER_SDMA_EXP_HEADER_LENGTH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qib_user_sdma_queue*, i64, i64*)* @qib_user_sdma_alloc_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qib_user_sdma_alloc_header(%struct.qib_user_sdma_queue* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qib_user_sdma_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  store %struct.qib_user_sdma_queue* %0, %struct.qib_user_sdma_queue** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @QIB_USER_SDMA_EXP_HEADER_LENGTH, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %5, align 8
  %14 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i64*, i64** %7, align 8
  %18 = call i8* @dma_pool_alloc(i32 %15, i32 %16, i64* %17)
  store i8* %18, i8** %8, align 8
  br label %20

19:                                               ; preds = %3
  store i8* null, i8** %8, align 8
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kmalloc(i64 %24, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  br label %34

30:                                               ; preds = %23
  %31 = load i64*, i64** %7, align 8
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %30, %20
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %4, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8*, i8** %4, align 8
  ret i8* %35
}

declare dso_local i8* @dma_pool_alloc(i32, i32, i64*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
