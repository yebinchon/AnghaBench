; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_recv_Echannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_hwchannel.c_recv_Echannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dchannel = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mISDNhead = type { i32, i32 }

@PH_DATA_E_IND = common dso_local global i32 0, align 4
@FLG_RECVQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recv_Echannel(%struct.dchannel* %0, %struct.dchannel* %1) #0 {
  %3 = alloca %struct.dchannel*, align 8
  %4 = alloca %struct.dchannel*, align 8
  %5 = alloca %struct.mISDNhead*, align 8
  store %struct.dchannel* %0, %struct.dchannel** %3, align 8
  store %struct.dchannel* %1, %struct.dchannel** %4, align 8
  %6 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %7 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %14 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %15)
  %17 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %18 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %17, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %18, align 8
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %21 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call %struct.mISDNhead* @mISDN_HEAD_P(%struct.TYPE_4__* %22)
  store %struct.mISDNhead* %23, %struct.mISDNhead** %5, align 8
  %24 = load i32, i32* @PH_DATA_E_IND, align 4
  %25 = load %struct.mISDNhead*, %struct.mISDNhead** %5, align 8
  %26 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %28 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_sapi_tei(i32 %31)
  %33 = load %struct.mISDNhead*, %struct.mISDNhead** %5, align 8
  %34 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %36 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %35, i32 0, i32 1
  %37 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %38 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @skb_queue_tail(i32* %36, %struct.TYPE_4__* %39)
  %41 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %42 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %41, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.dchannel*, %struct.dchannel** %4, align 8
  %44 = load i32, i32* @FLG_RECVQUEUE, align 4
  %45 = call i32 @schedule_event(%struct.dchannel* %43, i32 %44)
  br label %46

46:                                               ; preds = %19, %12
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
