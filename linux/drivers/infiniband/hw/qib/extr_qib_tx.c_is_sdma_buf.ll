; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_tx.c_is_sdma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_tx.c_is_sdma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.qib_devdata = type { i32, %struct.qib_pportdata* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qib_pportdata* (%struct.qib_devdata*, i32)* @is_sdma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qib_pportdata* @is_sdma_buf(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 1
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i64 %19
  store %struct.qib_pportdata* %20, %struct.qib_pportdata** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp uge i32 %21, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %30 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  store %struct.qib_pportdata* %35, %struct.qib_pportdata** %3, align 8
  br label %41

36:                                               ; preds = %27, %14
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %8

40:                                               ; preds = %8
  store %struct.qib_pportdata* null, %struct.qib_pportdata** %3, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  ret %struct.qib_pportdata* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
