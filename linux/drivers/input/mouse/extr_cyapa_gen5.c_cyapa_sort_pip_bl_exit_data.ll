; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_sort_pip_bl_exit_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_sort_pip_bl_exit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }

@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4
@PIP_BL_FAIL_EXIT_RESP_LEN = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_BL_RESP_REPORT_ID = common dso_local global i64 0, align 8
@PIP_RESP_RSVD_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_RSVD_KEY = common dso_local global i64 0, align 8
@PIP_RESP_BL_SOP_OFFSET = common dso_local global i64 0, align 8
@PIP_SOP_KEY = common dso_local global i64 0, align 8
@PIP_EOP_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64*, i32)* @cyapa_sort_pip_bl_exit_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_sort_pip_bl_exit_data(%struct.cyapa* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64*, i64** %6, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  store i32 0, i32* %4, align 4
  br label %59

15:                                               ; preds = %10
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %59

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PIP_BL_FAIL_EXIT_RESP_LEN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PIP_BL_RESP_REPORT_ID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* @PIP_RESP_RSVD_OFFSET, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PIP_RESP_RSVD_KEY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* @PIP_RESP_BL_SOP_OFFSET, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PIP_SOP_KEY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 10
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PIP_EOP_KEY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %59

58:                                               ; preds = %51, %44, %37, %30, %26
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %57, %25, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
