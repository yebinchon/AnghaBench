; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_recovery_load_one_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_recovery_load_one_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32 }
%struct.stripe_head = type { i32, %struct.r5dev* }
%struct.r5dev = type { i32 }

@R5_Wantwrite = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, %struct.stripe_head*)* @r5c_recovery_load_one_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5c_recovery_load_one_stripe(%struct.r5l_log* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca %struct.r5dev*, align 8
  %6 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %4, align 8
  %7 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %8 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %16 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %15, i32 0, i32 1
  %17 = load %struct.r5dev*, %struct.r5dev** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %17, i64 %19
  store %struct.r5dev* %20, %struct.r5dev** %5, align 8
  %21 = load i32, i32* @R5_Wantwrite, align 4
  %22 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %23 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %22, i32 0, i32 0
  %24 = call i64 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load i32, i32* @R5_InJournal, align 4
  %28 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %29 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load i32, i32* @R5_UPTODATE, align 4
  %32 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %33 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %26, %14
  br label %10

36:                                               ; preds = %10
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
