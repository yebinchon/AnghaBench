; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_omap-mailbox.c_omap_mbox_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox_device = type { %struct.omap_mbox**, i32 }
%struct.omap_mbox = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@omap_mbox_devices_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mbox_device*)* @omap_mbox_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mbox_unregister(%struct.omap_mbox_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_mbox_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_mbox**, align 8
  store %struct.omap_mbox_device* %0, %struct.omap_mbox_device** %3, align 8
  %6 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %7 = icmp ne %struct.omap_mbox_device* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %10 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %9, i32 0, i32 0
  %11 = load %struct.omap_mbox**, %struct.omap_mbox*** %10, align 8
  %12 = icmp ne %struct.omap_mbox** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %45

16:                                               ; preds = %8
  %17 = call i32 @mutex_lock(i32* @omap_mbox_devices_lock)
  %18 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %19 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = call i32 @mutex_unlock(i32* @omap_mbox_devices_lock)
  %22 = load %struct.omap_mbox_device*, %struct.omap_mbox_device** %3, align 8
  %23 = getelementptr inbounds %struct.omap_mbox_device, %struct.omap_mbox_device* %22, i32 0, i32 0
  %24 = load %struct.omap_mbox**, %struct.omap_mbox*** %23, align 8
  store %struct.omap_mbox** %24, %struct.omap_mbox*** %5, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %41, %16
  %26 = load %struct.omap_mbox**, %struct.omap_mbox*** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.omap_mbox*, %struct.omap_mbox** %26, i64 %28
  %30 = load %struct.omap_mbox*, %struct.omap_mbox** %29, align 8
  %31 = icmp ne %struct.omap_mbox* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.omap_mbox**, %struct.omap_mbox*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.omap_mbox*, %struct.omap_mbox** %33, i64 %35
  %37 = load %struct.omap_mbox*, %struct.omap_mbox** %36, align 8
  %38 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_unregister(i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %25

44:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
