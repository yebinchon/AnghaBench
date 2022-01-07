; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_dpi_calc_dss_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_dpi_calc_dss_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdi_clk_calc_ctx = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@dpi_calc_dispc_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @dpi_calc_dss_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_calc_dss_cb(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdi_clk_calc_ctx*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sdi_clk_calc_ctx*
  store %struct.sdi_clk_calc_ctx* %7, %struct.sdi_clk_calc_ctx** %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.sdi_clk_calc_ctx*, %struct.sdi_clk_calc_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.sdi_clk_calc_ctx, %struct.sdi_clk_calc_ctx* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.sdi_clk_calc_ctx*, %struct.sdi_clk_calc_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.sdi_clk_calc_ctx, %struct.sdi_clk_calc_ctx* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.sdi_clk_calc_ctx*, %struct.sdi_clk_calc_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.sdi_clk_calc_ctx, %struct.sdi_clk_calc_ctx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sdi_clk_calc_ctx*, %struct.sdi_clk_calc_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.sdi_clk_calc_ctx, %struct.sdi_clk_calc_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @dpi_calc_dispc_cb, align 4
  %26 = load %struct.sdi_clk_calc_ctx*, %struct.sdi_clk_calc_ctx** %5, align 8
  %27 = call i32 @dispc_div_calc(i32 %17, i64 %18, i32 %21, i32 %24, i32 %25, %struct.sdi_clk_calc_ctx* %26)
  ret i32 %27
}

declare dso_local i32 @dispc_div_calc(i32, i64, i32, i32, i32, %struct.sdi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
