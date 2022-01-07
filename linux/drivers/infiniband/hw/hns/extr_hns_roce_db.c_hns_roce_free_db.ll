; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_db.c_hns_roce_free_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_db.c_hns_roce_free_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i32 }
%struct.hns_roce_db = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32 }

@HNS_ROCE_DB_PER_PAGE = common dso_local global i32 0, align 4
@HNS_ROCE_DB_TYPE_COUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_free_db(%struct.hns_roce_dev* %0, %struct.hns_roce_db* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_db*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_db* %1, %struct.hns_roce_db** %4, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %11 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %21, 1
  %23 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %24 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @test_bit(i32 %22, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = xor i32 %32, 1
  %34 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %35 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @clear_bit(i32 %33, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %31, %20, %2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %49 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_bit(i32 %47, i32 %57)
  %59 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %60 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HNS_ROCE_DB_PER_PAGE, align 4
  %66 = load i32, i32* @HNS_ROCE_DB_TYPE_COUNT, align 4
  %67 = sdiv i32 %65, %66
  %68 = call i64 @bitmap_full(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %43
  %71 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %72 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %76 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %82 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dma_free_coherent(i32 %73, i32 %74, i32 %80, i32 %86)
  %88 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %89 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @list_del(i32* %92)
  %94 = load %struct.hns_roce_db*, %struct.hns_roce_db** %4, align 8
  %95 = getelementptr inbounds %struct.hns_roce_db, %struct.hns_roce_db* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = call i32 @kfree(%struct.TYPE_4__* %97)
  br label %99

99:                                               ; preds = %70, %43
  %100 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %101 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @bitmap_full(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
