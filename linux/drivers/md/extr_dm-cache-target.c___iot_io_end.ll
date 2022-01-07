; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c___iot_io_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c___iot_io_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_tracker = type { i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_tracker*, i64)* @__iot_io_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iot_io_end(%struct.io_tracker* %0, i64 %1) #0 {
  %3 = alloca %struct.io_tracker*, align 8
  %4 = alloca i64, align 8
  store %struct.io_tracker* %0, %struct.io_tracker** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %22

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.io_tracker*, %struct.io_tracker** %3, align 8
  %11 = getelementptr inbounds %struct.io_tracker, %struct.io_tracker* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %12, %9
  store i64 %13, i64* %11, align 8
  %14 = load %struct.io_tracker*, %struct.io_tracker** %3, align 8
  %15 = getelementptr inbounds %struct.io_tracker, %struct.io_tracker* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %8
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.io_tracker*, %struct.io_tracker** %3, align 8
  %21 = getelementptr inbounds %struct.io_tracker, %struct.io_tracker* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %7, %18, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
