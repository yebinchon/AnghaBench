; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_to_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_to_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.sti_channel* }
%struct.sti_channel = type { i32, i32 }
%struct.mbox_controller = type { i32, i32, %struct.mbox_chan* }

@.str = private unnamed_addr constant [50 x i8] c"Channel not registered: instance: %d channel: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, i32, i32)* @sti_mbox_to_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @sti_mbox_to_channel(%struct.mbox_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca %struct.mbox_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sti_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.mbox_controller* %0, %struct.mbox_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %13 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %18 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %17, i32 0, i32 2
  %19 = load %struct.mbox_chan*, %struct.mbox_chan** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %19, i64 %21
  %23 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %22, i32 0, i32 0
  %24 = load %struct.sti_channel*, %struct.sti_channel** %23, align 8
  store %struct.sti_channel* %24, %struct.sti_channel** %8, align 8
  %25 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %26 = icmp ne %struct.sti_channel* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %16
  %28 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %29 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.sti_channel*, %struct.sti_channel** %8, align 8
  %35 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %41 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %40, i32 0, i32 2
  %42 = load %struct.mbox_chan*, %struct.mbox_chan** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %42, i64 %44
  store %struct.mbox_chan* %45, %struct.mbox_chan** %4, align 8
  br label %57

46:                                               ; preds = %33, %27, %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %10

50:                                               ; preds = %10
  %51 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %52 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  store %struct.mbox_chan* null, %struct.mbox_chan** %4, align 8
  br label %57

57:                                               ; preds = %50, %39
  %58 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  ret %struct.mbox_chan* %58
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
