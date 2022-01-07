; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.h_iowait_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.h_iowait_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowait = type { i64, i32, i64 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.iowait*, %struct.list_head*)* @iowait_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iowait_queue(i32 %0, %struct.iowait* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iowait*, align 8
  %6 = alloca %struct.list_head*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.iowait* %1, %struct.iowait** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.iowait*, %struct.iowait** %5, align 8
  %11 = getelementptr inbounds %struct.iowait, %struct.iowait* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  br label %17

12:                                               ; preds = %3
  %13 = load %struct.iowait*, %struct.iowait** %5, align 8
  %14 = getelementptr inbounds %struct.iowait, %struct.iowait* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %12, %9
  %18 = load %struct.iowait*, %struct.iowait** %5, align 8
  %19 = getelementptr inbounds %struct.iowait, %struct.iowait* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.iowait*, %struct.iowait** %5, align 8
  %27 = getelementptr inbounds %struct.iowait, %struct.iowait* %26, i32 0, i32 1
  %28 = load %struct.list_head*, %struct.list_head** %6, align 8
  %29 = call i32 @list_add(i32* %27, %struct.list_head* %28)
  br label %35

30:                                               ; preds = %22
  %31 = load %struct.iowait*, %struct.iowait** %5, align 8
  %32 = getelementptr inbounds %struct.iowait, %struct.iowait* %31, i32 0, i32 1
  %33 = load %struct.list_head*, %struct.list_head** %6, align 8
  %34 = call i32 @list_add_tail(i32* %32, %struct.list_head* %33)
  br label %35

35:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
