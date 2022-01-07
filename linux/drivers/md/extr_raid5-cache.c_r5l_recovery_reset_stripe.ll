; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_reset_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_reset_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @r5l_recovery_reset_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_recovery_reset_stripe(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %4 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %5 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %4, i32 0, i32 3
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @MaxSector, align 4
  %7 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %8 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  %9 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %10 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %16, %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %12

24:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
