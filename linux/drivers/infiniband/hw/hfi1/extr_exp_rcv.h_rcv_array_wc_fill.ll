; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_exp_rcv.h_rcv_array_wc_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_exp_rcv.h_rcv_array_wc_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i64 }

@HFI1_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32)* @rcv_array_wc_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcv_array_wc_fill(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HFI1_PRESENT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @writeq(i32 0, i64 %23)
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 (...) @flush_wc()
  br label %30

30:                                               ; preds = %28, %16
  br label %31

31:                                               ; preds = %30, %11, %2
  ret void
}

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @flush_wc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
