; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qp_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qp = type { %struct.hisi_qp_status, i32, %struct.TYPE_4__* }
%struct.hisi_qp_status = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@QM_Q_DEPTH = common dso_local global i32 0, align 4
@QP_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"QP is stopped or resetting\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QM_DOORBELL_CMD_SQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_qp_send(%struct.hisi_qp* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_qp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hisi_qp_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.hisi_qp* %0, %struct.hisi_qp** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.hisi_qp*, %struct.hisi_qp** %4, align 8
  %11 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %10, i32 0, i32 0
  store %struct.hisi_qp_status* %11, %struct.hisi_qp_status** %6, align 8
  %12 = load %struct.hisi_qp_status*, %struct.hisi_qp_status** %6, align 8
  %13 = getelementptr inbounds %struct.hisi_qp_status, %struct.hisi_qp_status* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @QM_Q_DEPTH, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hisi_qp*, %struct.hisi_qp** %4, align 8
  %20 = call i8* @qm_get_avail_sqe(%struct.hisi_qp* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* @QP_STOP, align 4
  %22 = load %struct.hisi_qp*, %struct.hisi_qp** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.hisi_qp_status, %struct.hisi_qp_status* %23, i32 0, i32 2
  %25 = call i32 @test_bit(i32 %21, i32* %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.hisi_qp*, %struct.hisi_qp** %4, align 8
  %30 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %69

38:                                               ; preds = %2
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.hisi_qp*, %struct.hisi_qp** %4, align 8
  %48 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memcpy(i8* %45, i8* %46, i32 %51)
  %53 = load %struct.hisi_qp*, %struct.hisi_qp** %4, align 8
  %54 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load %struct.hisi_qp*, %struct.hisi_qp** %4, align 8
  %57 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @QM_DOORBELL_CMD_SQ, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @qm_db(%struct.TYPE_4__* %55, i32 %58, i32 %59, i32 %60, i32 0)
  %62 = load %struct.hisi_qp*, %struct.hisi_qp** %4, align 8
  %63 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.hisi_qp_status, %struct.hisi_qp_status* %63, i32 0, i32 1
  %65 = call i32 @atomic_inc(i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.hisi_qp_status*, %struct.hisi_qp_status** %6, align 8
  %68 = getelementptr inbounds %struct.hisi_qp_status, %struct.hisi_qp_status* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %44, %41, %28
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8* @qm_get_avail_sqe(%struct.hisi_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @qm_db(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
