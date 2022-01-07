; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_sync_vc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_sync_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32)* @dsi_sync_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_sync_vc(%struct.dsi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %7 = call i32 @dsi_bus_is_locked(%struct.dsi_data* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = call i32 (...) @in_interrupt()
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dsi_vc_is_enabled(%struct.dsi_data* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %21 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %36 [
    i32 128, label %28
    i32 129, label %32
  ]

28:                                               ; preds = %19
  %29 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dsi_sync_vc_vp(%struct.dsi_data* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %19
  %33 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dsi_sync_vc_l4(%struct.dsi_data* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %19
  %37 = call i32 (...) @BUG()
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %32, %28, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.dsi_data*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @dsi_vc_is_enabled(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_sync_vc_vp(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_sync_vc_l4(%struct.dsi_data*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
