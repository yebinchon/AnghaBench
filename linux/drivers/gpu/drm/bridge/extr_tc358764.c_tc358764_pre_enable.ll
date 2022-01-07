; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.tc358764 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"error enabling regulators (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"error initializing bridge (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"error preparing panel (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @tc358764_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc358764_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.tc358764*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.tc358764* @bridge_to_tc358764(%struct.drm_bridge* %5)
  store %struct.tc358764* %6, %struct.tc358764** %3, align 8
  %7 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %8 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %12 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regulator_bulk_enable(i32 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %19 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = call i32 @usleep_range(i32 10000, i32 15000)
  %25 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %26 = call i32 @tc358764_reset(%struct.tc358764* %25)
  %27 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %28 = call i32 @tc358764_init(%struct.tc358764* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %33 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %39 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_panel_prepare(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %46 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  ret void
}

declare dso_local %struct.tc358764* @bridge_to_tc358764(%struct.drm_bridge*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @tc358764_reset(%struct.tc358764*) #1

declare dso_local i32 @tc358764_init(%struct.tc358764*) #1

declare dso_local i32 @drm_panel_prepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
