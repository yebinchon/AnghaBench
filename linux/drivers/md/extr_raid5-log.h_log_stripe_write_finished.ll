; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-log.h_log_stripe_write_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-log.h_log_stripe_write_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { %struct.r5conf* }
%struct.r5conf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @log_stripe_write_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_stripe_write_finished(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.r5conf*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %4 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %5 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %4, i32 0, i32 0
  %6 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  store %struct.r5conf* %6, %struct.r5conf** %3, align 8
  %7 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %8 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %13 = call i32 @r5l_stripe_write_finished(%struct.stripe_head* %12)
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %16 = call i64 @raid5_has_ppl(%struct.r5conf* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %20 = call i32 @ppl_stripe_write_finished(%struct.stripe_head* %19)
  br label %21

21:                                               ; preds = %18, %14
  br label %22

22:                                               ; preds = %21, %11
  ret void
}

declare dso_local i32 @r5l_stripe_write_finished(%struct.stripe_head*) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i32 @ppl_stripe_write_finished(%struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
