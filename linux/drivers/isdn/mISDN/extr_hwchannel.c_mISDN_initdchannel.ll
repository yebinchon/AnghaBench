; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_initdchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_initdchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { i32, i32, %struct.TYPE_2__, i32, i32, i8*, i64, i32*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@FLG_HDLC = common dso_local global i32 0, align 4
@dchannel_bh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDN_initdchannel(%struct.dchannel* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.dchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @FLG_HDLC, align 4
  %8 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %9 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %8, i32 0, i32 10
  %10 = call i32 @test_and_set_bit(i32 %7, i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %13 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %15 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %14, i32 0, i32 9
  store i32* null, i32** %15, align 8
  %16 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %17 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %16, i32 0, i32 8
  store i32* null, i32** %17, align 8
  %18 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %19 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %18, i32 0, i32 7
  store i32* null, i32** %19, align 8
  %20 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %21 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %24 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %26 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %25, i32 0, i32 4
  %27 = call i32 @skb_queue_head_init(i32* %26)
  %28 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %29 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %28, i32 0, i32 3
  %30 = call i32 @skb_queue_head_init(i32* %29)
  %31 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %32 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %36 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %35, i32 0, i32 1
  %37 = load i32, i32* @dchannel_bh, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  ret i32 0
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
