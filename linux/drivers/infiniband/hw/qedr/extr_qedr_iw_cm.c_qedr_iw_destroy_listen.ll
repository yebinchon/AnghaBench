; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_destroy_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_destroy_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { {}*, i32, %struct.qedr_iw_listener* }
%struct.qedr_iw_listener = type { i64 }
%struct.qedr_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_iw_destroy_listen(%struct.iw_cm_id* %0) #0 {
  %2 = alloca %struct.iw_cm_id*, align 8
  %3 = alloca %struct.qedr_iw_listener*, align 8
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %2, align 8
  %6 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %7 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %6, i32 0, i32 2
  %8 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  store %struct.qedr_iw_listener* %8, %struct.qedr_iw_listener** %3, align 8
  %9 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %10 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.qedr_dev* @get_qedr_dev(i32 %11)
  store %struct.qedr_dev* %12, %struct.qedr_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %3, align 8
  %14 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %19 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i64)*, i32 (i32, i64)** %21, align 8
  %23 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %24 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %3, align 8
  %27 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 %22(i32 %25, i64 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %32 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.iw_cm_id*)**
  %34 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %33, align 8
  %35 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %36 = call i32 %34(%struct.iw_cm_id* %35)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
