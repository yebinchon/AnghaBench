; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_isar_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_isar_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bchannel }
%struct.bchannel = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.channel_req = type { i64, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISDN_P_NONE = common dso_local global i64 0, align 8
@FLG_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isar_hw*, %struct.channel_req*)* @isar_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isar_open(%struct.isar_hw* %0, %struct.channel_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isar_hw*, align 8
  %5 = alloca %struct.channel_req*, align 8
  %6 = alloca %struct.bchannel*, align 8
  store %struct.isar_hw* %0, %struct.isar_hw** %4, align 8
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
  br label %61

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
  br label %61

30:                                               ; preds = %21
  %31 = load %struct.isar_hw*, %struct.isar_hw** %4, align 8
  %32 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %31, i32 0, i32 0
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
  br label %61

50:                                               ; preds = %30
  %51 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %52 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %55 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.bchannel*, %struct.bchannel** %6, align 8
  %58 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %57, i32 0, i32 0
  %59 = load %struct.channel_req*, %struct.channel_req** %5, align 8
  %60 = getelementptr inbounds %struct.channel_req, %struct.channel_req* %59, i32 0, i32 1
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %50, %47, %27, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
