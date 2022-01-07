; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_init_mr_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_init_mr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.mr_info = type { i32, i32, %struct.qedr_pbl*, i32 }
%struct.qedr_pbl = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@QEDR_MSG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pbl_table_pa = %pa\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Extra PBL is not allocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"extra pbl_table_pa = %pa\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.mr_info*, i64, i32)* @init_mr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mr_info(%struct.qedr_dev* %0, %struct.mr_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.mr_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qedr_pbl*, align 8
  %10 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %5, align 8
  store %struct.mr_info* %1, %struct.mr_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %12 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %11, i32 0, i32 0
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %15 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %14, i32 0, i32 3
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %18 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %19 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %18, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @qedr_prepare_pbl_tbl(%struct.qedr_dev* %17, i32* %19, i64 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %77

26:                                               ; preds = %4
  %27 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %28 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %29 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %28, i32 0, i32 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @qedr_alloc_pbl_tbl(%struct.qedr_dev* %27, i32* %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.qedr_pbl*
  %33 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %34 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %33, i32 0, i32 2
  store %struct.qedr_pbl* %32, %struct.qedr_pbl** %34, align 8
  %35 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %36 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %35, i32 0, i32 2
  %37 = load %struct.qedr_pbl*, %struct.qedr_pbl** %36, align 8
  %38 = call i64 @IS_ERR(%struct.qedr_pbl* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %42 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %41, i32 0, i32 2
  %43 = load %struct.qedr_pbl*, %struct.qedr_pbl** %42, align 8
  %44 = call i32 @PTR_ERR(%struct.qedr_pbl* %43)
  store i32 %44, i32* %10, align 4
  br label %77

45:                                               ; preds = %26
  %46 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %47 = load i32, i32* @QEDR_MSG_MR, align 4
  %48 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %49 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %48, i32 0, i32 2
  %50 = load %struct.qedr_pbl*, %struct.qedr_pbl** %49, align 8
  %51 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %50, i32 0, i32 0
  %52 = call i32 (%struct.qedr_dev*, i32, i8*, ...) @DP_DEBUG(%struct.qedr_dev* %46, i32 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %51)
  %53 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %54 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %55 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %54, i32 0, i32 1
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @qedr_alloc_pbl_tbl(%struct.qedr_dev* %53, i32* %55, i32 %56)
  %58 = bitcast i8* %57 to %struct.qedr_pbl*
  store %struct.qedr_pbl* %58, %struct.qedr_pbl** %9, align 8
  %59 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %60 = call i64 @IS_ERR(%struct.qedr_pbl* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %64 = load i32, i32* @QEDR_MSG_MR, align 4
  %65 = call i32 (%struct.qedr_dev*, i32, i8*, ...) @DP_DEBUG(%struct.qedr_dev* %63, i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %77

66:                                               ; preds = %45
  %67 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %68 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %67, i32 0, i32 1
  %69 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %70 = getelementptr inbounds %struct.mr_info, %struct.mr_info* %69, i32 0, i32 0
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %73 = load i32, i32* @QEDR_MSG_MR, align 4
  %74 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %75 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %74, i32 0, i32 0
  %76 = call i32 (%struct.qedr_dev*, i32, i8*, ...) @DP_DEBUG(%struct.qedr_dev* %72, i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %75)
  br label %77

77:                                               ; preds = %66, %62, %40, %25
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %82 = load %struct.mr_info*, %struct.mr_info** %6, align 8
  %83 = call i32 @free_mr_info(%struct.qedr_dev* %81, %struct.mr_info* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qedr_prepare_pbl_tbl(%struct.qedr_dev*, i32*, i64, i32) #1

declare dso_local i8* @qedr_alloc_pbl_tbl(%struct.qedr_dev*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.qedr_pbl*) #1

declare dso_local i32 @PTR_ERR(%struct.qedr_pbl*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, ...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @free_mr_info(%struct.qedr_dev*, %struct.mr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
