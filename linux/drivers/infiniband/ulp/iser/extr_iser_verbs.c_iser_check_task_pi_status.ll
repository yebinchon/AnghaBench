; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_check_task_pi_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_check_task_pi_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.TYPE_8__*, %struct.iser_mem_reg* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iser_mem_reg = type { %struct.iser_fr_desc* }
%struct.iser_fr_desc = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_mr_status = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@IB_MR_CHECK_SIG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ib_check_mr_status failed, ret %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"PI error found type %d at sector %llx expected %x vs actual %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_check_task_pi_status(%struct.iscsi_iser_task* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_iser_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.iser_mem_reg*, align 8
  %9 = alloca %struct.iser_fr_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ib_mr_status, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %14, i32 0, i32 1
  %16 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %16, i64 %18
  store %struct.iser_mem_reg* %19, %struct.iser_mem_reg** %8, align 8
  %20 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %8, align 8
  %21 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %20, i32 0, i32 0
  %22 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %21, align 8
  store %struct.iser_fr_desc* %22, %struct.iser_fr_desc** %9, align 8
  %23 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %9, align 8
  %31 = icmp ne %struct.iser_fr_desc* %30, null
  br i1 %31, label %32, label %93

32:                                               ; preds = %3
  %33 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %9, align 8
  %34 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %32
  %38 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %9, align 8
  %39 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %9, align 8
  %41 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IB_MR_CHECK_SIG_STATUS, align 4
  %45 = call i32 @ib_check_mr_status(i32 %43, i32 %44, %struct.ib_mr_status* %11)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i64*, i64** %7, align 8
  store i64 0, i64* %51, align 8
  store i32 1, i32* %4, align 4
  br label %94

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IB_MR_CHECK_SIG_STATUS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %11, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 8
  %65 = call i32 @sector_div(i64 %62, i64 %64)
  %66 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %5, align 8
  %67 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i64 @scsi_get_lba(%struct.TYPE_8__* %68)
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %11, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64*, i64** %7, align 8
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %11, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %11, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 %77, i32 %80, i32 %83)
  %85 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %11, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %91 [
    i32 129, label %88
    i32 128, label %89
    i32 130, label %90
  ]

88:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %94

89:                                               ; preds = %58
  store i32 3, i32* %4, align 4
  br label %94

90:                                               ; preds = %58
  store i32 2, i32* %4, align 4
  br label %94

91:                                               ; preds = %58
  br label %92

92:                                               ; preds = %91, %52
  br label %93

93:                                               ; preds = %92, %32, %3
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %90, %89, %88, %48
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @ib_check_mr_status(i32, i32, %struct.ib_mr_status*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @sector_div(i64, i64) #1

declare dso_local i64 @scsi_get_lba(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
