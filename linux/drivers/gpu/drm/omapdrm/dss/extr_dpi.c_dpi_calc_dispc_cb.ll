; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_calc_dispc_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_calc_dispc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_clk_calc_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64, i8*)* @dpi_calc_dispc_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_calc_dispc_cb(i32 %0, i32 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dpi_clk_calc_ctx*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = bitcast i8* %13 to %struct.dpi_clk_calc_ctx*
  store %struct.dpi_clk_calc_ctx* %14, %struct.dpi_clk_calc_ctx** %12, align 8
  %15 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %12, align 8
  %16 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 100000000
  br i1 %18, label %19, label %36

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = srem i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %53

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = srem i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %53

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %5
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %12, align 8
  %39 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %12, align 8
  %43 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %12, align 8
  %47 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %12, align 8
  %51 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i64 %49, i64* %52, align 8
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %36, %34, %26
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
