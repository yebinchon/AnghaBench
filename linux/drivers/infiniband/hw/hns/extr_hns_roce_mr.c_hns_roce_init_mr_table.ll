; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_init_mr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_init_mr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.hns_roce_mr_table }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i64 }
%struct.hns_roce_mr_table = type { i32, i32, i32, i32, i32 }

@HEM_TYPE_CQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_init_mr_table(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_mr_table*, align 8
  %5 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 1
  store %struct.hns_roce_mr_table* %7, %struct.hns_roce_mr_table** %4, align 8
  %8 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %9 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %8, i32 0, i32 0
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hns_roce_bitmap_init(i32* %9, i64 %13, i64 %18, i32 %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %127

28:                                               ; preds = %1
  %29 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %30 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %29, i32 0, i32 1
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ilog2(i64 %34)
  %36 = call i32 @hns_roce_buddy_init(i32* %30, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %122

40:                                               ; preds = %28
  %41 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %42 = load i32, i32* @HEM_TYPE_CQE, align 4
  %43 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %47 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %46, i32 0, i32 2
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @ilog2(i64 %51)
  %53 = call i32 @hns_roce_buddy_init(i32* %47, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %118

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %60 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %66 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %65, i32 0, i32 3
  %67 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %68 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ilog2(i64 %70)
  %72 = call i32 @hns_roce_buddy_init(i32* %66, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %108

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %84, i32 0, i32 4
  %86 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %87 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ilog2(i64 %89)
  %91 = call i32 @hns_roce_buddy_init(i32* %85, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %97

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %77
  store i32 0, i32* %2, align 4
  br label %127

97:                                               ; preds = %94
  %98 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %99 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %105 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %104, i32 0, i32 3
  %106 = call i32 @hns_roce_buddy_cleanup(i32* %105)
  br label %107

107:                                              ; preds = %103, %97
  br label %108

108:                                              ; preds = %107, %75
  %109 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %110 = load i32, i32* @HEM_TYPE_CQE, align 4
  %111 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %115 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %114, i32 0, i32 2
  %116 = call i32 @hns_roce_buddy_cleanup(i32* %115)
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117, %56
  %119 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %120 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %119, i32 0, i32 1
  %121 = call i32 @hns_roce_buddy_cleanup(i32* %120)
  br label %122

122:                                              ; preds = %118, %39
  %123 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %4, align 8
  %124 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %123, i32 0, i32 0
  %125 = call i32 @hns_roce_bitmap_cleanup(i32* %124)
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %122, %96, %26
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @hns_roce_bitmap_init(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @hns_roce_buddy_init(i32*, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_buddy_cleanup(i32*) #1

declare dso_local i32 @hns_roce_bitmap_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
