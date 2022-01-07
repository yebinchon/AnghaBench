; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_recv_Dchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_recv_Dchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mISDNhead = type { i32, i32 }

@PH_DATA_IND = common dso_local global i32 0, align 4
@FLG_RECVQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recv_Dchannel(%struct.dchannel* %0) #0 {
  %2 = alloca %struct.dchannel*, align 8
  %3 = alloca %struct.mISDNhead*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %2, align 8
  %4 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %5 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %12 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %13)
  %15 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %16 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %15, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %16, align 8
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %19 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call %struct.mISDNhead* @mISDN_HEAD_P(%struct.TYPE_4__* %20)
  store %struct.mISDNhead* %21, %struct.mISDNhead** %3, align 8
  %22 = load i32, i32* @PH_DATA_IND, align 4
  %23 = load %struct.mISDNhead*, %struct.mISDNhead** %3, align 8
  %24 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %26 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_sapi_tei(i32 %29)
  %31 = load %struct.mISDNhead*, %struct.mISDNhead** %3, align 8
  %32 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %34 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %33, i32 0, i32 1
  %35 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %36 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @skb_queue_tail(i32* %34, %struct.TYPE_4__* %37)
  %39 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %40 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %39, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.dchannel*, %struct.dchannel** %2, align 8
  %42 = load i32, i32* @FLG_RECVQUEUE, align 4
  %43 = call i32 @schedule_event(%struct.dchannel* %41, i32 %42)
  br label %44

44:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local %struct.mISDNhead* @mISDN_HEAD_P(%struct.TYPE_4__*) #1

declare dso_local i32 @get_sapi_tei(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @schedule_event(%struct.dchannel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
