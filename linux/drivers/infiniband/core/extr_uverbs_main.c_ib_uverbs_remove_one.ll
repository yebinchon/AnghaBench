; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ib_uverbs_device = type { i32, i32, i32, i32, i32 }

@uverbs_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i8*)* @ib_uverbs_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_uverbs_remove_one(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_uverbs_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ib_uverbs_device*
  store %struct.ib_uverbs_device* %8, %struct.ib_uverbs_device** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %10 = icmp ne %struct.ib_uverbs_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %14 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %13, i32 0, i32 4
  %15 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %16 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %15, i32 0, i32 0
  %17 = call i32 @cdev_device_del(i32* %14, i32* %16)
  %18 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %19 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ida_free(i32* @uverbs_ida, i32 %20)
  %22 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %29 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %30 = call i32 @ib_uverbs_free_hw_resources(%struct.ib_uverbs_device* %28, %struct.ib_device* %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %12
  %32 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %33 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %32, i32 0, i32 2
  %34 = call i64 @atomic_dec_and_test(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %38 = call i32 @ib_uverbs_comp_dev(%struct.ib_uverbs_device* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %43, i32 0, i32 1
  %45 = call i32 @wait_for_completion(i32* %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %48 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %47, i32 0, i32 0
  %49 = call i32 @put_device(i32* %48)
  br label %50

50:                                               ; preds = %46, %11
  ret void
}

declare dso_local i32 @cdev_device_del(i32*, i32*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @ib_uverbs_free_hw_resources(%struct.ib_uverbs_device*, %struct.ib_device*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ib_uverbs_comp_dev(%struct.ib_uverbs_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
