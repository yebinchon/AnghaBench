; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-sti.c_sti_mbox_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_mbox_device = type { i32, i32*, i32 }
%struct.sti_mbox_pdata = type { i32 }
%struct.sti_channel = type { i32, i32 }
%struct.mbox_chan = type { %struct.sti_channel* }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Unexpected IRQ: %s\0A  instance: %d: channel: %d [enabled: %x]\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Spurious IRQ - was a channel requested?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sti_mbox_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_mbox_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sti_mbox_device*, align 8
  %6 = alloca %struct.sti_mbox_pdata*, align 8
  %7 = alloca %struct.sti_channel*, align 8
  %8 = alloca %struct.mbox_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sti_mbox_device*
  store %struct.sti_mbox_device* %12, %struct.sti_mbox_device** %5, align 8
  %13 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %5, align 8
  %14 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.sti_mbox_pdata* @dev_get_platdata(i32 %15)
  store %struct.sti_mbox_pdata* %16, %struct.sti_mbox_pdata** %6, align 8
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %69, %2
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.sti_mbox_pdata*, %struct.sti_mbox_pdata** %6, align 8
  %21 = getelementptr inbounds %struct.sti_mbox_pdata, %struct.sti_mbox_pdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %18
  %25 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.mbox_chan* @sti_mbox_irq_to_channel(%struct.sti_mbox_device* %25, i32 %26)
  store %struct.mbox_chan* %27, %struct.mbox_chan** %8, align 8
  %28 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %29 = icmp ne %struct.mbox_chan* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %69

31:                                               ; preds = %24
  %32 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %33 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %32, i32 0, i32 0
  %34 = load %struct.sti_channel*, %struct.sti_channel** %33, align 8
  store %struct.sti_channel* %34, %struct.sti_channel** %7, align 8
  %35 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %36 = call i32 @sti_mbox_channel_is_enabled(%struct.mbox_chan* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %31
  %39 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %5, align 8
  %40 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %5, align 8
  %43 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sti_channel*, %struct.sti_channel** %7, align 8
  %46 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sti_channel*, %struct.sti_channel** %7, align 8
  %49 = getelementptr inbounds %struct.sti_channel, %struct.sti_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %5, align 8
  %52 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @IRQ_NONE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %38
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %38
  br label %69

65:                                               ; preds = %31
  %66 = load %struct.mbox_chan*, %struct.mbox_chan** %8, align 8
  %67 = call i32 @sti_mbox_disable_channel(%struct.mbox_chan* %66)
  %68 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %64, %30
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %18

72:                                               ; preds = %18
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @IRQ_NONE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.sti_mbox_device*, %struct.sti_mbox_device** %5, align 8
  %78 = getelementptr inbounds %struct.sti_mbox_device, %struct.sti_mbox_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local %struct.sti_mbox_pdata* @dev_get_platdata(i32) #1

declare dso_local %struct.mbox_chan* @sti_mbox_irq_to_channel(%struct.sti_mbox_device*, i32) #1

declare dso_local i32 @sti_mbox_channel_is_enabled(%struct.mbox_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sti_mbox_disable_channel(%struct.mbox_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
