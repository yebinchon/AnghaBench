; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_host1x_channel_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_host1x_channel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_channel = type { i32, i32, %struct.device*, i32, i32 }
%struct.device = type { i32 }
%struct.host1x = type { %struct.host1x_channel_list }
%struct.host1x_channel_list = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to initialize channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.host1x_channel* @host1x_channel_request(%struct.device* %0) #0 {
  %2 = alloca %struct.host1x_channel*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca %struct.host1x_channel_list*, align 8
  %6 = alloca %struct.host1x_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.host1x* @dev_get_drvdata(i32 %10)
  store %struct.host1x* %11, %struct.host1x** %4, align 8
  %12 = load %struct.host1x*, %struct.host1x** %4, align 8
  %13 = getelementptr inbounds %struct.host1x, %struct.host1x* %12, i32 0, i32 0
  store %struct.host1x_channel_list* %13, %struct.host1x_channel_list** %5, align 8
  %14 = load %struct.host1x*, %struct.host1x** %4, align 8
  %15 = call %struct.host1x_channel* @acquire_unused_channel(%struct.host1x* %14)
  store %struct.host1x_channel* %15, %struct.host1x_channel** %6, align 8
  %16 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %17 = icmp ne %struct.host1x_channel* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.host1x_channel* null, %struct.host1x_channel** %2, align 8
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %21 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %20, i32 0, i32 4
  %22 = call i32 @kref_init(i32* %21)
  %23 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %24 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %23, i32 0, i32 3
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %28 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %27, i32 0, i32 2
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.host1x*, %struct.host1x** %4, align 8
  %30 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %31 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %32 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @host1x_hw_channel_init(%struct.host1x* %29, %struct.host1x_channel* %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %47

38:                                               ; preds = %19
  %39 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %40 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %39, i32 0, i32 1
  %41 = call i32 @host1x_cdma_init(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %47

45:                                               ; preds = %38
  %46 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  store %struct.host1x_channel* %46, %struct.host1x_channel** %2, align 8
  br label %57

47:                                               ; preds = %44, %37
  %48 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %49 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %5, align 8
  %52 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clear_bit(i32 %50, i32 %53)
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.host1x_channel* null, %struct.host1x_channel** %2, align 8
  br label %57

57:                                               ; preds = %47, %45, %18
  %58 = load %struct.host1x_channel*, %struct.host1x_channel** %2, align 8
  ret %struct.host1x_channel* %58
}

declare dso_local %struct.host1x* @dev_get_drvdata(i32) #1

declare dso_local %struct.host1x_channel* @acquire_unused_channel(%struct.host1x*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @host1x_hw_channel_init(%struct.host1x*, %struct.host1x_channel*, i32) #1

declare dso_local i32 @host1x_cdma_init(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
