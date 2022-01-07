; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_manage_rcvq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_manage_rcvq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i32, i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32 (i32, i32, i32)* }

@QIB_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, i32, i32)* @qib_manage_rcvq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_manage_rcvq(%struct.qib_ctxtdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_ctxtdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %10 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %9, i32 0, i32 3
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %42

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %20 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %25 = call i32 @qib_clear_rcvhdrtail(%struct.qib_ctxtdata* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @QIB_RCVCTRL_CTXT_ENB, align 4
  store i32 %27, i32* %8, align 4
  br label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 0
  %33 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %32, align 8
  %34 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %35 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %39 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %33(i32 %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %30, %14
  ret i32 0
}

declare dso_local i32 @qib_clear_rcvhdrtail(%struct.qib_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
