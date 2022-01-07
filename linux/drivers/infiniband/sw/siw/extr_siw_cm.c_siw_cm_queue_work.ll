; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cm_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cm_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { i64, i64, %struct.siw_cm_work* }
%struct.siw_cm_work = type { i32, i32, %struct.siw_cep* }

@.str = private unnamed_addr constant [31 x i8] c"failed with no work available\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@siw_cm_work_handler = common dso_local global i32 0, align 4
@SIW_CM_WORK_MPATIMEOUT = common dso_local global i32 0, align 4
@SIW_EPSTATE_AWAIT_MPAREP = common dso_local global i64 0, align 8
@MPAREQ_TIMEOUT = common dso_local global i64 0, align 8
@MPAREP_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"[QP %u]: work type: %d, timeout %lu\0A\00", align 1
@siw_cm_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_cm_queue_work(%struct.siw_cep* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_cep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.siw_cm_work*, align 8
  %7 = alloca i64, align 8
  store %struct.siw_cep* %0, %struct.siw_cep** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %9 = call %struct.siw_cm_work* @siw_get_work(%struct.siw_cep* %8)
  store %struct.siw_cm_work* %9, %struct.siw_cm_work** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %11 = icmp ne %struct.siw_cm_work* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %14 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %20 = getelementptr inbounds %struct.siw_cm_work, %struct.siw_cm_work* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %22 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %23 = getelementptr inbounds %struct.siw_cm_work, %struct.siw_cm_work* %22, i32 0, i32 2
  store %struct.siw_cep* %21, %struct.siw_cep** %23, align 8
  %24 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %25 = call i32 @siw_cep_get(%struct.siw_cep* %24)
  %26 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %27 = getelementptr inbounds %struct.siw_cm_work, %struct.siw_cm_work* %26, i32 0, i32 1
  %28 = load i32, i32* @siw_cm_work_handler, align 4
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SIW_CM_WORK_MPATIMEOUT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %17
  %34 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %35 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %36 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %35, i32 0, i32 2
  store %struct.siw_cm_work* %34, %struct.siw_cm_work** %36, align 8
  %37 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %38 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SIW_EPSTATE_AWAIT_MPAREP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i64, i64* @MPAREQ_TIMEOUT, align 8
  store i64 %43, i64* %7, align 8
  br label %46

44:                                               ; preds = %33
  %45 = load i64, i64* @MPAREP_TIMEOUT, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %17
  %48 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %49 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %50 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %55 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @qp_id(i64 %56)
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i32 [ %57, %53 ], [ -1, %58 ]
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i64 %62)
  %64 = load i32, i32* @siw_cm_wq, align 4
  %65 = load %struct.siw_cm_work*, %struct.siw_cm_work** %6, align 8
  %66 = getelementptr inbounds %struct.siw_cm_work, %struct.siw_cm_work* %65, i32 0, i32 1
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @queue_delayed_work(i32 %64, i32* %66, i64 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.siw_cm_work* @siw_get_work(%struct.siw_cep*) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*, ...) #1

declare dso_local i32 @siw_cep_get(%struct.siw_cep*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @qp_id(i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
