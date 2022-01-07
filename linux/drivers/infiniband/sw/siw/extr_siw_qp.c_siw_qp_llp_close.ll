; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_llp_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_llp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_7__, i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"enter llp close, state = %s\0A\00", align 1
@siw_qp_state_to_string = common dso_local global i32* null, align 8
@SIW_QP_STATE_ERROR = common dso_local global i8* null, align 8
@SIW_WR_IDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"llp close: no state transition needed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"llp close exit: state %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_qp_llp_close(%struct.siw_qp* %0) #0 {
  %2 = alloca %struct.siw_qp*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %2, align 8
  %3 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %4 = load i32*, i32** @siw_qp_state_to_string, align 8
  %5 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %6 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %4, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @siw_dbg_qp(%struct.siw_qp* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %13 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %12, i32 0, i32 1
  %14 = call i32 @down_write(i32* %13)
  %15 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %16 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %19 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %22 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %25 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  switch i64 %27, label %52 [
    i64 129, label %28
    i64 130, label %28
    i64 131, label %28
    i64 128, label %28
    i64 132, label %34
  ]

28:                                               ; preds = %1, %1, %1, %1
  %29 = load i8*, i8** @SIW_QP_STATE_ERROR, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %32 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  br label %62

34:                                               ; preds = %1
  %35 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %36 = call %struct.TYPE_8__* @tx_wqe(%struct.siw_qp* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SIW_WR_IDLE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i8*, i8** @SIW_QP_STATE_ERROR, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %45 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %51

47:                                               ; preds = %34
  %48 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %49 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 131, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  br label %62

52:                                               ; preds = %1
  %53 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %54 = load i32*, i32** @siw_qp_state_to_string, align 8
  %55 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %56 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @siw_dbg_qp(%struct.siw_qp* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %52, %51, %28
  %63 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %64 = call i32 @siw_sq_flush(%struct.siw_qp* %63)
  %65 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %66 = call i32 @siw_rq_flush(%struct.siw_qp* %65)
  %67 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %68 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %73 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @siw_cep_put(i32* %74)
  %76 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %77 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %76, i32 0, i32 2
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %71, %62
  %79 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %80 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %79, i32 0, i32 1
  %81 = call i32 @up_write(i32* %80)
  %82 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %83 = load i32*, i32** @siw_qp_state_to_string, align 8
  %84 = load %struct.siw_qp*, %struct.siw_qp** %2, align 8
  %85 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @siw_dbg_qp(%struct.siw_qp* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  ret void
}

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_8__* @tx_wqe(%struct.siw_qp*) #1

declare dso_local i32 @siw_sq_flush(%struct.siw_qp*) #1

declare dso_local i32 @siw_rq_flush(%struct.siw_qp*) #1

declare dso_local i32 @siw_cep_put(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
