; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32 }
%struct.ocrdma_qp = type { i32 }
%struct.ocrdma_dev = type { i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ocrdma_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_qp*, align 8
  %10 = alloca %struct.ocrdma_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = call %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp* %12)
  store %struct.ocrdma_qp* %13, %struct.ocrdma_qp** %9, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %16)
  store %struct.ocrdma_dev* %17, %struct.ocrdma_dev** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @IB_QP_STATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %24 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %25 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ocrdma_qp_state_change(%struct.ocrdma_qp* %23, i32 %26, i32* %11)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %22, %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %28
  %34 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %10, align 8
  %35 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %9, align 8
  %36 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ocrdma_mbx_modify_qp(%struct.ocrdma_dev* %34, %struct.ocrdma_qp* %35, %struct.ib_qp_attr* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %31
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.ocrdma_qp* @get_ocrdma_qp(%struct.ib_qp*) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @ocrdma_qp_state_change(%struct.ocrdma_qp*, i32, i32*) #1

declare dso_local i32 @ocrdma_mbx_modify_qp(%struct.ocrdma_dev*, %struct.ocrdma_qp*, %struct.ib_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
