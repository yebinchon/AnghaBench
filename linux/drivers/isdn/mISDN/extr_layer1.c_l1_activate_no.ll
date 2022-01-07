; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer1.c_l1_activate_no.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer1.c_l1_activate_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer1* }
%struct.layer1 = type { i32, i32 (i32, i32)*, i32 }

@FLG_L1_DEACTTIMER = common dso_local global i32 0, align 4
@FLG_L1_T3RUN = common dso_local global i32 0, align 4
@FLG_L1_ACTIVATING = common dso_local global i32 0, align 4
@FLG_L1_DBLOCKED = common dso_local global i32 0, align 4
@HW_D_NOBLOCKED = common dso_local global i32 0, align 4
@PH_DEACTIVATE_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l1_activate_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l1_activate_no(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer1*, align 8
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %9 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %8, i32 0, i32 0
  %10 = load %struct.layer1*, %struct.layer1** %9, align 8
  store %struct.layer1* %10, %struct.layer1** %7, align 8
  %11 = load i32, i32* @FLG_L1_DEACTTIMER, align 4
  %12 = load %struct.layer1*, %struct.layer1** %7, align 8
  %13 = getelementptr inbounds %struct.layer1, %struct.layer1* %12, i32 0, i32 2
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @FLG_L1_T3RUN, align 4
  %18 = load %struct.layer1*, %struct.layer1** %7, align 8
  %19 = getelementptr inbounds %struct.layer1, %struct.layer1* %18, i32 0, i32 2
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @FLG_L1_ACTIVATING, align 4
  %24 = load %struct.layer1*, %struct.layer1** %7, align 8
  %25 = getelementptr inbounds %struct.layer1, %struct.layer1* %24, i32 0, i32 2
  %26 = call i64 @test_and_clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @FLG_L1_DBLOCKED, align 4
  %28 = load %struct.layer1*, %struct.layer1** %7, align 8
  %29 = getelementptr inbounds %struct.layer1, %struct.layer1* %28, i32 0, i32 2
  %30 = call i64 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.layer1*, %struct.layer1** %7, align 8
  %34 = getelementptr inbounds %struct.layer1, %struct.layer1* %33, i32 0, i32 1
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.layer1*, %struct.layer1** %7, align 8
  %37 = getelementptr inbounds %struct.layer1, %struct.layer1* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HW_D_NOBLOCKED, align 4
  %40 = call i32 %35(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %22
  %42 = load %struct.layer1*, %struct.layer1** %7, align 8
  %43 = getelementptr inbounds %struct.layer1, %struct.layer1* %42, i32 0, i32 1
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.layer1*, %struct.layer1** %7, align 8
  %46 = getelementptr inbounds %struct.layer1, %struct.layer1* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PH_DEACTIVATE_IND, align 4
  %49 = call i32 %44(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %16, %3
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
