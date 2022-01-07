; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x01.c_host1x_debug_show_mlocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_debug_hw_1x01.c_host1x_debug_show_mlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }
%struct.output = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"---- mlocks ----\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%u: locked by channel %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%u: locked by cpu\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%u: unlocked\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.output*)* @host1x_debug_show_mlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_debug_show_mlocks(%struct.host1x* %0, %struct.output* %1) #0 {
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca %struct.output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %3, align 8
  store %struct.output* %1, %struct.output** %4, align 8
  %7 = load %struct.output*, %struct.output** %4, align 8
  %8 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.host1x*, %struct.host1x** %3, align 8
  %12 = call i32 @host1x_syncpt_nb_mlocks(%struct.host1x* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = load %struct.host1x*, %struct.host1x** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @HOST1X_SYNC_MLOCK_OWNER(i32 %16)
  %18 = call i32 @host1x_sync_readl(%struct.host1x* %15, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @HOST1X_SYNC_MLOCK_OWNER_CH_OWNS_V(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.output*, %struct.output** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @HOST1X_SYNC_MLOCK_OWNER_CHID_V(i32 %25)
  %27 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26)
  br label %41

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @HOST1X_SYNC_MLOCK_OWNER_CPU_OWNS_V(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.output*, %struct.output** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.output*, %struct.output** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load %struct.output*, %struct.output** %4, align 8
  %47 = call i32 (%struct.output*, i8*, ...) @host1x_debug_output(%struct.output* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @host1x_debug_output(%struct.output*, i8*, ...) #1

declare dso_local i32 @host1x_syncpt_nb_mlocks(%struct.host1x*) #1

declare dso_local i32 @host1x_sync_readl(%struct.host1x*, i32) #1

declare dso_local i32 @HOST1X_SYNC_MLOCK_OWNER(i32) #1

declare dso_local i64 @HOST1X_SYNC_MLOCK_OWNER_CH_OWNS_V(i32) #1

declare dso_local i32 @HOST1X_SYNC_MLOCK_OWNER_CHID_V(i32) #1

declare dso_local i64 @HOST1X_SYNC_MLOCK_OWNER_CPU_OWNS_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
