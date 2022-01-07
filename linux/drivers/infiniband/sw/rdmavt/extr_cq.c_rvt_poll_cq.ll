; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.rvt_cq = type { i32, %struct.TYPE_2__, %struct.rvt_k_cq_wc*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.rvt_k_cq_wc = type { i64, i64, %struct.ib_wc* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca %struct.rvt_cq*, align 8
  %9 = alloca %struct.rvt_k_cq_wc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  %13 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %14 = call %struct.rvt_cq* @ibcq_to_rvtcq(%struct.ib_cq* %13)
  store %struct.rvt_cq* %14, %struct.rvt_cq** %8, align 8
  %15 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %16 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %98

22:                                               ; preds = %3
  %23 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %23, i32 0, i32 0
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %28 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %27, i32 0, i32 2
  %29 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %28, align 8
  store %struct.rvt_k_cq_wc* %29, %struct.rvt_k_cq_wc** %9, align 8
  %30 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %9, align 8
  %31 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %35 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %41 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  br label %44

44:                                               ; preds = %39, %22
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %84, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %45
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %9, align 8
  %52 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %89

56:                                               ; preds = %49
  %57 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %58 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %9, align 8
  %59 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %58, i32 0, i32 2
  %60 = load %struct.ib_wc*, %struct.ib_wc** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %60, i64 %61
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @trace_rvt_cq_poll(%struct.rvt_cq* %57, %struct.ib_wc* %62, i32 %63)
  %65 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %66 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %9, align 8
  %67 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %66, i32 0, i32 2
  %68 = load %struct.ib_wc*, %struct.ib_wc** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i64 %69
  %71 = bitcast %struct.ib_wc* %65 to i8*
  %72 = bitcast %struct.ib_wc* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %75 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %73, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %56
  store i64 0, i64* %12, align 8
  br label %83

80:                                               ; preds = %56
  %81 = load i64, i64* %12, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %80, %79
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %88 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %87, i32 1
  store %struct.ib_wc* %88, %struct.ib_wc** %7, align 8
  br label %45

89:                                               ; preds = %55, %45
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.rvt_k_cq_wc*, %struct.rvt_k_cq_wc** %9, align 8
  %92 = getelementptr inbounds %struct.rvt_k_cq_wc, %struct.rvt_k_cq_wc* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.rvt_cq*, %struct.rvt_cq** %8, align 8
  %94 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %93, i32 0, i32 0
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %89, %19
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.rvt_cq* @ibcq_to_rvtcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_rvt_cq_poll(%struct.rvt_cq*, %struct.ib_wc*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
