; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_handle_framedone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_handle_framedone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i32 (i32, i32)*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DSI_TIMING2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"DISPC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*, i32)* @dsi_handle_framedone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_handle_framedone(%struct.dsi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %6 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dispc_enable_sidle(i32 %9)
  %11 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %12 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %17 = load i32, i32* @DSI_TIMING2, align 4
  %18 = call i32 @REG_FLD_MOD(%struct.dsi_data* %16, i32 %17, i32 1, i32 15, i32 15)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %21 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %20, i32 0, i32 1
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %25 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(i32 %23, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %32 = call i32 @dsi_perf_show(%struct.dsi_data* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %19
  ret void
}

declare dso_local i32 @dispc_enable_sidle(i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_perf_show(%struct.dsi_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
