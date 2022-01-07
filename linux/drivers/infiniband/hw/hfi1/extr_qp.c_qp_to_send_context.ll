; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_to_send_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_qp_to_send_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_context = type { i32 }
%struct.rvt_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.hfi1_devdata = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.send_context* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.send_context* @qp_to_send_context(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.send_context*, align 8
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.hfi1_devdata* @dd_from_ibdev(i32 %10)
  store %struct.hfi1_devdata* %11, %struct.hfi1_devdata** %6, align 8
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %13 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %23 [
    i32 128, label %16
  ]

16:                                               ; preds = %2
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 15
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.send_context*, %struct.send_context** %21, align 8
  store %struct.send_context* %22, %struct.send_context** %3, align 8
  br label %36

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %31 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %29, %32
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.send_context* @pio_select_send_context_sc(%struct.hfi1_devdata* %25, i32 %33, i32 %34)
  store %struct.send_context* %35, %struct.send_context** %3, align 8
  br label %36

36:                                               ; preds = %24, %16
  %37 = load %struct.send_context*, %struct.send_context** %3, align 8
  ret %struct.send_context* %37
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(i32) #1

declare dso_local %struct.send_context* @pio_select_send_context_sc(%struct.hfi1_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
