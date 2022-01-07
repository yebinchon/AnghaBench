; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_core.c_mISDNDevName4ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_core.c_mISDNDevName4ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mISDNchannel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@msg_no_channel = common dso_local global i8* null, align 8
@msg_no_stack = common dso_local global i8* null, align 8
@msg_no_stackdev = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mISDNDevName4ch(%struct.mISDNchannel* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mISDNchannel*, align 8
  store %struct.mISDNchannel* %0, %struct.mISDNchannel** %3, align 8
  %4 = load %struct.mISDNchannel*, %struct.mISDNchannel** %3, align 8
  %5 = icmp ne %struct.mISDNchannel* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** @msg_no_channel, align 8
  store i8* %7, i8** %2, align 8
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.mISDNchannel*, %struct.mISDNchannel** %3, align 8
  %10 = getelementptr inbounds %struct.mISDNchannel, %struct.mISDNchannel* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** @msg_no_stack, align 8
  store i8* %14, i8** %2, align 8
  br label %32

15:                                               ; preds = %8
  %16 = load %struct.mISDNchannel*, %struct.mISDNchannel** %3, align 8
  %17 = getelementptr inbounds %struct.mISDNchannel, %struct.mISDNchannel* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i8*, i8** @msg_no_stackdev, align 8
  store i8* %23, i8** %2, align 8
  br label %32

24:                                               ; preds = %15
  %25 = load %struct.mISDNchannel*, %struct.mISDNchannel** %3, align 8
  %26 = getelementptr inbounds %struct.mISDNchannel, %struct.mISDNchannel* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i8* @dev_name(i32* %30)
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %24, %22, %13, %6
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i8* @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
