; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_got_tei.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_got_tei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i64, %struct.layer2* }
%struct.layer2 = type { i8, i32, i32, i32, i32 }

@DL_INFO_L2_CONNECT = common dso_local global i32 0, align 4
@DL_INFORMATION_IND = common dso_local global i32 0, align 4
@ST_L2_3 = common dso_local global i64 0, align 8
@FLG_L3_INIT = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_got_tei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_got_tei(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %10 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %9, i32 0, i32 1
  %11 = load %struct.layer2*, %struct.layer2** %10, align 8
  store %struct.layer2* %11, %struct.layer2** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = trunc i64 %13 to i8
  %15 = load %struct.layer2*, %struct.layer2** %7, align 8
  %16 = getelementptr inbounds %struct.layer2, %struct.layer2* %15, i32 0, i32 0
  store i8 %14, i8* %16, align 4
  %17 = load %struct.layer2*, %struct.layer2** %7, align 8
  %18 = getelementptr inbounds %struct.layer2, %struct.layer2* %17, i32 0, i32 4
  %19 = load %struct.layer2*, %struct.layer2** %7, align 8
  %20 = getelementptr inbounds %struct.layer2, %struct.layer2* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.layer2*, %struct.layer2** %7, align 8
  %23 = getelementptr inbounds %struct.layer2, %struct.layer2* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 4
  %25 = call i32 @set_channel_address(i32* %18, i32 %21, i8 signext %24)
  %26 = load i32, i32* @DL_INFO_L2_CONNECT, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.layer2*, %struct.layer2** %7, align 8
  %28 = load i32, i32* @DL_INFORMATION_IND, align 4
  %29 = call i32 @l2up_create(%struct.layer2* %27, i32 %28, i32 4, i32* %8)
  %30 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %31 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ST_L2_3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %37 = call i32 @establishlink(%struct.FsmInst* %36)
  %38 = load i32, i32* @FLG_L3_INIT, align 4
  %39 = load %struct.layer2*, %struct.layer2** %7, align 8
  %40 = getelementptr inbounds %struct.layer2, %struct.layer2* %39, i32 0, i32 2
  %41 = call i32 @test_and_set_bit(i32 %38, i32* %40)
  br label %46

42:                                               ; preds = %3
  %43 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %44 = load i32, i32* @ST_L2_4, align 4
  %45 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.layer2*, %struct.layer2** %7, align 8
  %48 = getelementptr inbounds %struct.layer2, %struct.layer2* %47, i32 0, i32 1
  %49 = call i64 @skb_queue_len(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.layer2*, %struct.layer2** %7, align 8
  %53 = call i32 @tx_ui(%struct.layer2* %52)
  br label %54

54:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @set_channel_address(i32*, i32, i8 signext) #1

declare dso_local i32 @l2up_create(%struct.layer2*, i32, i32, i32*) #1

declare dso_local i32 @establishlink(%struct.FsmInst*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @tx_ui(%struct.layer2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
