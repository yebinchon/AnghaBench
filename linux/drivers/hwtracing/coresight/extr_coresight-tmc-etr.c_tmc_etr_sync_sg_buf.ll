; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_sync_sg_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_sync_sg_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_buf = type { i64, i64, i64, i64, %struct.etr_sg_table* }
%struct.etr_sg_table = type { %struct.tmc_sg_table* }
%struct.tmc_sg_table = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Unable to map RRP %llx to offset\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to map RWP %llx to offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_buf*, i32, i32)* @tmc_etr_sync_sg_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_etr_sync_sg_buf(%struct.etr_buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.etr_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.etr_sg_table*, align 8
  %10 = alloca %struct.tmc_sg_table*, align 8
  store %struct.etr_buf* %0, %struct.etr_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %12 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %11, i32 0, i32 4
  %13 = load %struct.etr_sg_table*, %struct.etr_sg_table** %12, align 8
  store %struct.etr_sg_table* %13, %struct.etr_sg_table** %9, align 8
  %14 = load %struct.etr_sg_table*, %struct.etr_sg_table** %9, align 8
  %15 = getelementptr inbounds %struct.etr_sg_table, %struct.etr_sg_table* %14, i32 0, i32 0
  %16 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %15, align 8
  store %struct.tmc_sg_table* %16, %struct.tmc_sg_table** %10, align 8
  %17 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @tmc_sg_get_data_page_offset(%struct.tmc_sg_table* %17, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %10, align 8
  %24 = getelementptr inbounds %struct.tmc_sg_table, %struct.tmc_sg_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %29 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %82

30:                                               ; preds = %3
  %31 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @tmc_sg_get_data_page_offset(%struct.tmc_sg_table* %31, i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %10, align 8
  %38 = getelementptr inbounds %struct.tmc_sg_table, %struct.tmc_sg_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %43 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %82

44:                                               ; preds = %30
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %47 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %49 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %54 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %57 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %75

58:                                               ; preds = %44
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %64 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  br label %67

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i64 [ %65, %62 ], [ 0, %66 ]
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %74 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %67, %52
  %76 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %10, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %79 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @tmc_sg_table_sync_data_range(%struct.tmc_sg_table* %76, i64 %77, i64 %80)
  br label %82

82:                                               ; preds = %75, %36, %22
  ret void
}

declare dso_local i64 @tmc_sg_get_data_page_offset(%struct.tmc_sg_table*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @tmc_sg_table_sync_data_range(%struct.tmc_sg_table*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
