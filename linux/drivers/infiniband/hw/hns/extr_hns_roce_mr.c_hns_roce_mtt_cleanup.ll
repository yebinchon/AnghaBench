; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mtt_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mtt_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.hns_roce_mr_table }
%struct.hns_roce_mr_table = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hns_roce_mtt = type { i64, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unsupport mtt type %d, clean mtt failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %0, %struct.hns_roce_mtt* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_mtt*, align 8
  %5 = alloca %struct.hns_roce_mr_table*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_mtt* %1, %struct.hns_roce_mtt** %4, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 1
  store %struct.hns_roce_mr_table* %7, %struct.hns_roce_mr_table** %5, align 8
  %8 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %9 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %133

13:                                               ; preds = %2
  %14 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %125 [
    i32 128, label %17
    i32 131, label %44
    i32 129, label %71
    i32 130, label %98
  ]

17:                                               ; preds = %13
  %18 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %5, align 8
  %19 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %18, i32 0, i32 7
  %20 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %21 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %24 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @hns_roce_buddy_free(i32* %19, i32 %22, i64 %25)
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %28 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %5, align 8
  %29 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %28, i32 0, i32 6
  %30 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %31 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %34 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %37 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = add nsw i32 %35, %40
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @hns_roce_table_put_range(%struct.hns_roce_dev* %27, i32* %29, i32 %32, i32 %42)
  br label %133

44:                                               ; preds = %13
  %45 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %5, align 8
  %46 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %45, i32 0, i32 5
  %47 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %48 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %51 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @hns_roce_buddy_free(i32* %46, i32 %49, i64 %52)
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %55 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %5, align 8
  %56 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %55, i32 0, i32 4
  %57 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %58 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %61 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %64 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 1, %66
  %68 = add nsw i32 %62, %67
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @hns_roce_table_put_range(%struct.hns_roce_dev* %54, i32* %56, i32 %59, i32 %69)
  br label %133

71:                                               ; preds = %13
  %72 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %5, align 8
  %73 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %72, i32 0, i32 3
  %74 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %75 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %78 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @hns_roce_buddy_free(i32* %73, i32 %76, i64 %79)
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %82 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %5, align 8
  %83 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %82, i32 0, i32 2
  %84 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %88 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %91 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 1, %93
  %95 = add nsw i32 %89, %94
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @hns_roce_table_put_range(%struct.hns_roce_dev* %81, i32* %83, i32 %86, i32 %96)
  br label %133

98:                                               ; preds = %13
  %99 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %5, align 8
  %100 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %99, i32 0, i32 1
  %101 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %102 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %105 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @hns_roce_buddy_free(i32* %100, i32 %103, i64 %106)
  %108 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %109 = load %struct.hns_roce_mr_table*, %struct.hns_roce_mr_table** %5, align 8
  %110 = getelementptr inbounds %struct.hns_roce_mr_table, %struct.hns_roce_mr_table* %109, i32 0, i32 0
  %111 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %112 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %115 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %118 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = shl i32 1, %120
  %122 = add nsw i32 %116, %121
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @hns_roce_table_put_range(%struct.hns_roce_dev* %108, i32* %110, i32 %113, i32 %123)
  br label %133

125:                                              ; preds = %13
  %126 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %127 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hns_roce_mtt*, %struct.hns_roce_mtt** %4, align 8
  %130 = getelementptr inbounds %struct.hns_roce_mtt, %struct.hns_roce_mtt* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %12, %125, %98, %71, %44, %17
  ret void
}

declare dso_local i32 @hns_roce_buddy_free(i32*, i32, i64) #1

declare dso_local i32 @hns_roce_table_put_range(%struct.hns_roce_dev*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
