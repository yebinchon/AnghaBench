; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_qpmap_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_qpmap_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@RCV_QP_MAP_TABLE = common dso_local global i32 0, align 4
@RCV_CTRL_RCV_QP_MAP_ENABLE_SMASK = common dso_local global i32 0, align 4
@RCV_CTRL_RCV_BYPASS_ENABLE_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i32)* @init_qpmap_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_qpmap_table(%struct.hfi1_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @RCV_QP_MAP_TABLE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %43, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = srem i32 %18, 8
  %20 = mul nsw i32 8, %19
  %21 = shl i32 %17, %20
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i32, i32* %9, align 4
  %33 = srem i32 %32, 8
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @write_csr(%struct.hfi1_devdata* %36, i32 %37, i32 %38)
  store i32 0, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %35, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %13

46:                                               ; preds = %13
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %48 = load i32, i32* @RCV_CTRL_RCV_QP_MAP_ENABLE_SMASK, align 4
  %49 = load i32, i32* @RCV_CTRL_RCV_BYPASS_ENABLE_SMASK, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @add_rcvctrl(%struct.hfi1_devdata* %47, i32 %50)
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @add_rcvctrl(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
