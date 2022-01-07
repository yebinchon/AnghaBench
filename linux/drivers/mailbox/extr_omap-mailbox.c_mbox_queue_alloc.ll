; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_mbox_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_mbox_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox_queue = type { i32, i32, i32 }
%struct.omap_mbox = type { i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@mbox_kfifo_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap_mbox_queue* (%struct.omap_mbox*, void (%struct.work_struct*)*)* @mbox_queue_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap_mbox_queue* @mbox_queue_alloc(%struct.omap_mbox* %0, void (%struct.work_struct*)* %1) #0 {
  %3 = alloca %struct.omap_mbox_queue*, align 8
  %4 = alloca %struct.omap_mbox*, align 8
  %5 = alloca void (%struct.work_struct*)*, align 8
  %6 = alloca %struct.omap_mbox_queue*, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %4, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %5, align 8
  %7 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %5, align 8
  %8 = icmp ne void (%struct.work_struct*)* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.omap_mbox_queue* null, %struct.omap_mbox_queue** %3, align 8
  br label %37

10:                                               ; preds = %2
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.omap_mbox_queue* @kzalloc(i32 12, i32 %11)
  store %struct.omap_mbox_queue* %12, %struct.omap_mbox_queue** %6, align 8
  %13 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %6, align 8
  %14 = icmp ne %struct.omap_mbox_queue* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.omap_mbox_queue* null, %struct.omap_mbox_queue** %3, align 8
  br label %37

16:                                               ; preds = %10
  %17 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %6, align 8
  %18 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %17, i32 0, i32 2
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %6, align 8
  %21 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %20, i32 0, i32 1
  %22 = load i32, i32* @mbox_kfifo_size, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @kfifo_alloc(i32* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %34

27:                                               ; preds = %16
  %28 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %6, align 8
  %29 = getelementptr inbounds %struct.omap_mbox_queue, %struct.omap_mbox_queue* %28, i32 0, i32 0
  %30 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %5, align 8
  %31 = bitcast void (%struct.work_struct*)* %30 to void (%struct.work_struct.0*)*
  %32 = call i32 @INIT_WORK(i32* %29, void (%struct.work_struct.0*)* %31)
  %33 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %6, align 8
  store %struct.omap_mbox_queue* %33, %struct.omap_mbox_queue** %3, align 8
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %6, align 8
  %36 = call i32 @kfree(%struct.omap_mbox_queue* %35)
  store %struct.omap_mbox_queue* null, %struct.omap_mbox_queue** %3, align 8
  br label %37

37:                                               ; preds = %34, %27, %15, %9
  %38 = load %struct.omap_mbox_queue*, %struct.omap_mbox_queue** %3, align 8
  ret %struct.omap_mbox_queue* %38
}

declare dso_local %struct.omap_mbox_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @kfree(%struct.omap_mbox_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
