; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_write_adapter_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_write_adapter_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_wr_wait = type { i32 }

@use_dsgl = common dso_local global i32 0, align 4
@inline_threshold = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"%s: dma map failure (non fatal)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, i64, i64, i8*, %struct.sk_buff*, %struct.c4iw_wr_wait*)* @write_adapter_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_adapter_mem(%struct.c4iw_rdev* %0, i64 %1, i64 %2, i8* %3, %struct.sk_buff* %4, %struct.c4iw_wr_wait* %5) #0 {
  %7 = alloca %struct.c4iw_rdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.c4iw_wr_wait*, align 8
  %13 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  store %struct.c4iw_wr_wait* %5, %struct.c4iw_wr_wait** %12, align 8
  %14 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %15 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @use_dsgl, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19, %6
  %23 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %28 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %12, align 8
  %29 = call i32 @_c4iw_write_mem_inline(%struct.c4iw_rdev* %23, i64 %24, i64 %25, i8* %26, %struct.sk_buff* %27, %struct.c4iw_wr_wait* %28)
  store i32 %29, i32* %13, align 4
  br label %67

30:                                               ; preds = %19
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @inline_threshold, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %12, align 8
  %41 = call i32 @_c4iw_write_mem_inline(%struct.c4iw_rdev* %35, i64 %36, i64 %37, i8* %38, %struct.sk_buff* %39, %struct.c4iw_wr_wait* %40)
  store i32 %41, i32* %13, align 4
  br label %67

42:                                               ; preds = %30
  %43 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %12, align 8
  %49 = call i32 @_c4iw_write_mem_dma(%struct.c4iw_rdev* %43, i64 %44, i64 %45, i8* %46, %struct.sk_buff* %47, %struct.c4iw_wr_wait* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %54 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pci_name(i32 %56)
  %58 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %12, align 8
  %65 = call i32 @_c4iw_write_mem_inline(%struct.c4iw_rdev* %59, i64 %60, i64 %61, i8* %62, %struct.sk_buff* %63, %struct.c4iw_wr_wait* %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %52, %42
  br label %67

67:                                               ; preds = %66, %34, %22
  %68 = load i32, i32* %13, align 4
  ret i32 %68
}

declare dso_local i32 @_c4iw_write_mem_inline(%struct.c4iw_rdev*, i64, i64, i8*, %struct.sk_buff*, %struct.c4iw_wr_wait*) #1

declare dso_local i32 @_c4iw_write_mem_dma(%struct.c4iw_rdev*, i64, i64, i8*, %struct.sk_buff*, %struct.c4iw_wr_wait*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
