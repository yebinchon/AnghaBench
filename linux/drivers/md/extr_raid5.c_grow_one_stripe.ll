; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_grow_one_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_grow_one_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, i32 }
%struct.stripe_head = type { i32 }

@NR_STRIPE_HASH_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, i32)* @grow_one_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_one_stripe(%struct.r5conf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stripe_head*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %8 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %12 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %15 = call %struct.stripe_head* @alloc_stripe(i32 %9, i32 %10, i32 %13, %struct.r5conf* %14)
  store %struct.stripe_head* %15, %struct.stripe_head** %6, align 8
  %16 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %17 = icmp ne %struct.stripe_head* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @grow_buffers(%struct.stripe_head* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %26 = call i32 @shrink_buffers(%struct.stripe_head* %25)
  %27 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %31 = call i32 @free_stripe(i32 %29, %struct.stripe_head* %30)
  store i32 0, i32* %3, align 4
  br label %49

32:                                               ; preds = %19
  %33 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %34 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NR_STRIPE_HASH_LOCKS, align 4
  %37 = srem i32 %35, %36
  %38 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %39 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %41 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %40, i32 0, i32 1
  %42 = call i32 @atomic_inc(i32* %41)
  %43 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %44 = call i32 @raid5_release_stripe(%struct.stripe_head* %43)
  %45 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %46 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %24, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.stripe_head* @alloc_stripe(i32, i32, i32, %struct.r5conf*) #1

declare dso_local i64 @grow_buffers(%struct.stripe_head*, i32) #1

declare dso_local i32 @shrink_buffers(%struct.stripe_head*) #1

declare dso_local i32 @free_stripe(i32, %struct.stripe_head*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
