; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st8_tout_200.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st8_tout_200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i64, i32, i32, i32 }

@FLG_LAPD = common dso_local global i32 0, align 4
@FLG_DCHAN_BUSY = common dso_local global i32 0, align 4
@EV_L2_T200 = common dso_local global i32 0, align 4
@FLG_T200_RUN = common dso_local global i32 0, align 4
@MDL_ERROR_IND = common dso_local global i32 0, align 4
@FLG_L3_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st8_tout_200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st8_tout_200(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %13 = getelementptr inbounds %struct.layer2, %struct.layer2* %12, i32 0, i32 2
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @FLG_DCHAN_BUSY, align 4
  %18 = load %struct.layer2*, %struct.layer2** %7, align 8
  %19 = getelementptr inbounds %struct.layer2, %struct.layer2* %18, i32 0, i32 2
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.layer2*, %struct.layer2** %7, align 8
  %24 = getelementptr inbounds %struct.layer2, %struct.layer2* %23, i32 0, i32 4
  %25 = load %struct.layer2*, %struct.layer2** %7, align 8
  %26 = getelementptr inbounds %struct.layer2, %struct.layer2* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EV_L2_T200, align 4
  %29 = call i32 @mISDN_FsmAddTimer(i32* %24, i32 %27, i32 %28, i32* null, i32 9)
  br label %59

30:                                               ; preds = %16, %3
  %31 = load i32, i32* @FLG_T200_RUN, align 4
  %32 = load %struct.layer2*, %struct.layer2** %7, align 8
  %33 = getelementptr inbounds %struct.layer2, %struct.layer2* %32, i32 0, i32 2
  %34 = call i32 @test_and_clear_bit(i32 %31, i32* %33)
  %35 = load %struct.layer2*, %struct.layer2** %7, align 8
  %36 = getelementptr inbounds %struct.layer2, %struct.layer2* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.layer2*, %struct.layer2** %7, align 8
  %39 = getelementptr inbounds %struct.layer2, %struct.layer2* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load %struct.layer2*, %struct.layer2** %7, align 8
  %44 = load i32, i32* @MDL_ERROR_IND, align 4
  %45 = call i32 @l2mgr(%struct.layer2* %43, i32 %44, i8* inttoptr (i64 73 to i8*))
  %46 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %47 = call i32 @establishlink(%struct.FsmInst* %46)
  %48 = load i32, i32* @FLG_L3_INIT, align 4
  %49 = load %struct.layer2*, %struct.layer2** %7, align 8
  %50 = getelementptr inbounds %struct.layer2, %struct.layer2* %49, i32 0, i32 2
  %51 = call i32 @test_and_clear_bit(i32 %48, i32* %50)
  br label %59

52:                                               ; preds = %30
  %53 = load %struct.layer2*, %struct.layer2** %7, align 8
  %54 = call i32 @transmit_enquiry(%struct.layer2* %53)
  %55 = load %struct.layer2*, %struct.layer2** %7, align 8
  %56 = getelementptr inbounds %struct.layer2, %struct.layer2* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %22, %52, %42
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @l2mgr(%struct.layer2*, i32, i8*) #1

declare dso_local i32 @establishlink(%struct.FsmInst*) #1

declare dso_local i32 @transmit_enquiry(%struct.layer2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
