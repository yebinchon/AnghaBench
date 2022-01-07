; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_get_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_device = type { i32 }
%struct.i40iw_device = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.ib_qp }

@IW_FIRST_QPN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @i40iw_get_qp(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %8 = call %struct.i40iw_device* @to_iwdev(%struct.ib_device* %7)
  store %struct.i40iw_device* %8, %struct.i40iw_device** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IW_FIRST_QPN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store %struct.ib_qp* null, %struct.ib_qp** %3, align 8
  br label %28

19:                                               ; preds = %12
  %20 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %21 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.ib_qp* %27, %struct.ib_qp** %3, align 8
  br label %28

28:                                               ; preds = %19, %18
  %29 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  ret %struct.ib_qp* %29
}

declare dso_local %struct.i40iw_device* @to_iwdev(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
