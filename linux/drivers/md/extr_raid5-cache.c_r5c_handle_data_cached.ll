; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_handle_data_cached.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_handle_data_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@R5_Wantwrite = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@STRIPE_LOG_TRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @r5c_handle_data_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5c_handle_data_cached(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %4 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %5 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load i32, i32* @R5_Wantwrite, align 4
  %13 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %14 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i64 @test_and_clear_bit(i32 %12, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %11
  %23 = load i32, i32* @R5_InJournal, align 4
  %24 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %25 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %23, i32* %30)
  %32 = load i32, i32* @R5_LOCKED, align 4
  %33 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %32, i32* %39)
  br label %41

41:                                               ; preds = %22, %11
  br label %7

42:                                               ; preds = %7
  %43 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %44 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %45 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %44, i32 0, i32 1
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
