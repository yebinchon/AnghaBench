; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Try increasing MBOX_TX_QUEUE_LEN\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbox_send_message(%struct.mbox_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbox_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %10 = icmp ne %struct.mbox_chan* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %13 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %74

19:                                               ; preds = %11
  %20 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @add_to_rbuf(%struct.mbox_chan* %20, i8* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %27 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %19
  %34 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %35 = call i32 @msg_submit(%struct.mbox_chan* %34)
  %36 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %37 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %33
  %43 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %44 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = call i64 @msecs_to_jiffies(i32 3600000)
  store i64 %50, i64* %7, align 8
  br label %58

51:                                               ; preds = %42
  %52 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %53 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @msecs_to_jiffies(i32 %56)
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %51, %49
  %59 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %60 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @wait_for_completion_timeout(i32* %60, i64 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @ETIME, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  %68 = load %struct.mbox_chan*, %struct.mbox_chan** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @tx_tick(%struct.mbox_chan* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %58
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %25, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @add_to_rbuf(%struct.mbox_chan*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msg_submit(%struct.mbox_chan*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @tx_tick(%struct.mbox_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
