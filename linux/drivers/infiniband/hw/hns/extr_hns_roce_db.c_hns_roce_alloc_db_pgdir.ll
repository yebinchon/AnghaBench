; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_db.c_hns_roce_alloc_db_pgdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_db.c_hns_roce_alloc_db_pgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_db_pgdir = type { i32, i32, i32, i32*, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HNS_ROCE_DB_PER_PAGE = common dso_local global i32 0, align 4
@HNS_ROCE_DB_TYPE_COUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_db_pgdir* (%struct.device*)* @hns_roce_alloc_db_pgdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_db_pgdir* @hns_roce_alloc_db_pgdir(%struct.device* %0) #0 {
  %2 = alloca %struct.hns_roce_db_pgdir*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hns_roce_db_pgdir*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hns_roce_db_pgdir* @kzalloc(i32 32, i32 %5)
  store %struct.hns_roce_db_pgdir* %6, %struct.hns_roce_db_pgdir** %4, align 8
  %7 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %8 = icmp ne %struct.hns_roce_db_pgdir* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.hns_roce_db_pgdir* null, %struct.hns_roce_db_pgdir** %2, align 8
  br label %49

10:                                               ; preds = %1
  %11 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_db_pgdir, %struct.hns_roce_db_pgdir* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @HNS_ROCE_DB_PER_PAGE, align 4
  %15 = load i32, i32* @HNS_ROCE_DB_TYPE_COUNT, align 4
  %16 = sdiv i32 %14, %15
  %17 = call i32 @bitmap_fill(i32 %13, i32 %16)
  %18 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %19 = getelementptr inbounds %struct.hns_roce_db_pgdir, %struct.hns_roce_db_pgdir* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %22 = getelementptr inbounds %struct.hns_roce_db_pgdir, %struct.hns_roce_db_pgdir* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %26 = getelementptr inbounds %struct.hns_roce_db_pgdir, %struct.hns_roce_db_pgdir* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_db_pgdir, %struct.hns_roce_db_pgdir* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %35 = getelementptr inbounds %struct.hns_roce_db_pgdir, %struct.hns_roce_db_pgdir* %34, i32 0, i32 1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @dma_alloc_coherent(%struct.device* %32, i32 %33, i32* %35, i32 %36)
  %38 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_db_pgdir, %struct.hns_roce_db_pgdir* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %41 = getelementptr inbounds %struct.hns_roce_db_pgdir, %struct.hns_roce_db_pgdir* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %10
  %45 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  %46 = call i32 @kfree(%struct.hns_roce_db_pgdir* %45)
  store %struct.hns_roce_db_pgdir* null, %struct.hns_roce_db_pgdir** %2, align 8
  br label %49

47:                                               ; preds = %10
  %48 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %4, align 8
  store %struct.hns_roce_db_pgdir* %48, %struct.hns_roce_db_pgdir** %2, align 8
  br label %49

49:                                               ; preds = %47, %44, %9
  %50 = load %struct.hns_roce_db_pgdir*, %struct.hns_roce_db_pgdir** %2, align 8
  ret %struct.hns_roce_db_pgdir* %50
}

declare dso_local %struct.hns_roce_db_pgdir* @kzalloc(i32, i32) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.hns_roce_db_pgdir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
