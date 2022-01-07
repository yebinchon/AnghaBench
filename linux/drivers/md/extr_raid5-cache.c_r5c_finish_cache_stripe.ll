; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_finish_cache_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_finish_cache_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i64, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.r5l_log* }
%struct.r5l_log = type { i64 }

@R5C_JOURNAL_MODE_WRITE_THROUGH = common dso_local global i64 0, align 8
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @r5c_finish_cache_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5c_finish_cache_stripe(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.r5l_log*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %4 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %5 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  store %struct.r5l_log* %8, %struct.r5l_log** %3, align 8
  %9 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %10 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @R5C_JOURNAL_MODE_WRITE_THROUGH, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %16 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %17 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %16, i32 0, i32 2
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = call i32 @BUG_ON(i64 %18)
  %20 = load i32, i32* @R5_InJournal, align 4
  %21 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %22 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %25 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %20, i32* %28)
  br label %53

30:                                               ; preds = %1
  %31 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %32 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %33 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %32, i32 0, i32 2
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %38 = call i32 @r5c_handle_data_cached(%struct.stripe_head* %37)
  br label %52

39:                                               ; preds = %30
  %40 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %41 = call i32 @r5c_handle_parity_cached(%struct.stripe_head* %40)
  %42 = load i32, i32* @R5_InJournal, align 4
  %43 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %44 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %47 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @set_bit(i32 %42, i32* %50)
  br label %52

52:                                               ; preds = %39, %36
  br label %53

53:                                               ; preds = %52, %14
  ret void
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @r5c_handle_data_cached(%struct.stripe_head*) #1

declare dso_local i32 @r5c_handle_parity_cached(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
