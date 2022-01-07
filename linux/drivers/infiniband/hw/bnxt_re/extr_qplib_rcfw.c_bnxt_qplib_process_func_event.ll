; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_process_func_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_process_func_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i32 }
%struct.creq_func_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_qplib_rcfw*, %struct.creq_func_event*)* @bnxt_qplib_process_func_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_qplib_process_func_event(%struct.bnxt_qplib_rcfw* %0, %struct.creq_func_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %5 = alloca %struct.creq_func_event*, align 8
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %4, align 8
  store %struct.creq_func_event* %1, %struct.creq_func_event** %5, align 8
  %6 = load %struct.creq_func_event*, %struct.creq_func_event** %5, align 8
  %7 = getelementptr inbounds %struct.creq_func_event, %struct.creq_func_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %22 [
    i32 129, label %9
    i32 130, label %10
    i32 133, label %11
    i32 134, label %12
    i32 136, label %13
    i32 131, label %14
    i32 138, label %15
    i32 137, label %16
    i32 140, label %17
    i32 139, label %18
    i32 132, label %19
    i32 128, label %20
    i32 135, label %21
  ]

9:                                                ; preds = %2
  br label %25

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  br label %25

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  br label %25

14:                                               ; preds = %2
  br label %25

15:                                               ; preds = %2
  br label %25

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2
  br label %25

18:                                               ; preds = %2
  br label %25

19:                                               ; preds = %2
  br label %25

20:                                               ; preds = %2
  br label %25

21:                                               ; preds = %2
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
