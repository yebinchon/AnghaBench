; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_update_qp_retry_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_update_qp_retry_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i8*, i64, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i64 }

@WRITE_REQ = common dso_local global i32 0, align 4
@WRITE_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, i64, i64, i64)* @update_qp_retry_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_qp_retry_state(%struct.rvt_qp* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 4
  %12 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %11, align 8
  store %struct.hfi1_qp_priv* %12, %struct.hfi1_qp_priv** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add nsw i64 %13, 1
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @cmp_psn(i64 %17, i64 %18)
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %23 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %32 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %37 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %21
  %39 = load i32, i32* @WRITE_REQ, align 4
  %40 = call i8* @TID_OP(i32 %39)
  %41 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %42 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %59

43:                                               ; preds = %4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @cmp_psn(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %9, align 8
  %50 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %53 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @WRITE_RESP, align 4
  %55 = call i8* @TID_OP(i32 %54)
  %56 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %57 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %48, %43
  br label %59

59:                                               ; preds = %58, %38
  ret void
}

declare dso_local i64 @cmp_psn(i64, i64) #1

declare dso_local i8* @TID_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
