; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_table_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_table_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_icm_table = type { i32, i32, i32, %struct.TYPE_4__**, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@MTHCA_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_table_get(%struct.mthca_dev* %0, %struct.mthca_icm_table* %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_icm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_icm_table* %1, %struct.mthca_icm_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %11 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %9, %13
  %15 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %16 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %22 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %25 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %34 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %132

43:                                               ; preds = %3
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %45 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %49 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @GFP_KERNEL, align 4
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @GFP_HIGHUSER, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* @__GFP_NOWARN, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %61 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_4__* @mthca_alloc_icm(%struct.mthca_dev* %44, i32 %47, i32 %59, i32 %62)
  %64 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %65 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %66, i64 %68
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %69, align 8
  %70 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %71 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %56
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %132

81:                                               ; preds = %56
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %83 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %84 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %91 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %92, %96
  %98 = call i64 @mthca_MAP_ICM(%struct.mthca_dev* %82, %struct.TYPE_4__* %89, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %81
  %101 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %102 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %103 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %110 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @mthca_free_icm(%struct.mthca_dev* %101, %struct.TYPE_4__* %108, i32 %111)
  %113 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %114 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %113, i32 0, i32 3
  %115 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %115, i64 %117
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %118, align 8
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %132

121:                                              ; preds = %81
  %122 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %123 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %121, %100, %78, %32
  %133 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %5, align 8
  %134 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %133, i32 0, i32 2
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @mthca_alloc_icm(%struct.mthca_dev*, i32, i32, i32) #1

declare dso_local i64 @mthca_MAP_ICM(%struct.mthca_dev*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
