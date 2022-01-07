; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_request_ibi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_request_ibi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i3c_ibi_setup = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_device_request_ibi(%struct.i3c_device* %0, %struct.i3c_ibi_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_device*, align 8
  %5 = alloca %struct.i3c_ibi_setup*, align 8
  %6 = alloca i32, align 4
  store %struct.i3c_device* %0, %struct.i3c_device** %4, align 8
  store %struct.i3c_ibi_setup* %1, %struct.i3c_ibi_setup** %5, align 8
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %10 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %15 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %13
  %22 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %23 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @i3c_bus_normaluse_lock(i32 %24)
  %26 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %27 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %32 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %37 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %40 = call i32 @i3c_dev_request_ibi_locked(%struct.TYPE_2__* %38, %struct.i3c_ibi_setup* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %42 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %30, %21
  %47 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %48 = getelementptr inbounds %struct.i3c_device, %struct.i3c_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @i3c_bus_normaluse_unlock(i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @i3c_bus_normaluse_lock(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i3c_dev_request_ibi_locked(%struct.TYPE_2__*, %struct.i3c_ibi_setup*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i3c_bus_normaluse_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
