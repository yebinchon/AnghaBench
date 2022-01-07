; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_configure_dispc_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_configure_dispc_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_4__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { %struct.dispc_clock_info }
%struct.dispc_clock_info = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to calc dispc clocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_configure_dispc_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_configure_dispc_clocks(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca %struct.dispc_clock_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %7 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %8 = call i64 @dsi_get_pll_hsdiv_dispc_rate(%struct.dsi_data* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %10 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %4, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @dispc_calc_clock_rates(i32 %23, i64 %24, %struct.dispc_clock_info* %4)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = call i32 @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %33 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = bitcast %struct.dispc_clock_info* %34 to i8*
  %36 = bitcast %struct.dispc_clock_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 8, i1 false)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @dsi_get_pll_hsdiv_dispc_rate(%struct.dsi_data*) #1

declare dso_local i32 @dispc_calc_clock_rates(i32, i64, %struct.dispc_clock_info*) #1

declare dso_local i32 @DSSERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
