; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_initbchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_initbchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i16, i16, i16, i16, i16, i16, i32, i32*, i64, i32, i64, i32*, i32*, i32*, i64 }

@bchannel_bh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDN_initbchannel(%struct.bchannel* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.bchannel*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.bchannel* %0, %struct.bchannel** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %8 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %7, i32 0, i32 14
  store i64 0, i64* %8, align 8
  %9 = load i16, i16* %6, align 2
  %10 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %11 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %10, i32 0, i32 0
  store i16 %9, i16* %11, align 8
  %12 = load i16, i16* %6, align 2
  %13 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %14 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %13, i32 0, i32 1
  store i16 %12, i16* %14, align 2
  %15 = load i16, i16* %6, align 2
  %16 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %17 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %16, i32 0, i32 2
  store i16 %15, i16* %17, align 4
  %18 = load i16, i16* %5, align 2
  %19 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %20 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %19, i32 0, i32 3
  store i16 %18, i16* %20, align 2
  %21 = load i16, i16* %5, align 2
  %22 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %23 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %22, i32 0, i32 4
  store i16 %21, i16* %23, align 8
  %24 = load i16, i16* %5, align 2
  %25 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %26 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %25, i32 0, i32 5
  store i16 %24, i16* %26, align 2
  %27 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %28 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %27, i32 0, i32 13
  store i32* null, i32** %28, align 8
  %29 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %30 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %29, i32 0, i32 12
  store i32* null, i32** %30, align 8
  %31 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %32 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %31, i32 0, i32 11
  store i32* null, i32** %32, align 8
  %33 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %34 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %33, i32 0, i32 10
  store i64 0, i64* %34, align 8
  %35 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %36 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %35, i32 0, i32 9
  %37 = call i32 @skb_queue_head_init(i32* %36)
  %38 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %39 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %41 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %40, i32 0, i32 7
  store i32* null, i32** %41, align 8
  %42 = load %struct.bchannel*, %struct.bchannel** %4, align 8
  %43 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %42, i32 0, i32 6
  %44 = load i32, i32* @bchannel_bh, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  ret i32 0
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
