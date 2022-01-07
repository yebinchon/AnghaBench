; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cougar.c_cougar_bind_shared_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cougar.c_cougar_bind_shared_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.cougar = type { %struct.cougar_shared* }
%struct.cougar_shared = type { i32, %struct.hid_device*, i32 }

@cougar_udev_list_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cougar_udev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.cougar*)* @cougar_bind_shared_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cougar_bind_shared_data(%struct.hid_device* %0, %struct.cougar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.cougar*, align 8
  %6 = alloca %struct.cougar_shared*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.cougar* %1, %struct.cougar** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @mutex_lock(i32* @cougar_udev_list_lock)
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call %struct.cougar_shared* @cougar_get_shared_data(%struct.hid_device* %9)
  store %struct.cougar_shared* %10, %struct.cougar_shared** %6, align 8
  %11 = load %struct.cougar_shared*, %struct.cougar_shared** %6, align 8
  %12 = icmp ne %struct.cougar_shared* %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cougar_shared* @kzalloc(i32 24, i32 %14)
  store %struct.cougar_shared* %15, %struct.cougar_shared** %6, align 8
  %16 = load %struct.cougar_shared*, %struct.cougar_shared** %6, align 8
  %17 = icmp ne %struct.cougar_shared* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %47

21:                                               ; preds = %13
  %22 = load %struct.cougar_shared*, %struct.cougar_shared** %6, align 8
  %23 = getelementptr inbounds %struct.cougar_shared, %struct.cougar_shared* %22, i32 0, i32 2
  %24 = call i32 @kref_init(i32* %23)
  %25 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %26 = load %struct.cougar_shared*, %struct.cougar_shared** %6, align 8
  %27 = getelementptr inbounds %struct.cougar_shared, %struct.cougar_shared* %26, i32 0, i32 1
  store %struct.hid_device* %25, %struct.hid_device** %27, align 8
  %28 = load %struct.cougar_shared*, %struct.cougar_shared** %6, align 8
  %29 = getelementptr inbounds %struct.cougar_shared, %struct.cougar_shared* %28, i32 0, i32 0
  %30 = call i32 @list_add_tail(i32* %29, i32* @cougar_udev_list)
  br label %31

31:                                               ; preds = %21, %2
  %32 = load %struct.cougar_shared*, %struct.cougar_shared** %6, align 8
  %33 = load %struct.cougar*, %struct.cougar** %5, align 8
  %34 = getelementptr inbounds %struct.cougar, %struct.cougar* %33, i32 0, i32 0
  store %struct.cougar_shared* %32, %struct.cougar_shared** %34, align 8
  %35 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %36 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %35, i32 0, i32 0
  %37 = load %struct.cougar*, %struct.cougar** %5, align 8
  %38 = call i32 @devm_add_action(i32* %36, i32 (%struct.cougar*)* @cougar_remove_shared_data, %struct.cougar* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = call i32 @mutex_unlock(i32* @cougar_udev_list_lock)
  %43 = load %struct.cougar*, %struct.cougar** %5, align 8
  %44 = call i32 @cougar_remove_shared_data(%struct.cougar* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %50

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %18
  %48 = call i32 @mutex_unlock(i32* @cougar_udev_list_lock)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cougar_shared* @cougar_get_shared_data(%struct.hid_device*) #1

declare dso_local %struct.cougar_shared* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @devm_add_action(i32*, i32 (%struct.cougar*)*, %struct.cougar*) #1

declare dso_local i32 @cougar_remove_shared_data(%struct.cougar*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
