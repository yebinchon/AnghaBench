; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_set_lp_clk_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_set_lp_clk_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LP_CLK_DIV %u, LP_CLK %lu\0A\00", align 1
@DSI_CLK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_set_lp_clk_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_set_lp_clk_divisor(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %8 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %9 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %56

26:                                               ; preds = %19
  %27 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %28 = call i64 @dsi_fclk_rate(%struct.dsi_data* %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = udiv i64 %29, 2
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = udiv i64 %30, %32
  store i64 %33, i64* %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %39 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %43 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %46 = load i32, i32* @DSI_CLK_CTRL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @REG_FLD_MOD(%struct.dsi_data* %45, i32 %46, i32 %47, i32 12, i32 0)
  %49 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %50 = load i32, i32* @DSI_CLK_CTRL, align 4
  %51 = load i64, i64* %4, align 8
  %52 = icmp ugt i64 %51, 30000000
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = call i32 @REG_FLD_MOD(%struct.dsi_data* %49, i32 %50, i32 %54, i32 21, i32 21)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %26, %23
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @dsi_fclk_rate(%struct.dsi_data*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i64) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
