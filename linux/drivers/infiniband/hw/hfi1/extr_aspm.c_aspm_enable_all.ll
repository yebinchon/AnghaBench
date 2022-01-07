; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_aspm.c_aspm_enable_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_aspm.c_aspm_enable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }
%struct.hfi1_ctxtdata = type { i32, i32, i32 }

@aspm_mode = common dso_local global i64 0, align 8
@ASPM_MODE_DYNAMIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aspm_enable_all(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %7 = call i32 @aspm_enable(%struct.hfi1_devdata* %6)
  %8 = load i64, i64* @aspm_mode, align 8
  %9 = load i64, i64* @ASPM_MODE_DYNAMIC, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %44

12:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %20, i64 %21)
  store %struct.hfi1_ctxtdata* %22, %struct.hfi1_ctxtdata** %3, align 8
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %24 = icmp ne %struct.hfi1_ctxtdata* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %26, i32 0, i32 2
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %31 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %33 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %35 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %34, i32 0, i32 2
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %39 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %38)
  br label %40

40:                                               ; preds = %25, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %13

44:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @aspm_enable(%struct.hfi1_devdata*) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
