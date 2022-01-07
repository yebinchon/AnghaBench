; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_check_pi_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_check_pi_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ib_mr = type { i32 }
%struct.ib_mr_status = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@IB_MR_CHECK_SIG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ib_check_mr_status failed, ret %d\0A\00", align 1
@TCM_LOGICAL_BLOCK_GUARD_CHECK_FAILED = common dso_local global i32 0, align 4
@TCM_LOGICAL_BLOCK_REF_TAG_CHECK_FAILED = common dso_local global i32 0, align 4
@TCM_LOGICAL_BLOCK_APP_TAG_CHECK_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"PI error found type %d at sector 0x%llx expected 0x%x vs actual 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.ib_mr*)* @isert_check_pi_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_check_pi_status(%struct.se_cmd* %0, %struct.ib_mr* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.ib_mr_status, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store %struct.ib_mr* %1, %struct.ib_mr** %4, align 8
  %9 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %10 = load i32, i32* @IB_MR_CHECK_SIG_STATUS, align 4
  %11 = call i32 @ib_check_mr_status(%struct.ib_mr* %9, i32 %10, %struct.ib_mr_status* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @isert_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %74

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IB_MR_CHECK_SIG_STATUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %17
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 8
  store i64 %30, i64* %8, align 8
  %31 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %46 [
    i32 129, label %34
    i32 128, label %38
    i32 130, label %42
  ]

34:                                               ; preds = %23
  %35 = load i32, i32* @TCM_LOGICAL_BLOCK_GUARD_CHECK_FAILED, align 4
  %36 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %46

38:                                               ; preds = %23
  %39 = load i32, i32* @TCM_LOGICAL_BLOCK_REF_TAG_CHECK_FAILED, align 4
  %40 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %23
  %43 = load i32, i32* @TCM_LOGICAL_BLOCK_APP_TAG_CHECK_FAILED, align 4
  %44 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %23, %42, %38, %34
  %47 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %5, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @do_div(i64 %50, i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %59 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %5, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %5, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.ib_mr_status, %struct.ib_mr_status* %5, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i32, ...) @isert_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %62, i64 %65, i32 %68, i32 %71)
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %46, %17
  br label %74

74:                                               ; preds = %73, %14
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @ib_check_mr_status(%struct.ib_mr*, i32, %struct.ib_mr_status*) #1

declare dso_local i32 @isert_err(i8*, i32, ...) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
