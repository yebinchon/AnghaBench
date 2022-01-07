; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_diag_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_diag.c_qib_diag_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_diag_client = type { %struct.qib_diag_client* }
%struct.qib_devdata = type { i64, i32, i32 }

@diagpkt_count = common dso_local global i32 0, align 4
@diagpkt_cdev = common dso_local global i32 0, align 4
@diagpkt_device = common dso_local global i32 0, align 4
@client_pool = common dso_local global %struct.qib_diag_client* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_diag_remove(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_diag_client*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %4 = call i64 @atomic_dec_and_test(i32* @diagpkt_count)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @qib_cdev_cleanup(i32* @diagpkt_cdev, i32* @diagpkt_device)
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 2
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 1
  %13 = call i32 @qib_cdev_cleanup(i32* %10, i32* %12)
  br label %14

14:                                               ; preds = %19, %8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @return_client(i64 %22)
  br label %14

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %28, %24
  %26 = load %struct.qib_diag_client*, %struct.qib_diag_client** @client_pool, align 8
  %27 = icmp ne %struct.qib_diag_client* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.qib_diag_client*, %struct.qib_diag_client** @client_pool, align 8
  store %struct.qib_diag_client* %29, %struct.qib_diag_client** %3, align 8
  %30 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %31 = getelementptr inbounds %struct.qib_diag_client, %struct.qib_diag_client* %30, i32 0, i32 0
  %32 = load %struct.qib_diag_client*, %struct.qib_diag_client** %31, align 8
  store %struct.qib_diag_client* %32, %struct.qib_diag_client** @client_pool, align 8
  %33 = load %struct.qib_diag_client*, %struct.qib_diag_client** %3, align 8
  %34 = call i32 @kfree(%struct.qib_diag_client* %33)
  br label %25

35:                                               ; preds = %25
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %37 = call i32 @qib_unregister_observers(%struct.qib_devdata* %36)
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @qib_cdev_cleanup(i32*, i32*) #1

declare dso_local i32 @return_client(i64) #1

declare dso_local i32 @kfree(%struct.qib_diag_client*) #1

declare dso_local i32 @qib_unregister_observers(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
