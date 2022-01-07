; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_schedule_iso_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-cdev.c_schedule_iso_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_resource = type { i32, i32 }

@fw_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso_resource*, i64)* @schedule_iso_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_iso_resource(%struct.iso_resource* %0, i64 %1) #0 {
  %3 = alloca %struct.iso_resource*, align 8
  %4 = alloca i64, align 8
  store %struct.iso_resource* %0, %struct.iso_resource** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.iso_resource*, %struct.iso_resource** %3, align 8
  %6 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @client_get(i32 %7)
  %9 = load i32, i32* @fw_workqueue, align 4
  %10 = load %struct.iso_resource*, %struct.iso_resource** %3, align 8
  %11 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @queue_delayed_work(i32 %9, i32* %11, i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.iso_resource*, %struct.iso_resource** %3, align 8
  %17 = getelementptr inbounds %struct.iso_resource, %struct.iso_resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @client_put(i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @client_get(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @client_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
