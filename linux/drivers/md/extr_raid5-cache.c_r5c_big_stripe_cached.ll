; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_big_stripe_cached.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_big_stripe_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { %struct.r5l_log* }
%struct.r5l_log = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r5c_big_stripe_cached(%struct.r5conf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r5l_log*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %10 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %9, i32 0, i32 0
  %11 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  store %struct.r5l_log* %11, %struct.r5l_log** %6, align 8
  %12 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %13 = icmp ne %struct.r5l_log* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = call i32 (...) @rcu_read_lock_held()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @r5c_tree_index(%struct.r5conf* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %25 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @radix_tree_lookup(i32* %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local i32 @r5c_tree_index(%struct.r5conf*, i32) #1

declare dso_local i8* @radix_tree_lookup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
