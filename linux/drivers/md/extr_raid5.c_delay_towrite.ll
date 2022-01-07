; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_delay_towrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_delay_towrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32 }
%struct.r5dev = type { i32 }
%struct.stripe_head_state = type { i64, i64 }

@R5_OVERWRITE = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@R5C_LOG_CRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, %struct.r5dev*, %struct.stripe_head_state*)* @delay_towrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_towrite(%struct.r5conf* %0, %struct.r5dev* %1, %struct.stripe_head_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca %struct.r5dev*, align 8
  %7 = alloca %struct.stripe_head_state*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %5, align 8
  store %struct.r5dev* %1, %struct.r5dev** %6, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %7, align 8
  %8 = load i32, i32* @R5_OVERWRITE, align 4
  %9 = load %struct.r5dev*, %struct.r5dev** %6, align 8
  %10 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @R5_Insync, align 4
  %15 = load %struct.r5dev*, %struct.r5dev** %6, align 8
  %16 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %21 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %49

25:                                               ; preds = %19, %13, %3
  %26 = load i32, i32* @R5C_LOG_CRITICAL, align 4
  %27 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %33 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %49

37:                                               ; preds = %31, %25
  %38 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %39 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.stripe_head_state*, %struct.stripe_head_state** %7, align 8
  %44 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %49

48:                                               ; preds = %42, %37
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47, %36, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
