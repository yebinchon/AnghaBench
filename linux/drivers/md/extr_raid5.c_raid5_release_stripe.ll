; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_release_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_release_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i32, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }

@STRIPE_ON_RELEASE_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raid5_release_stripe(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.list_head, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %8 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %9 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %8, i32 0, i32 4
  %10 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  store %struct.r5conf* %10, %struct.r5conf** %3, align 8
  %11 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %12 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %11, i32 0, i32 1
  %13 = call i64 @atomic_add_unless(i32* %12, i32 -1, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @STRIPE_ON_RELEASE_LIST, align 4
  %29 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %30 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %29, i32 0, i32 3
  %31 = call i64 @test_and_set_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %16
  br label %50

34:                                               ; preds = %27
  %35 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 2
  %37 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %38 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %37, i32 0, i32 2
  %39 = call i32 @llist_add(i32* %36, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %44 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @md_wakeup_thread(i32 %47)
  br label %49

49:                                               ; preds = %42, %34
  br label %73

50:                                               ; preds = %33
  %51 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %52 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %51, i32 0, i32 1
  %53 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %54 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %53, i32 0, i32 0
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @atomic_dec_and_lock_irqsave(i32* %52, i32* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %50
  %59 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  %60 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %61 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %6, align 4
  %63 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %64 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %65 = call i32 @do_release_stripe(%struct.r5conf* %63, %struct.stripe_head* %64, %struct.list_head* %5)
  %66 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %67 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %66, i32 0, i32 0
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @release_inactive_stripe_list(%struct.r5conf* %70, %struct.list_head* %5, i32 %71)
  br label %73

73:                                               ; preds = %15, %49, %58, %50
  ret void
}

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @llist_add(i32*, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i64 @atomic_dec_and_lock_irqsave(i32*, i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @do_release_stripe(%struct.r5conf*, %struct.stripe_head*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @release_inactive_stripe_list(%struct.r5conf*, %struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
