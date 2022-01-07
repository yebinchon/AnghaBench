; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_ensure_next_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_ensure_next_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pool*)* @ensure_next_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_next_mapping(%struct.pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pool*, align 8
  store %struct.pool* %0, %struct.pool** %3, align 8
  %4 = load %struct.pool*, %struct.pool** %3, align 8
  %5 = getelementptr inbounds %struct.pool, %struct.pool* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.pool*, %struct.pool** %3, align 8
  %11 = getelementptr inbounds %struct.pool, %struct.pool* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call i64 @mempool_alloc(i32* %11, i32 %12)
  %14 = load %struct.pool*, %struct.pool** %3, align 8
  %15 = getelementptr inbounds %struct.pool, %struct.pool* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.pool*, %struct.pool** %3, align 8
  %17 = getelementptr inbounds %struct.pool, %struct.pool* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %24

21:                                               ; preds = %9
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @mempool_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
