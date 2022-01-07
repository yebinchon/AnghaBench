; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_bus.c_host1x_subdev_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_bus.c_host1x_subdev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.host1x_subdev = type { %struct.host1x_client*, i32 }
%struct.host1x_client = type { i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"failed to add: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_device*, %struct.host1x_subdev*, %struct.host1x_client*)* @host1x_subdev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_subdev_register(%struct.host1x_device* %0, %struct.host1x_subdev* %1, %struct.host1x_client* %2) #0 {
  %4 = alloca %struct.host1x_device*, align 8
  %5 = alloca %struct.host1x_subdev*, align 8
  %6 = alloca %struct.host1x_client*, align 8
  %7 = alloca i32, align 4
  store %struct.host1x_device* %0, %struct.host1x_device** %4, align 8
  store %struct.host1x_subdev* %1, %struct.host1x_subdev** %5, align 8
  store %struct.host1x_client* %2, %struct.host1x_client** %6, align 8
  %8 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %9 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %8, i32 0, i32 3
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %12 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %11, i32 0, i32 4
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.host1x_client*, %struct.host1x_client** %6, align 8
  %15 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %14, i32 0, i32 1
  %16 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %17 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %16, i32 0, i32 6
  %18 = call i32 @list_move_tail(i32* %15, i32* %17)
  %19 = load %struct.host1x_subdev*, %struct.host1x_subdev** %5, align 8
  %20 = getelementptr inbounds %struct.host1x_subdev, %struct.host1x_subdev* %19, i32 0, i32 1
  %21 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %22 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %21, i32 0, i32 5
  %23 = call i32 @list_move_tail(i32* %20, i32* %22)
  %24 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %25 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %24, i32 0, i32 1
  %26 = load %struct.host1x_client*, %struct.host1x_client** %6, align 8
  %27 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.host1x_client*, %struct.host1x_client** %6, align 8
  %29 = load %struct.host1x_subdev*, %struct.host1x_subdev** %5, align 8
  %30 = getelementptr inbounds %struct.host1x_subdev, %struct.host1x_subdev* %29, i32 0, i32 0
  store %struct.host1x_client* %28, %struct.host1x_client** %30, align 8
  %31 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %32 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %31, i32 0, i32 4
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %35 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %34, i32 0, i32 3
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %38 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %37, i32 0, i32 2
  %39 = call i64 @list_empty(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %3
  %42 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %43 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %42, i32 0, i32 1
  %44 = call i32 @device_add(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %49 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %48, i32 0, i32 1
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %55

52:                                               ; preds = %41
  %53 = load %struct.host1x_device*, %struct.host1x_device** %4, align 8
  %54 = getelementptr inbounds %struct.host1x_device, %struct.host1x_device* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55, %3
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
