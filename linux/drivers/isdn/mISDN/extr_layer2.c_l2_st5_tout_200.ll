; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st5_tout_200.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st5_tout_200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i64, i64, i32, i32, i32, i64, i32 }

@FLG_LAPD = common dso_local global i32 0, align 4
@FLG_DCHAN_BUSY = common dso_local global i32 0, align 4
@EV_L2_T200 = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@FLG_T200_RUN = common dso_local global i32 0, align 4
@MDL_ERROR_IND = common dso_local global i32 0, align 4
@FLG_LAPB = common dso_local global i32 0, align 4
@PH_DEACTIVATE_REQ = common dso_local global i32 0, align 4
@MDL_STATUS_DOWN_IND = common dso_local global i32 0, align 4
@FLG_MOD128 = common dso_local global i32 0, align 4
@SABME = common dso_local global i32 0, align 4
@SABM = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st5_tout_200 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st5_tout_200(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  br label %103

30:                                               ; preds = %16, %3
  %31 = load %struct.layer2*, %struct.layer2** %7, align 8
  %32 = getelementptr inbounds %struct.layer2, %struct.layer2* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.layer2*, %struct.layer2** %7, align 8
  %35 = getelementptr inbounds %struct.layer2, %struct.layer2* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %30
  %39 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %40 = load i32, i32* @ST_L2_4, align 4
  %41 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %39, i32 %40)
  %42 = load i32, i32* @FLG_T200_RUN, align 4
  %43 = load %struct.layer2*, %struct.layer2** %7, align 8
  %44 = getelementptr inbounds %struct.layer2, %struct.layer2* %43, i32 0, i32 2
  %45 = call i32 @test_and_clear_bit(i32 %42, i32* %44)
  %46 = load %struct.layer2*, %struct.layer2** %7, align 8
  %47 = getelementptr inbounds %struct.layer2, %struct.layer2* %46, i32 0, i32 6
  %48 = call i32 @skb_queue_purge(i32* %47)
  %49 = load %struct.layer2*, %struct.layer2** %7, align 8
  %50 = load i32, i32* @MDL_ERROR_IND, align 4
  %51 = call i32 @l2mgr(%struct.layer2* %49, i32 %50, i8* inttoptr (i64 71 to i8*))
  %52 = load i32, i32* @FLG_LAPB, align 4
  %53 = load %struct.layer2*, %struct.layer2** %7, align 8
  %54 = getelementptr inbounds %struct.layer2, %struct.layer2* %53, i32 0, i32 2
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %38
  %58 = load %struct.layer2*, %struct.layer2** %7, align 8
  %59 = load i32, i32* @PH_DEACTIVATE_REQ, align 4
  %60 = load %struct.layer2*, %struct.layer2** %7, align 8
  %61 = call i32 @l2_newid(%struct.layer2* %60)
  %62 = call i32 @l2down_create(%struct.layer2* %58, i32 %59, i32 %61, i32 0, i32* null)
  br label %63

63:                                               ; preds = %57, %38
  %64 = load %struct.layer2*, %struct.layer2** %7, align 8
  %65 = call i32 @st5_dl_release_l2l3(%struct.layer2* %64)
  %66 = load %struct.layer2*, %struct.layer2** %7, align 8
  %67 = getelementptr inbounds %struct.layer2, %struct.layer2* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.layer2*, %struct.layer2** %7, align 8
  %72 = load i32, i32* @MDL_STATUS_DOWN_IND, align 4
  %73 = call i32 @l2_tei(%struct.layer2* %71, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %70, %63
  br label %102

75:                                               ; preds = %30
  %76 = load %struct.layer2*, %struct.layer2** %7, align 8
  %77 = getelementptr inbounds %struct.layer2, %struct.layer2* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.layer2*, %struct.layer2** %7, align 8
  %81 = getelementptr inbounds %struct.layer2, %struct.layer2* %80, i32 0, i32 4
  %82 = load %struct.layer2*, %struct.layer2** %7, align 8
  %83 = getelementptr inbounds %struct.layer2, %struct.layer2* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EV_L2_T200, align 4
  %86 = call i32 @mISDN_FsmAddTimer(i32* %81, i32 %84, i32 %85, i32* null, i32 9)
  %87 = load %struct.layer2*, %struct.layer2** %7, align 8
  %88 = load i32, i32* @FLG_MOD128, align 4
  %89 = load %struct.layer2*, %struct.layer2** %7, align 8
  %90 = getelementptr inbounds %struct.layer2, %struct.layer2* %89, i32 0, i32 2
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %75
  %94 = load i32, i32* @SABME, align 4
  br label %97

95:                                               ; preds = %75
  %96 = load i32, i32* @SABM, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = or i32 %98, 16
  %100 = load i32, i32* @CMD, align 4
  %101 = call i32 @send_uframe(%struct.layer2* %87, i32* null, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %74
  br label %103

103:                                              ; preds = %102, %22
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @l2mgr(%struct.layer2*, i32, i8*) #1

declare dso_local i32 @l2down_create(%struct.layer2*, i32, i32, i32, i32*) #1

declare dso_local i32 @l2_newid(%struct.layer2*) #1

declare dso_local i32 @st5_dl_release_l2l3(%struct.layer2*) #1

declare dso_local i32 @l2_tei(%struct.layer2*, i32, i32) #1

declare dso_local i32 @send_uframe(%struct.layer2*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
