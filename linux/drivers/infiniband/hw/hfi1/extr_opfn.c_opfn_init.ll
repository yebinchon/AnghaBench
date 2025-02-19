; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_opfn.c_opfn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_opfn.c_opfn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"hfi_opfn\00", align 1
@WQ_SYSFS = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@WQ_CPU_INTENSIVE = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@HFI1_MAX_ACTIVE_WORKQUEUE_ENTRIES = common dso_local global i32 0, align 4
@opfn_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opfn_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WQ_SYSFS, align 4
  %3 = load i32, i32* @WQ_HIGHPRI, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @WQ_CPU_INTENSIVE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @HFI1_MAX_ACTIVE_WORKQUEUE_ENTRIES, align 4
  %10 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  store i32 %10, i32* @opfn_wq, align 4
  %11 = load i32, i32* @opfn_wq, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %17

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
