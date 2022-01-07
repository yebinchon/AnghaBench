; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_do_priv_xfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_do_priv_xfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_device = type { i32, i32 }
%struct.i3c_priv_xfer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_device_do_priv_xfers(%struct.i3c_device* %0, %struct.i3c_priv_xfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i3c_device*, align 8
  %6 = alloca %struct.i3c_priv_xfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i3c_device* %0, %struct.i3c_device** %5, align 8
  store %struct.i3c_priv_xfer* %1, %struct.i3c_priv_xfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

13:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %19, i64 %21
  %23 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %27, i64 %29
  %31 = getelementptr inbounds %struct.i3c_priv_xfer, %struct.i3c_priv_xfer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26, %18
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %58

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %14

42:                                               ; preds = %14
  %43 = load %struct.i3c_device*, %struct.i3c_device** %5, align 8
  %44 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @i3c_bus_normaluse_lock(i32 %45)
  %47 = load %struct.i3c_device*, %struct.i3c_device** %5, align 8
  %48 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.i3c_priv_xfer*, %struct.i3c_priv_xfer** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @i3c_dev_do_priv_xfers_locked(i32 %49, %struct.i3c_priv_xfer* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.i3c_device*, %struct.i3c_device** %5, align 8
  %54 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i3c_bus_normaluse_unlock(i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %42, %35, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @i3c_bus_normaluse_lock(i32) #1

declare dso_local i32 @i3c_dev_do_priv_xfers_locked(i32, %struct.i3c_priv_xfer*, i32) #1

declare dso_local i32 @i3c_bus_normaluse_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
