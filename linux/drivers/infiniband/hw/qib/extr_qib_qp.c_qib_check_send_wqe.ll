; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_check_send_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_check_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rvt_swqe = type { i32 }
%struct.rvt_ah = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_check_send_wqe(%struct.rvt_qp* %0, %struct.rvt_swqe* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.rvt_swqe*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rvt_ah*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %48 [
    i32 131, label %13
    i32 129, label %13
    i32 130, label %32
    i32 132, label %32
    i32 128, label %32
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %15 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ugt i32 %16, -2147483648
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %13
  %22 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %23 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %26 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %21
  br label %49

32:                                               ; preds = %3, %3, %3
  %33 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %34 = call %struct.rvt_ah* @rvt_get_swqe_ah(%struct.rvt_swqe* %33)
  store %struct.rvt_ah* %34, %struct.rvt_ah** %8, align 8
  %35 = load %struct.rvt_swqe*, %struct.rvt_swqe** %6, align 8
  %36 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rvt_ah*, %struct.rvt_ah** %8, align 8
  %39 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %32
  %47 = load i32*, i32** %7, align 8
  store i32 1, i32* %47, align 4
  br label %49

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %48, %46, %31
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.rvt_ah* @rvt_get_swqe_ah(%struct.rvt_swqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
