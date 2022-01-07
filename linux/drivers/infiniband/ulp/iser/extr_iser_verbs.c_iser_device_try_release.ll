; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_device_try_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_device_try_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iser_device = type { i32, i32 }

@ig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"device %p refcount %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_device*)* @iser_device_try_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_device_try_release(%struct.iser_device* %0) #0 {
  %2 = alloca %struct.iser_device*, align 8
  store %struct.iser_device* %0, %struct.iser_device** %2, align 8
  %3 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  %4 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %5 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %9 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %10 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iser_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.iser_device* %8, i32 %11)
  %13 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %14 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %19 = call i32 @iser_free_device_ib_res(%struct.iser_device* %18)
  %20 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %21 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.iser_device*, %struct.iser_device** %2, align 8
  %24 = call i32 @kfree(%struct.iser_device* %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iser_info(i8*, %struct.iser_device*, i32) #1

declare dso_local i32 @iser_free_device_ib_res(%struct.iser_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.iser_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
