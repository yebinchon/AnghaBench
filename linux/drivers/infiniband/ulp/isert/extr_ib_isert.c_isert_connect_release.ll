; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_connect_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_connect_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i32, i64, i64, %struct.TYPE_4__*, i64, %struct.isert_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.isert_comp* }
%struct.isert_comp = type { i32 }
%struct.isert_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"conn %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isert_conn*)* @isert_connect_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_connect_release(%struct.isert_conn* %0) #0 {
  %2 = alloca %struct.isert_conn*, align 8
  %3 = alloca %struct.isert_device*, align 8
  %4 = alloca %struct.isert_comp*, align 8
  store %struct.isert_conn* %0, %struct.isert_conn** %2, align 8
  %5 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %6 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %5, i32 0, i32 5
  %7 = load %struct.isert_device*, %struct.isert_device** %6, align 8
  store %struct.isert_device* %7, %struct.isert_device** %3, align 8
  %8 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %9 = call i32 @isert_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %8)
  %10 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %11 = icmp ne %struct.isert_device* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %16 = call i32 @isert_free_rx_descriptors(%struct.isert_conn* %15)
  %17 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %18 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %23 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %28 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @rdma_destroy_id(i64 %29)
  br label %31

31:                                               ; preds = %26, %21, %1
  %32 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %33 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %38 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.isert_comp*, %struct.isert_comp** %42, align 8
  store %struct.isert_comp* %43, %struct.isert_comp** %4, align 8
  %44 = load %struct.isert_comp*, %struct.isert_comp** %4, align 8
  %45 = call i32 @isert_comp_put(%struct.isert_comp* %44)
  %46 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %47 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @ib_destroy_qp(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %36, %31
  %51 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %52 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %57 = call i32 @isert_free_login_buf(%struct.isert_conn* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.isert_device*, %struct.isert_device** %3, align 8
  %60 = call i32 @isert_device_put(%struct.isert_device* %59)
  %61 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %62 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %67 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %66, i32 0, i32 0
  %68 = call i32 @wake_up_interruptible(i32* %67)
  br label %72

69:                                               ; preds = %58
  %70 = load %struct.isert_conn*, %struct.isert_conn** %2, align 8
  %71 = call i32 @kfree(%struct.isert_conn* %70)
  br label %72

72:                                               ; preds = %69, %65
  ret void
}

declare dso_local i32 @isert_dbg(i8*, %struct.isert_conn*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @isert_free_rx_descriptors(%struct.isert_conn*) #1

declare dso_local i32 @rdma_destroy_id(i64) #1

declare dso_local i32 @isert_comp_put(%struct.isert_comp*) #1

declare dso_local i32 @ib_destroy_qp(%struct.TYPE_4__*) #1

declare dso_local i32 @isert_free_login_buf(%struct.isert_conn*) #1

declare dso_local i32 @isert_device_put(%struct.isert_device*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.isert_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
