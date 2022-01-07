; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_rcd_get_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_rcd_get_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32 }
%struct.hfi1_devdata = type { i32, %struct.hfi1_ctxtdata** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.hfi1_ctxtdata* null, %struct.hfi1_ctxtdata** %6, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 1
  %13 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %13, i64 %14
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %15, align 8
  %17 = icmp ne %struct.hfi1_ctxtdata* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 1
  %21 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %21, i64 %22
  %24 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %23, align 8
  store %struct.hfi1_ctxtdata* %24, %struct.hfi1_ctxtdata** %6, align 8
  %25 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %26 = call i32 @hfi1_rcd_get(%struct.hfi1_ctxtdata* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store %struct.hfi1_ctxtdata* null, %struct.hfi1_ctxtdata** %6, align 8
  br label %29

29:                                               ; preds = %28, %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %32 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  ret %struct.hfi1_ctxtdata* %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hfi1_rcd_get(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
