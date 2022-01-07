; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-log.h_log_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-log.h_log_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, i32)* @log_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_quiesce(%struct.r5conf* %0, i32 %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %6 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %11 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @r5l_quiesce(i64 %12, i32 %13)
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %17 = call i64 @raid5_has_ppl(%struct.r5conf* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ppl_quiesce(%struct.r5conf* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %9
  ret void
}

declare dso_local i32 @r5l_quiesce(i64, i32) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i32 @ppl_quiesce(%struct.r5conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
