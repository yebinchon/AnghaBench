; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_acquire_unused_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_acquire_unused_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_channel = type { i32 }
%struct.host1x = type { i32, %struct.TYPE_2__*, %struct.host1x_channel_list }
%struct.TYPE_2__ = type { i32 }
%struct.host1x_channel_list = type { %struct.host1x_channel*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to find free channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.host1x_channel* (%struct.host1x*)* @acquire_unused_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.host1x_channel* @acquire_unused_channel(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x_channel*, align 8
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca %struct.host1x_channel_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %3, align 8
  %7 = load %struct.host1x*, %struct.host1x** %3, align 8
  %8 = getelementptr inbounds %struct.host1x, %struct.host1x* %7, i32 0, i32 2
  store %struct.host1x_channel_list* %8, %struct.host1x_channel_list** %4, align 8
  %9 = load %struct.host1x*, %struct.host1x** %3, align 8
  %10 = getelementptr inbounds %struct.host1x, %struct.host1x* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %15 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @find_first_zero_bit(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.host1x*, %struct.host1x** %3, align 8
  %24 = getelementptr inbounds %struct.host1x, %struct.host1x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.host1x_channel* null, %struct.host1x_channel** %2, align 8
  br label %47

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %30 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %29, i32 0, i32 0
  %31 = load %struct.host1x_channel*, %struct.host1x_channel** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %31, i64 %33
  %35 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %38 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @set_bit(i32 %36, i32 %39)
  %41 = load %struct.host1x_channel_list*, %struct.host1x_channel_list** %4, align 8
  %42 = getelementptr inbounds %struct.host1x_channel_list, %struct.host1x_channel_list* %41, i32 0, i32 0
  %43 = load %struct.host1x_channel*, %struct.host1x_channel** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %43, i64 %45
  store %struct.host1x_channel* %46, %struct.host1x_channel** %2, align 8
  br label %47

47:                                               ; preds = %27, %22
  %48 = load %struct.host1x_channel*, %struct.host1x_channel** %2, align 8
  ret %struct.host1x_channel* %48
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
