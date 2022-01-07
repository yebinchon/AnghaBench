; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_show_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_show_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_channel = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.host1x = type { i32 }
%struct.output = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_channel*, i8*, i32)* @show_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_channel(%struct.host1x_channel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.host1x_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.host1x*, align 8
  %8 = alloca %struct.output*, align 8
  store %struct.host1x_channel* %0, %struct.host1x_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %10 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.host1x* @dev_get_drvdata(i32 %13)
  store %struct.host1x* %14, %struct.host1x** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.output*
  store %struct.output* %16, %struct.output** %8, align 8
  %17 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %18 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.host1x*, %struct.host1x** %7, align 8
  %25 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %26 = load %struct.output*, %struct.output** %8, align 8
  %27 = call i32 @host1x_hw_show_channel_fifo(%struct.host1x* %24, %struct.host1x_channel* %25, %struct.output* %26)
  br label %28

28:                                               ; preds = %23, %3
  %29 = load %struct.host1x*, %struct.host1x** %7, align 8
  %30 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %31 = load %struct.output*, %struct.output** %8, align 8
  %32 = call i32 @host1x_hw_show_channel_cdma(%struct.host1x* %29, %struct.host1x_channel* %30, %struct.output* %31)
  %33 = load %struct.host1x_channel*, %struct.host1x_channel** %4, align 8
  %34 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret i32 0
}

declare dso_local %struct.host1x* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @host1x_hw_show_channel_fifo(%struct.host1x*, %struct.host1x_channel*, %struct.output*) #1

declare dso_local i32 @host1x_hw_show_channel_cdma(%struct.host1x*, %struct.host1x_channel*, %struct.output*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
