; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_free_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_free_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.mthca_db_page* }
%struct.mthca_db_page = type { i64*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MTHCA_DB_REC_PER_PAGE = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_free_db(%struct.mthca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mthca_db_page*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %15 = srem i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.mthca_db_page*, %struct.mthca_db_page** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %20, i64 %22
  store %struct.mthca_db_page* %23, %struct.mthca_db_page** %9, align 8
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.mthca_db_page*, %struct.mthca_db_page** %9, align 8
  %30 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %37 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %35, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %3
  %43 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %3
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.mthca_db_page*, %struct.mthca_db_page** %9, align 8
  %50 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clear_bit(i32 %48, i32 %51)
  %53 = load %struct.mthca_db_page*, %struct.mthca_db_page** %9, align 8
  %54 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MTHCA_DB_REC_PER_PAGE, align 4
  %57 = call i64 @bitmap_empty(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %120

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %62 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp sge i32 %60, %66
  br i1 %67, label %68, label %120

68:                                               ; preds = %59
  %69 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %70 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %72 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @mthca_uarc_virt(%struct.mthca_dev* %70, i32* %72, i32 %73)
  %75 = call i32 @mthca_UNMAP_ICM(%struct.mthca_dev* %69, i32 %74, i32 1)
  %76 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %77 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %81 = load %struct.mthca_db_page*, %struct.mthca_db_page** %9, align 8
  %82 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.mthca_db_page*, %struct.mthca_db_page** %9, align 8
  %85 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dma_free_coherent(i32* %79, i32 %80, i64* %83, i32 %86)
  %88 = load %struct.mthca_db_page*, %struct.mthca_db_page** %9, align 8
  %89 = getelementptr inbounds %struct.mthca_db_page, %struct.mthca_db_page* %88, i32 0, i32 0
  store i64* null, i64** %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %92 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %90, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %68
  %98 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %99 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %68
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %107 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %105, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %114 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %104
  br label %120

120:                                              ; preds = %119, %59, %47
  %121 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %122 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = call i32 @mutex_unlock(i32* %124)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @mthca_UNMAP_ICM(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_uarc_virt(%struct.mthca_dev*, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
