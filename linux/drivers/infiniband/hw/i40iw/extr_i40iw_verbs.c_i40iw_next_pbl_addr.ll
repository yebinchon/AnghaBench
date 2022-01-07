; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_next_pbl_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_next_pbl_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_pble_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.i40iw_pble_info**, i64*)* @i40iw_next_pbl_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @i40iw_next_pbl_addr(i32* %0, %struct.i40iw_pble_info** %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i40iw_pble_info**, align 8
  %7 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.i40iw_pble_info** %1, %struct.i40iw_pble_info*** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.i40iw_pble_info**, %struct.i40iw_pble_info*** %6, align 8
  %12 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %11, align 8
  %13 = icmp ne %struct.i40iw_pble_info* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.i40iw_pble_info**, %struct.i40iw_pble_info*** %6, align 8
  %18 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %17, align 8
  %19 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %16, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14, %3
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  store i32* %24, i32** %4, align 8
  br label %35

25:                                               ; preds = %14
  %26 = load i64*, i64** %7, align 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.i40iw_pble_info**, %struct.i40iw_pble_info*** %6, align 8
  %28 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %27, align 8
  %29 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %28, i32 1
  store %struct.i40iw_pble_info* %29, %struct.i40iw_pble_info** %27, align 8
  %30 = load %struct.i40iw_pble_info**, %struct.i40iw_pble_info*** %6, align 8
  %31 = load %struct.i40iw_pble_info*, %struct.i40iw_pble_info** %30, align 8
  %32 = getelementptr inbounds %struct.i40iw_pble_info, %struct.i40iw_pble_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %4, align 8
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i32*, i32** %4, align 8
  ret i32* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
