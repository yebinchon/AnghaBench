; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st5_dm_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st5_dm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@FLG_L3_INIT = common dso_local global i32 0, align 4
@FLG_LAPB = common dso_local global i32 0, align 4
@PH_DEACTIVATE_REQ = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@MDL_STATUS_DOWN_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st5_dm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st5_dm_release(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 0
  %11 = load %struct.layer2*, %struct.layer2** %10, align 8
  store %struct.layer2* %11, %struct.layer2** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sk_buff*
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.layer2*, %struct.layer2** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i64 @get_PollFlagFree(%struct.layer2* %14, %struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  %19 = load %struct.layer2*, %struct.layer2** %7, align 8
  %20 = call i32 @stop_t200(%struct.layer2* %19, i32 7)
  %21 = load i32, i32* @FLG_L3_INIT, align 4
  %22 = load %struct.layer2*, %struct.layer2** %7, align 8
  %23 = getelementptr inbounds %struct.layer2, %struct.layer2* %22, i32 0, i32 1
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.layer2*, %struct.layer2** %7, align 8
  %28 = getelementptr inbounds %struct.layer2, %struct.layer2* %27, i32 0, i32 2
  %29 = call i32 @skb_queue_purge(i32* %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load i32, i32* @FLG_LAPB, align 4
  %32 = load %struct.layer2*, %struct.layer2** %7, align 8
  %33 = getelementptr inbounds %struct.layer2, %struct.layer2* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.layer2*, %struct.layer2** %7, align 8
  %38 = load i32, i32* @PH_DEACTIVATE_REQ, align 4
  %39 = load %struct.layer2*, %struct.layer2** %7, align 8
  %40 = call i32 @l2_newid(%struct.layer2* %39)
  %41 = call i32 @l2down_create(%struct.layer2* %37, i32 %38, i32 %40, i32 0, i32* null)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.layer2*, %struct.layer2** %7, align 8
  %44 = call i32 @st5_dl_release_l2l3(%struct.layer2* %43)
  %45 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %46 = load i32, i32* @ST_L2_4, align 4
  %47 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %45, i32 %46)
  %48 = load %struct.layer2*, %struct.layer2** %7, align 8
  %49 = getelementptr inbounds %struct.layer2, %struct.layer2* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.layer2*, %struct.layer2** %7, align 8
  %54 = load i32, i32* @MDL_STATUS_DOWN_IND, align 4
  %55 = call i32 @l2_tei(%struct.layer2* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52, %42
  br label %57

57:                                               ; preds = %56, %3
  ret void
}

declare dso_local i64 @get_PollFlagFree(%struct.layer2*, %struct.sk_buff*) #1

declare dso_local i32 @stop_t200(%struct.layer2*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @l2down_create(%struct.layer2*, i32, i32, i32, i32*) #1

declare dso_local i32 @l2_newid(%struct.layer2*) #1

declare dso_local i32 @st5_dl_release_l2l3(%struct.layer2*) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @l2_tei(%struct.layer2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
