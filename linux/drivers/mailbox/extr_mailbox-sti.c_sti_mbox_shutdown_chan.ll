; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_shutdown_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_shutdown_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.sti_channel* }
%struct.sti_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mbox_controller* }
%struct.mbox_controller = type { i32, i32, %struct.mbox_chan* }

@.str = private unnamed_addr constant [38 x i8] c"Request to free non-existent channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @sti_mbox_shutdown_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_mbox_shutdown_chan(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.sti_channel*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %6 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %7 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %6, i32 0, i32 0
  %8 = load %struct.sti_channel*, %struct.sti_channel** %7, align 8
  store %struct.sti_channel* %8, %struct.sti_channel** %3, align 8
  %9 = load %struct.sti_channel*, %struct.sti_channel** %3, align 8
  %10 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mbox_controller*, %struct.mbox_controller** %12, align 8
  store %struct.mbox_controller* %13, %struct.mbox_controller** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %17 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %22 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %23 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %22, i32 0, i32 2
  %24 = load %struct.mbox_chan*, %struct.mbox_chan** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %24, i64 %26
  %28 = icmp eq %struct.mbox_chan* %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %29, %14
  %35 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %36 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %42 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %52

45:                                               ; preds = %34
  %46 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %47 = call i32 @sti_mbox_disable_channel(%struct.mbox_chan* %46)
  %48 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %49 = call i32 @sti_mbox_clear_irq(%struct.mbox_chan* %48)
  %50 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %51 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %50, i32 0, i32 0
  store %struct.sti_channel* null, %struct.sti_channel** %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @sti_mbox_disable_channel(%struct.mbox_chan*) #1

declare dso_local i32 @sti_mbox_clear_irq(%struct.mbox_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
