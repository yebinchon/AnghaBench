; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_sq_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_sq_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SIW_QP_STATE_RTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"SQ task failed: err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Resume SQ while QP locked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_qp*)* @siw_sq_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_sq_resume(%struct.siw_qp* %0) #0 {
  %2 = alloca %struct.siw_qp*, align 8
  %3 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %2, align 8
  %4 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %5 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %4, i32 0, i32 0
  %6 = call i64 @down_read_trylock(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %57

8:                                                ; preds = %1
  %9 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %10 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SIW_QP_STATE_RTS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %17 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %8
  %23 = phi i1 [ false, %8 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %29 = call i32 @siw_qp_sq_process(%struct.siw_qp* %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %31 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %30, i32 0, i32 0
  %32 = call i32 @up_read(i32* %31)
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %43 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %49 = call i32 @siw_qp_cm_drop(%struct.siw_qp* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %38
  br label %51

51:                                               ; preds = %50, %27
  br label %56

52:                                               ; preds = %22
  %53 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %54 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %53, i32 0, i32 0
  %55 = call i32 @up_read(i32* %54)
  br label %56

56:                                               ; preds = %52, %51
  br label %60

57:                                               ; preds = %1
  %58 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %59 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %62 = call i32 @siw_qp_put(%struct.siw_qp* %61)
  ret void
}

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @siw_qp_sq_process(%struct.siw_qp*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, ...) #1

declare dso_local i32 @siw_qp_cm_drop(%struct.siw_qp*, i32) #1

declare dso_local i32 @siw_qp_put(%struct.siw_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
