; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_kernel_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_pio_kernel_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.send_context* }
%struct.send_context = type { i32, i64 }

@SCF_LINK_DOWN = common dso_local global i32 0, align 4
@SC_USER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pio_kernel_linkup(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.send_context*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %5
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.send_context*, %struct.send_context** %18, align 8
  store %struct.send_context* %19, %struct.send_context** %3, align 8
  %20 = load %struct.send_context*, %struct.send_context** %3, align 8
  %21 = icmp ne %struct.send_context* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %11
  %23 = load %struct.send_context*, %struct.send_context** %3, align 8
  %24 = getelementptr inbounds %struct.send_context, %struct.send_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SCF_LINK_DOWN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.send_context*, %struct.send_context** %3, align 8
  %31 = getelementptr inbounds %struct.send_context, %struct.send_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SC_USER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %22, %11
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.send_context*, %struct.send_context** %3, align 8
  %38 = call i32 @sc_enable(%struct.send_context* %37)
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local i32 @sc_enable(%struct.send_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
