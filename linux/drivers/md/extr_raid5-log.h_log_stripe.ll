; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-log.h_log_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-log.h_log_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.r5conf* }
%struct.r5conf = type { i64 }
%struct.stripe_head_state = type { i64 }

@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@STRIPE_LOG_TRAPPED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_head*, %struct.stripe_head_state*)* @log_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_stripe(%struct.stripe_head* %0, %struct.stripe_head_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca %struct.stripe_head_state*, align 8
  %6 = alloca %struct.r5conf*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %4, align 8
  store %struct.stripe_head_state* %1, %struct.stripe_head_state** %5, align 8
  %7 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %8 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %7, i32 0, i32 1
  %9 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  store %struct.r5conf* %9, %struct.r5conf** %6, align 8
  %10 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %11 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %16 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %17 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.stripe_head_state*, %struct.stripe_head_state** %5, align 8
  %22 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %58

26:                                               ; preds = %20
  %27 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %31 = call i32 @r5l_write_stripe(i64 %29, %struct.stripe_head* %30)
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %14
  %33 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %34 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %35 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %34, i32 0, i32 0
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %43 = call i32 @r5c_cache_data(i64 %41, %struct.stripe_head* %42)
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  br label %55

46:                                               ; preds = %2
  %47 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %48 = call i64 @raid5_has_ppl(%struct.r5conf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %52 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %53 = call i32 @ppl_write_stripe(%struct.r5conf* %51, %struct.stripe_head* %52)
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %50, %38, %26, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r5l_write_stripe(i64, %struct.stripe_head*) #1

declare dso_local i32 @r5c_cache_data(i64, %struct.stripe_head*) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i32 @ppl_write_stripe(%struct.r5conf*, %struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
