; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_hfi1_vnic_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_vnic_vport_info = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32** }

@hfi1_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_vnic_vport_info*)* @hfi1_vnic_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_vnic_deinit(%struct.hfi1_vnic_vport_info* %0) #0 {
  %2 = alloca %struct.hfi1_vnic_vport_info*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_vnic_vport_info* %0, %struct.hfi1_vnic_vport_info** %2, align 8
  %5 = load %struct.hfi1_vnic_vport_info*, %struct.hfi1_vnic_vport_info** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_vnic_vport_info, %struct.hfi1_vnic_vport_info* %5, i32 0, i32 0
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  store %struct.hfi1_devdata* %7, %struct.hfi1_devdata** %3, align 8
  %8 = call i32 @mutex_lock(i32* @hfi1_mutex)
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %16
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @deallocate_vnic_ctxt(%struct.hfi1_devdata* %24, i32* %32)
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %35 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @hfi1_rcd_put(i32* %41)
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %23
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %55 = call i32 @hfi1_deinit_vnic_rsm(%struct.hfi1_devdata* %54)
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %57 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  %59 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %60 = call i32 @hfi1_vnic_txreq_deinit(%struct.hfi1_devdata* %59)
  br label %61

61:                                               ; preds = %53, %1
  %62 = call i32 @mutex_unlock(i32* @hfi1_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @deallocate_vnic_ctxt(%struct.hfi1_devdata*, i32*) #1

declare dso_local i32 @hfi1_rcd_put(i32*) #1

declare dso_local i32 @hfi1_deinit_vnic_rsm(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_vnic_txreq_deinit(%struct.hfi1_devdata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
