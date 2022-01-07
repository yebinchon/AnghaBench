; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_stripe_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_stripe_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.r5conf = type { %struct.hlist_head* }

@STRIPE_SHIFT = common dso_local global i32 0, align 4
@HASH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.r5conf*, i32)* @stripe_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @stripe_hash(%struct.r5conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @STRIPE_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @HASH_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %12 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %11, i32 0, i32 0
  %13 = load %struct.hlist_head*, %struct.hlist_head** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %13, i64 %15
  ret %struct.hlist_head* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
