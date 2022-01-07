; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_assign_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_assign_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, i32 }

@assign_name.last_id = internal global i32 0, align 4
@devices_rwsem = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@IB_DEVICE_NAME_MAX = common dso_local global i32 0, align 4
@devices = common dso_local global i32 0, align 4
@xa_limit_31b = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i8*)* @assign_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_name(%struct.ib_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @down_write(i32* @devices_rwsem)
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strchr(i8* %7, i8 signext 37)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @alloc_name(%struct.ib_device* %11, i8* %12)
  store i32 %13, i32* %5, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %16 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %15, i32 0, i32 1
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @dev_set_name(i32* %16, i8* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %51

23:                                               ; preds = %19
  %24 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %25 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %24, i32 0, i32 1
  %26 = call i32 @dev_name(i32* %25)
  %27 = call i64 @__ib_device_get_by_name(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENFILE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %34 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 1
  %38 = call i32 @dev_name(i32* %37)
  %39 = load i32, i32* @IB_DEVICE_NAME_MAX, align 4
  %40 = call i32 @strlcpy(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %42 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %41, i32 0, i32 0
  %43 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %44 = load i32, i32* @xa_limit_31b, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @xa_alloc_cyclic(i32* @devices, i32* %42, %struct.ib_device* %43, i32 %44, i32* @assign_name.last_id, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %50, %29, %22
  %52 = call i32 @up_write(i32* @devices_rwsem)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @alloc_name(%struct.ib_device*, i8*) #1

declare dso_local i32 @dev_set_name(i32*, i8*) #1

declare dso_local i64 @__ib_device_get_by_name(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @xa_alloc_cyclic(i32*, i32*, %struct.ib_device*, i32, i32*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
