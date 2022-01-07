; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_to_hr_qp_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_to_hr_qp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_QPT_RC = common dso_local global i32 0, align 4
@SERV_TYPE_RC = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i32 0, align 4
@SERV_TYPE_UC = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i32 0, align 4
@SERV_TYPE_UD = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_hr_qp_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IB_QPT_RC, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @SERV_TYPE_RC, align 4
  store i32 %8, i32* %3, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @IB_QPT_UC, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @SERV_TYPE_UC, align 4
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IB_QPT_UD, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @SERV_TYPE_UD, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @IB_QPT_GSI, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SERV_TYPE_UD, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29, %13
  br label %31

31:                                               ; preds = %30, %7
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
