; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_fw4_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_fw4_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_5__, i32*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.cpl_fw4_ack = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"ep %p tid %u credits %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"0 credit ack ep %p tid %u state %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"last streaming msg ack ep %p tid %u state %u initiator %u freeing skb\0A\00", align 1
@STOP_MPA_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @fw4_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw4_ack(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.c4iw_ep*, align 8
  %7 = alloca %struct.cpl_fw4_ack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.cpl_fw4_ack* @cplhdr(%struct.sk_buff* %10)
  store %struct.cpl_fw4_ack* %11, %struct.cpl_fw4_ack** %7, align 8
  %12 = load %struct.cpl_fw4_ack*, %struct.cpl_fw4_ack** %7, align 8
  %13 = getelementptr inbounds %struct.cpl_fw4_ack, %struct.cpl_fw4_ack* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.cpl_fw4_ack*, %struct.cpl_fw4_ack** %7, align 8
  %16 = call i32 @GET_TID(%struct.cpl_fw4_ack* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev* %17, i32 %18)
  store %struct.c4iw_ep* %19, %struct.c4iw_ep** %6, align 8
  %20 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %21 = icmp ne %struct.c4iw_ep* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

23:                                               ; preds = %2
  %24 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %25 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %26 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 (i8*, %struct.c4iw_ep*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %24, i32 %27, i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %34 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %35 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %38 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %37, i32 0, i32 0
  %39 = call i32 @state_read(%struct.TYPE_5__* %38)
  %40 = sext i32 %39 to i64
  %41 = call i32 (i8*, %struct.c4iw_ep*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %33, i32 %36, i64 %40)
  br label %93

42:                                               ; preds = %23
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dst_confirm(i32 %45)
  %47 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %48 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %92

51:                                               ; preds = %42
  %52 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %53 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %54 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %57 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %56, i32 0, i32 0
  %58 = call i32 @state_read(%struct.TYPE_5__* %57)
  %59 = sext i32 %58 to i64
  %60 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %61 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = call i32 (i8*, %struct.c4iw_ep*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), %struct.c4iw_ep* %52, i32 %55, i64 %59, i32 %66)
  %68 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %69 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %73 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @kfree_skb(i32* %74)
  %76 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %77 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* @STOP_MPA_TIMER, align 4
  %79 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %80 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = call i64 @test_bit(i32 %78, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %51
  %85 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %86 = call i32 @stop_ep_timer(%struct.c4iw_ep* %85)
  br label %87

87:                                               ; preds = %84, %51
  %88 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %89 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  br label %92

92:                                               ; preds = %87, %42
  br label %93

93:                                               ; preds = %92, %32
  %94 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %95 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %94, i32 0, i32 0
  %96 = call i32 @c4iw_put_ep(%struct.TYPE_5__* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %22
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.cpl_fw4_ack* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_fw4_ack*) #1

declare dso_local %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32, i64, ...) #1

declare dso_local i32 @state_read(%struct.TYPE_5__*) #1

declare dso_local i32 @dst_confirm(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @stop_ep_timer(%struct.c4iw_ep*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
