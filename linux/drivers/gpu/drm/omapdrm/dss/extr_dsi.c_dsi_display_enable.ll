; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"dsi_display_enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"dsi_display_enable FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @dsi_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %6 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %5)
  store %struct.dsi_data* %6, %struct.dsi_data** %3, align 8
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %9 = call i32 @dsi_bus_is_locked(%struct.dsi_data* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %18 = call i32 @dsi_runtime_get(%struct.dsi_data* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %24 = call i32 @_dsi_initialize_irq(%struct.dsi_data* %23)
  %25 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %26 = call i32 @dsi_display_init_dsi(%struct.dsi_data* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %32 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  br label %42

34:                                               ; preds = %29
  %35 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %36 = call i32 @dsi_runtime_put(%struct.dsi_data* %35)
  br label %37

37:                                               ; preds = %34, %21
  %38 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %39 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = call i32 @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %30
  ret void
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.dsi_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsi_runtime_get(%struct.dsi_data*) #1

declare dso_local i32 @_dsi_initialize_irq(%struct.dsi_data*) #1

declare dso_local i32 @dsi_display_init_dsi(%struct.dsi_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dsi_runtime_put(%struct.dsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
