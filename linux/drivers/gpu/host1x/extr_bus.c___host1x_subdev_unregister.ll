; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_bus.c___host1x_subdev_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_bus.c___host1x_subdev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_device = type { i32, i32, i32, i32 }
%struct.host1x_subdev = type { i32, %struct.host1x_client* }
%struct.host1x_client = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_device*, %struct.host1x_subdev*)* @__host1x_subdev_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__host1x_subdev_unregister(%struct.host1x_device* %0, %struct.host1x_subdev* %1) #0 {
  %3 = alloca %struct.host1x_device*, align 8
  %4 = alloca %struct.host1x_subdev*, align 8
  %5 = alloca %struct.host1x_client*, align 8
  store %struct.host1x_device* %0, %struct.host1x_device** %3, align 8
  store %struct.host1x_subdev* %1, %struct.host1x_subdev** %4, align 8
  %6 = load %struct.host1x_subdev*, %struct.host1x_subdev** %4, align 8
  %7 = getelementptr inbounds %struct.host1x_subdev, %struct.host1x_subdev* %6, i32 0, i32 1
  %8 = load %struct.host1x_client*, %struct.host1x_client** %7, align 8
  store %struct.host1x_client* %8, %struct.host1x_client** %5, align 8
  %9 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %10 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %9, i32 0, i32 2
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %15 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %20 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %22 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %21, i32 0, i32 3
  %23 = call i32 @device_del(i32* %22)
  br label %24

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %27 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.host1x_subdev*, %struct.host1x_subdev** %4, align 8
  %30 = getelementptr inbounds %struct.host1x_subdev, %struct.host1x_subdev* %29, i32 0, i32 1
  store %struct.host1x_client* null, %struct.host1x_client** %30, align 8
  %31 = load %struct.host1x_client*, %struct.host1x_client** %5, align 8
  %32 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.host1x_subdev*, %struct.host1x_subdev** %4, align 8
  %34 = getelementptr inbounds %struct.host1x_subdev, %struct.host1x_subdev* %33, i32 0, i32 0
  %35 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %36 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %35, i32 0, i32 2
  %37 = call i32 @list_move_tail(i32* %34, i32* %36)
  %38 = load %struct.host1x_client*, %struct.host1x_client** %5, align 8
  %39 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %38, i32 0, i32 0
  %40 = call i32 @list_del_init(i32* %39)
  %41 = load %struct.host1x_device*, %struct.host1x_device** %3, align 8
  %42 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
