; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.c_iowait_priority_update_top.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.c_iowait_priority_update_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowait = type { i32, i64 }

@IOWAIT_PRIORITY_STARVE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iowait_priority_update_top(%struct.iowait* %0, %struct.iowait* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iowait*, align 8
  %7 = alloca %struct.iowait*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.iowait* %0, %struct.iowait** %6, align 8
  store %struct.iowait* %1, %struct.iowait** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iowait*, %struct.iowait** %6, align 8
  %13 = getelementptr inbounds %struct.iowait, %struct.iowait* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IOWAIT_PRIORITY_STARVE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = load %struct.iowait*, %struct.iowait** %6, align 8
  %19 = getelementptr inbounds %struct.iowait, %struct.iowait* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %10, align 8
  %22 = load %struct.iowait*, %struct.iowait** %7, align 8
  %23 = getelementptr inbounds %struct.iowait, %struct.iowait* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IOWAIT_PRIORITY_STARVE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load %struct.iowait*, %struct.iowait** %7, align 8
  %29 = getelementptr inbounds %struct.iowait, %struct.iowait* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
