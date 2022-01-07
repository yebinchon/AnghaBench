; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_hw_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_pio.c_sc_hw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i64*, %struct.send_context_info* }
%struct.send_context_info = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Unable to locate a free type %d send context\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32, i64*, i64*)* @sc_hw_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_hw_alloc(%struct.hfi1_devdata* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.send_context_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 2
  %15 = load %struct.send_context_info*, %struct.send_context_info** %14, align 8
  %16 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %15, i64 0
  store %struct.send_context_info* %16, %struct.send_context_info** %10, align 8
  br label %17

17:                                               ; preds = %53, %4
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load %struct.send_context_info*, %struct.send_context_info** %10, align 8
  %25 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.send_context_info*, %struct.send_context_info** %10, align 8
  %31 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.send_context_info*, %struct.send_context_info** %10, align 8
  %36 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %38 = call i64 @chip_send_contexts(%struct.hfi1_devdata* %37)
  %39 = load i64, i64* %11, align 8
  %40 = sub nsw i64 %38, %39
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %42, i64* %47, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64*, i64** %8, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %5, align 4
  br label %64

52:                                               ; preds = %29, %23
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  %56 = load %struct.send_context_info*, %struct.send_context_info** %10, align 8
  %57 = getelementptr inbounds %struct.send_context_info, %struct.send_context_info* %56, i32 1
  store %struct.send_context_info* %57, %struct.send_context_info** %10, align 8
  br label %17

58:                                               ; preds = %17
  %59 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dd_dev_err(%struct.hfi1_devdata* %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENOSPC, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %34
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @chip_send_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
