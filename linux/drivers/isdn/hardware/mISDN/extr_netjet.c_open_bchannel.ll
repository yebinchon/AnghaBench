; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_open_bchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_open_bchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bchannel }
%struct.bchannel = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.channel_req = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISDN_P_NONE = common dso_local global i64 0, align 8
@FLG_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FLG_FILLEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tiger_hw*, %struct.channel_req*)* @open_bchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_bchannel(%struct.tiger_hw* %0, %struct.channel_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tiger_hw*, align 8
  %5 = alloca %struct.channel_req*, align 8
  %6 = alloca %struct.bchannel*, align 8
  store %struct.tiger_hw* %0, %struct.tiger_hw** %4, align 8
  store %struct.channel_req* %1, %struct.channel_req** %5, align 8
  %7 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %8 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %14 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %12
  %22 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %23 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ISDN_P_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %21
  %31 = load %struct.tiger_hw*, %struct.tiger_hw** %4, align 8
  %32 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %35 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.bchannel* %41, %struct.bchannel** %6, align 8
  %42 = load i32, i32* @FLG_OPEN, align 4
  %43 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %44 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %43, i32 0, i32 1
  %45 = call i64 @test_and_set_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %65

50:                                               ; preds = %30
  %51 = load i32, i32* @FLG_FILLEMPTY, align 4
  %52 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %53 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %52, i32 0, i32 1
  %54 = call i32 @test_and_clear_bit(i32 %51, i32* %53)
  %55 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %56 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %59 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %62 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %61, i32 0, i32 0
  %63 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %64 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %63, i32 0, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %50, %47, %27, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
