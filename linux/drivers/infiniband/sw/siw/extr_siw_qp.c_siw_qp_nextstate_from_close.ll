; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_nextstate_from_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_nextstate_from_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.siw_qp_attrs = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SIW_WR_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"state transition undefined: %s => %s\0A\00", align 1
@siw_qp_state_to_string = common dso_local global i32* null, align 8
@ECONNABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_qp*, %struct.siw_qp_attrs*)* @siw_qp_nextstate_from_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_qp_nextstate_from_close(%struct.siw_qp* %0, %struct.siw_qp_attrs* %1) #0 {
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_qp_attrs*, align 8
  %5 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store %struct.siw_qp_attrs* %1, %struct.siw_qp_attrs** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %4, align 8
  %7 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %38 [
    i32 128, label %9
    i32 130, label %21
    i32 129, label %22
  ]

9:                                                ; preds = %2
  %10 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %11 = call %struct.TYPE_4__* @tx_wqe(%struct.siw_qp* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SIW_WR_IDLE, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %19 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 128, i32* %20, align 4
  br label %58

21:                                               ; preds = %2
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %24 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 129, i32* %25, align 4
  %26 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %27 = call %struct.TYPE_4__* @tx_wqe(%struct.siw_qp* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SIW_WR_IDLE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %34 = call i32 @siw_sq_flush(%struct.siw_qp* %33)
  br label %35

35:                                               ; preds = %32, %22
  %36 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %37 = call i32 @siw_rq_flush(%struct.siw_qp* %36)
  br label %58

38:                                               ; preds = %2
  %39 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %40 = load i32*, i32** @siw_qp_state_to_string, align 8
  %41 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %42 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @siw_qp_state_to_string, align 8
  %49 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %4, align 8
  %50 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @siw_dbg_qp(%struct.siw_qp* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %54)
  %56 = load i32, i32* @ECONNABORTED, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %38, %35, %21, %9
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_4__* @tx_wqe(%struct.siw_qp*) #1

declare dso_local i32 @siw_sq_flush(%struct.siw_qp*) #1

declare dso_local i32 @siw_rq_flush(%struct.siw_qp*) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
