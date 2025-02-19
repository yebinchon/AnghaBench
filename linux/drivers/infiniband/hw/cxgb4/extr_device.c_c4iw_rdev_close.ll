; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_rdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_rdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32, i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_rdev*)* @c4iw_rdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c4iw_rdev_close(%struct.c4iw_rdev* %0) #0 {
  %2 = alloca %struct.c4iw_rdev*, align 8
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %2, align 8
  %3 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %4 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @kfree(i32 %5)
  %7 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %8 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %9 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %8, i32 0, i32 5
  %10 = call i32 @c4iw_release_dev_ucontext(%struct.c4iw_rdev* %7, i32* %9)
  %11 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %12 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @free_page(i64 %13)
  %15 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %16 = call i32 @c4iw_pblpool_destroy(%struct.c4iw_rdev* %15)
  %17 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %18 = call i32 @c4iw_rqtpool_destroy(%struct.c4iw_rdev* %17)
  %19 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %20 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %19, i32 0, i32 3
  %21 = call i32 @wait_for_completion(i32* %20)
  %22 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %23 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %22, i32 0, i32 2
  %24 = call i32 @wait_for_completion(i32* %23)
  %25 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %26 = call i32 @c4iw_ocqp_pool_destroy(%struct.c4iw_rdev* %25)
  %27 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %28 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @destroy_workqueue(i32 %29)
  %31 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %2, align 8
  %32 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %31, i32 0, i32 0
  %33 = call i32 @c4iw_destroy_resource(i32* %32)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @c4iw_release_dev_ucontext(%struct.c4iw_rdev*, i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @c4iw_pblpool_destroy(%struct.c4iw_rdev*) #1

declare dso_local i32 @c4iw_rqtpool_destroy(%struct.c4iw_rdev*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @c4iw_ocqp_pool_destroy(%struct.c4iw_rdev*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @c4iw_destroy_resource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
