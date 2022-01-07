; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-log.h_log_handle_flush_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-log.h_log_handle_flush_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i64 }
%struct.bio = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, %struct.bio*)* @log_handle_flush_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_handle_flush_request(%struct.r5conf* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %9 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %14 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = call i32 @r5l_handle_flush_request(i64 %15, %struct.bio* %16)
  store i32 %17, i32* %5, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %20 = call i64 @raid5_has_ppl(%struct.r5conf* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %24 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = call i32 @ppl_handle_flush_request(i64 %25, %struct.bio* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @r5l_handle_flush_request(i64, %struct.bio*) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i32 @ppl_handle_flush_request(i64, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
