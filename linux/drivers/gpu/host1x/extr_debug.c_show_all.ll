; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_show_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_debug.c_show_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.output = type { i32 }
%struct.host1x_channel = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"---- channels ----\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.output*, i32)* @show_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_all(%struct.host1x* %0, %struct.output* %1, i32 %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca %struct.output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.host1x_channel*, align 8
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store %struct.output* %1, %struct.output** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.host1x*, %struct.host1x** %4, align 8
  %10 = load %struct.output*, %struct.output** %5, align 8
  %11 = call i32 @host1x_hw_show_mlocks(%struct.host1x* %9, %struct.output* %10)
  %12 = load %struct.host1x*, %struct.host1x** %4, align 8
  %13 = load %struct.output*, %struct.output** %5, align 8
  %14 = call i32 @show_syncpts(%struct.host1x* %12, %struct.output* %13)
  %15 = load %struct.output*, %struct.output** %5, align 8
  %16 = call i32 @host1x_debug_output(%struct.output* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %39, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.host1x*, %struct.host1x** %4, align 8
  %20 = getelementptr inbounds %struct.host1x, %struct.host1x* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %17
  %26 = load %struct.host1x*, %struct.host1x** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.host1x_channel* @host1x_channel_get_index(%struct.host1x* %26, i32 %27)
  store %struct.host1x_channel* %28, %struct.host1x_channel** %8, align 8
  %29 = load %struct.host1x_channel*, %struct.host1x_channel** %8, align 8
  %30 = icmp ne %struct.host1x_channel* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.host1x_channel*, %struct.host1x_channel** %8, align 8
  %33 = load %struct.output*, %struct.output** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @show_channel(%struct.host1x_channel* %32, %struct.output* %33, i32 %34)
  %36 = load %struct.host1x_channel*, %struct.host1x_channel** %8, align 8
  %37 = call i32 @host1x_channel_put(%struct.host1x_channel* %36)
  br label %38

38:                                               ; preds = %31, %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %17

42:                                               ; preds = %17
  ret void
}

declare dso_local i32 @host1x_hw_show_mlocks(%struct.host1x*, %struct.output*) #1

declare dso_local i32 @show_syncpts(%struct.host1x*, %struct.output*) #1

declare dso_local i32 @host1x_debug_output(%struct.output*, i8*) #1

declare dso_local %struct.host1x_channel* @host1x_channel_get_index(%struct.host1x*, i32) #1

declare dso_local i32 @show_channel(%struct.host1x_channel*, %struct.output*, i32) #1

declare dso_local i32 @host1x_channel_put(%struct.host1x_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
