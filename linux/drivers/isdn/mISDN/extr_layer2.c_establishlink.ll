; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_establishlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_establishlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i32, i32, i64 }

@FLG_MOD128 = common dso_local global i32 0, align 4
@SABME = common dso_local global i32 0, align 4
@SABM = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@FLG_PEND_REL = common dso_local global i32 0, align 4
@ST_L2_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*)* @establishlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @establishlink(%struct.FsmInst* %0) #0 {
  %2 = alloca %struct.FsmInst*, align 8
  %3 = alloca %struct.layer2*, align 8
  %4 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %2, align 8
  %5 = load %struct.FsmInst*, %struct.FsmInst** %2, align 8
  %6 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %5, i32 0, i32 0
  %7 = load %struct.layer2*, %struct.layer2** %6, align 8
  store %struct.layer2* %7, %struct.layer2** %3, align 8
  %8 = load %struct.layer2*, %struct.layer2** %3, align 8
  %9 = call i32 @clear_exception(%struct.layer2* %8)
  %10 = load %struct.layer2*, %struct.layer2** %3, align 8
  %11 = getelementptr inbounds %struct.layer2, %struct.layer2* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @FLG_MOD128, align 4
  %13 = load %struct.layer2*, %struct.layer2** %3, align 8
  %14 = getelementptr inbounds %struct.layer2, %struct.layer2* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @SABME, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @SABM, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = or i32 %22, 16
  store i32 %23, i32* %4, align 4
  %24 = load %struct.layer2*, %struct.layer2** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CMD, align 4
  %27 = call i32 @send_uframe(%struct.layer2* %24, i32* null, i32 %25, i32 %26)
  %28 = load %struct.layer2*, %struct.layer2** %3, align 8
  %29 = getelementptr inbounds %struct.layer2, %struct.layer2* %28, i32 0, i32 1
  %30 = call i32 @mISDN_FsmDelTimer(i32* %29, i32 1)
  %31 = load %struct.layer2*, %struct.layer2** %3, align 8
  %32 = call i32 @restart_t200(%struct.layer2* %31, i32 1)
  %33 = load i32, i32* @FLG_PEND_REL, align 4
  %34 = load %struct.layer2*, %struct.layer2** %3, align 8
  %35 = getelementptr inbounds %struct.layer2, %struct.layer2* %34, i32 0, i32 0
  %36 = call i32 @test_and_clear_bit(i32 %33, i32* %35)
  %37 = load %struct.layer2*, %struct.layer2** %3, align 8
  %38 = call i32 @freewin(%struct.layer2* %37)
  %39 = load %struct.FsmInst*, %struct.FsmInst** %2, align 8
  %40 = load i32, i32* @ST_L2_5, align 4
  %41 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %39, i32 %40)
  ret void
}

declare dso_local i32 @clear_exception(%struct.layer2*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @send_uframe(%struct.layer2*, i32*, i32, i32) #1

declare dso_local i32 @mISDN_FsmDelTimer(i32*, i32) #1

declare dso_local i32 @restart_t200(%struct.layer2*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @freewin(%struct.layer2*) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
