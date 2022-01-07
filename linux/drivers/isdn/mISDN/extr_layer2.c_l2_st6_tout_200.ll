; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st6_tout_200.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st6_tout_200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i64, i32, i32, i64, i32 }

@FLG_LAPD = common dso_local global i32 0, align 4
@FLG_DCHAN_BUSY = common dso_local global i32 0, align 4
@EV_L2_T200 = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@FLG_T200_RUN = common dso_local global i32 0, align 4
@MDL_ERROR_IND = common dso_local global i32 0, align 4
@DL_RELEASE_CNF = common dso_local global i32 0, align 4
@MDL_STATUS_DOWN_IND = common dso_local global i32 0, align 4
@DISC = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st6_tout_200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st6_tout_200(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %13 = getelementptr inbounds %struct.layer2, %struct.layer2* %12, i32 0, i32 5
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @FLG_DCHAN_BUSY, align 4
  %18 = load %struct.layer2*, %struct.layer2** %7, align 8
  %19 = getelementptr inbounds %struct.layer2, %struct.layer2* %18, i32 0, i32 5
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.layer2*, %struct.layer2** %7, align 8
  %24 = getelementptr inbounds %struct.layer2, %struct.layer2* %23, i32 0, i32 3
  %25 = load %struct.layer2*, %struct.layer2** %7, align 8
  %26 = getelementptr inbounds %struct.layer2, %struct.layer2* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EV_L2_T200, align 4
  %29 = call i32 @mISDN_FsmAddTimer(i32* %24, i32 %27, i32 %28, i32* null, i32 9)
  br label %79

30:                                               ; preds = %16, %3
  %31 = load %struct.layer2*, %struct.layer2** %7, align 8
  %32 = getelementptr inbounds %struct.layer2, %struct.layer2* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.layer2*, %struct.layer2** %7, align 8
  %35 = getelementptr inbounds %struct.layer2, %struct.layer2* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %30
  %39 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %40 = load i32, i32* @ST_L2_4, align 4
  %41 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %39, i32 %40)
  %42 = load i32, i32* @FLG_T200_RUN, align 4
  %43 = load %struct.layer2*, %struct.layer2** %7, align 8
  %44 = getelementptr inbounds %struct.layer2, %struct.layer2* %43, i32 0, i32 5
  %45 = call i32 @test_and_clear_bit(i32 %42, i32* %44)
  %46 = load %struct.layer2*, %struct.layer2** %7, align 8
  %47 = load i32, i32* @MDL_ERROR_IND, align 4
  %48 = call i32 @l2mgr(%struct.layer2* %46, i32 %47, i8* inttoptr (i64 72 to i8*))
  %49 = load %struct.layer2*, %struct.layer2** %7, align 8
  %50 = load i32, i32* @DL_RELEASE_CNF, align 4
  %51 = call i32 @lapb_dl_release_l2l3(%struct.layer2* %49, i32 %50)
  %52 = load %struct.layer2*, %struct.layer2** %7, align 8
  %53 = getelementptr inbounds %struct.layer2, %struct.layer2* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load %struct.layer2*, %struct.layer2** %7, align 8
  %58 = load i32, i32* @MDL_STATUS_DOWN_IND, align 4
  %59 = call i32 @l2_tei(%struct.layer2* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %38
  br label %78

61:                                               ; preds = %30
  %62 = load %struct.layer2*, %struct.layer2** %7, align 8
  %63 = getelementptr inbounds %struct.layer2, %struct.layer2* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.layer2*, %struct.layer2** %7, align 8
  %67 = getelementptr inbounds %struct.layer2, %struct.layer2* %66, i32 0, i32 3
  %68 = load %struct.layer2*, %struct.layer2** %7, align 8
  %69 = getelementptr inbounds %struct.layer2, %struct.layer2* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @EV_L2_T200, align 4
  %72 = call i32 @mISDN_FsmAddTimer(i32* %67, i32 %70, i32 %71, i32* null, i32 9)
  %73 = load %struct.layer2*, %struct.layer2** %7, align 8
  %74 = load i32, i32* @DISC, align 4
  %75 = or i32 %74, 16
  %76 = load i32, i32* @CMD, align 4
  %77 = call i32 @send_uframe(%struct.layer2* %73, i32* null, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %61, %60
  br label %79

79:                                               ; preds = %78, %22
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @l2mgr(%struct.layer2*, i32, i8*) #1

declare dso_local i32 @lapb_dl_release_l2l3(%struct.layer2*, i32) #1

declare dso_local i32 @l2_tei(%struct.layer2*, i32, i32) #1

declare dso_local i32 @send_uframe(%struct.layer2*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
