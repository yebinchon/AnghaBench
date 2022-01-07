; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_recovery_alloc_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_recovery_alloc_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32 }
%struct.r5conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stripe_head* (%struct.r5conf*, i32, i32)* @r5c_recovery_alloc_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stripe_head* @r5c_recovery_alloc_stripe(%struct.r5conf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stripe_head*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %9, i32 %10, i32 0, i32 %11, i32 0)
  store %struct.stripe_head* %12, %struct.stripe_head** %8, align 8
  %13 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %14 = icmp ne %struct.stripe_head* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.stripe_head* null, %struct.stripe_head** %4, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %18 = call i32 @r5l_recovery_reset_stripe(%struct.stripe_head* %17)
  %19 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  store %struct.stripe_head* %19, %struct.stripe_head** %4, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  ret %struct.stripe_head* %21
}

declare dso_local %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i32 @r5l_recovery_reset_stripe(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
