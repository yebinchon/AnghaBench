; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_flush_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_flush_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, i32 }
%struct.stripe_head = type { i32, i32, i32 }

@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_ON_RELEASE_LIST = common dso_local global i32 0, align 4
@STRIPE_R5C_PARTIAL_STRIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*)* @r5c_flush_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5c_flush_stripe(%struct.r5conf* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %4, align 8
  %5 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %6 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %5, i32 0, i32 2
  %7 = call i32 @list_empty(i32* %6)
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %10 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %11 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @STRIPE_HANDLE, align 4
  %18 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %19 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* @STRIPE_ON_RELEASE_LIST, align 4
  %23 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %24 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 3
  %29 = call i32 @lockdep_assert_held(i32* %28)
  %30 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 2
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 1
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load i32, i32* @STRIPE_HANDLE, align 4
  %37 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %38 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %41 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %40, i32 0, i32 2
  %42 = call i32 @atomic_inc(i32* %41)
  %43 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %44 = call i32 @r5c_make_stripe_write_out(%struct.stripe_head* %43)
  %45 = load i32, i32* @STRIPE_R5C_PARTIAL_STRIPE, align 4
  %46 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %47 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %46, i32 0, i32 0
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %2
  %51 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %52 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %51, i32 0, i32 1
  %53 = call i32 @atomic_inc(i32* %52)
  br label %58

54:                                               ; preds = %2
  %55 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %56 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %55, i32 0, i32 0
  %57 = call i32 @atomic_inc(i32* %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %60 = call i32 @raid5_release_stripe(%struct.stripe_head* %59)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @r5c_make_stripe_write_out(%struct.stripe_head*) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
