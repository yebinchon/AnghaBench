; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_table_put_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_table_put_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_icm_table = type { i32 }

@MTHCA_TABLE_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_table_put_range(%struct.mthca_dev* %0, %struct.mthca_icm_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_icm_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_icm_table* %1, %struct.mthca_icm_table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %11 = call i32 @mthca_is_memfree(%struct.mthca_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %33

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %25, %14
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %22 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @mthca_table_put(%struct.mthca_dev* %21, %struct.mthca_icm_table* %22, i32 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @MTHCA_TABLE_CHUNK_SIZE, align 4
  %27 = load %struct.mthca_icm_table*, %struct.mthca_icm_table** %6, align 8
  %28 = getelementptr inbounds %struct.mthca_icm_table, %struct.mthca_icm_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %16

33:                                               ; preds = %13, %16
  ret void
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_table_put(%struct.mthca_dev*, %struct.mthca_icm_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
