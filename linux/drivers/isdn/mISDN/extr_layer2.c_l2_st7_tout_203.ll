; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st7_tout_203.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st7_tout_203.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i32, i32, i32 }

@FLG_LAPD = common dso_local global i32 0, align 4
@FLG_DCHAN_BUSY = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@ST_L2_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st7_tout_203 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st7_tout_203(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.layer2*, %struct.layer2** %9, align 8
  store %struct.layer2* %10, %struct.layer2** %7, align 8
  %11 = load i32, i32* @FLG_LAPD, align 4
  %12 = load %struct.layer2*, %struct.layer2** %7, align 8
  %13 = getelementptr inbounds %struct.layer2, %struct.layer2* %12, i32 0, i32 3
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @FLG_DCHAN_BUSY, align 4
  %18 = load %struct.layer2*, %struct.layer2** %7, align 8
  %19 = getelementptr inbounds %struct.layer2, %struct.layer2* %18, i32 0, i32 3
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.layer2*, %struct.layer2** %7, align 8
  %24 = getelementptr inbounds %struct.layer2, %struct.layer2* %23, i32 0, i32 2
  %25 = load %struct.layer2*, %struct.layer2** %7, align 8
  %26 = getelementptr inbounds %struct.layer2, %struct.layer2* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EV_L2_T203, align 4
  %29 = call i32 @mISDN_FsmAddTimer(i32* %24, i32 %27, i32 %28, i32* null, i32 9)
  br label %38

30:                                               ; preds = %16, %3
  %31 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %32 = load i32, i32* @ST_L2_8, align 4
  %33 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %31, i32 %32)
  %34 = load %struct.layer2*, %struct.layer2** %7, align 8
  %35 = call i32 @transmit_enquiry(%struct.layer2* %34)
  %36 = load %struct.layer2*, %struct.layer2** %7, align 8
  %37 = getelementptr inbounds %struct.layer2, %struct.layer2* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %22
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @transmit_enquiry(%struct.layer2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
