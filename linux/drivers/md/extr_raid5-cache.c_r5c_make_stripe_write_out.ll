; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_make_stripe_write_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_make_stripe_write_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.r5conf* }
%struct.r5conf = type { i32, %struct.r5l_log* }
%struct.r5l_log = type { i32 }

@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r5c_make_stripe_write_out(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.r5l_log*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %5 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %6 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %5, i32 0, i32 1
  %7 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  store %struct.r5conf* %7, %struct.r5conf** %3, align 8
  %8 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %9 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %8, i32 0, i32 1
  %10 = load %struct.r5l_log*, %struct.r5l_log** %9, align 8
  store %struct.r5l_log* %10, %struct.r5l_log** %4, align 8
  %11 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %12 = call i32 @r5c_is_writeback(%struct.r5l_log* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %18 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %19 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %26 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %27 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %30 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 0
  %32 = call i32 @test_and_set_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @r5c_is_writeback(%struct.r5l_log*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
