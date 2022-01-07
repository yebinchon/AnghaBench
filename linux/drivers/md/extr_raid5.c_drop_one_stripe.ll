; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_drop_one_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_drop_one_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, i64 }
%struct.stripe_head = type { i32 }

@STRIPE_HASH_LOCKS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*)* @drop_one_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_one_stripe(%struct.r5conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  %6 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %7 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @STRIPE_HASH_LOCKS_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %13 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @spin_lock_irq(i64 %17)
  %19 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.stripe_head* @get_free_stripe(%struct.r5conf* %19, i32 %20)
  store %struct.stripe_head* %21, %struct.stripe_head** %4, align 8
  %22 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %23 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @spin_unlock_irq(i64 %27)
  %29 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %30 = icmp ne %struct.stripe_head* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

32:                                               ; preds = %1
  %33 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 0
  %35 = call i32 @atomic_read(i32* %34)
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %38 = call i32 @shrink_buffers(%struct.stripe_head* %37)
  %39 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %43 = call i32 @free_stripe(i32 %41, %struct.stripe_head* %42)
  %44 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %45 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %44, i32 0, i32 1
  %46 = call i32 @atomic_dec(i32* %45)
  %47 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %48 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %32, %31
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irq(i64) #1

declare dso_local %struct.stripe_head* @get_free_stripe(%struct.r5conf*, i32) #1

declare dso_local i32 @spin_unlock_irq(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @shrink_buffers(%struct.stripe_head*) #1

declare dso_local i32 @free_stripe(i32, %struct.stripe_head*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
