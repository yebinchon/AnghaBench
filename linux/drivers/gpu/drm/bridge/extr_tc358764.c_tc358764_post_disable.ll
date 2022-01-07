; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_post_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358764.c_tc358764_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.tc358764 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"error unpreparing panel (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"error disabling regulators (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @tc358764_post_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc358764_post_disable(%struct.drm_bridge* %0) #0 {
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
  %10 = call i32 @drm_panel_unprepare(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %15 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %21 = call i32 @tc358764_reset(%struct.tc358764* %20)
  %22 = call i32 @usleep_range(i32 10000, i32 15000)
  %23 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %24 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %28 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_bulk_disable(i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load %struct.tc358764*, %struct.tc358764** %3, align 8
  %35 = getelementptr inbounds %struct.tc358764, %struct.tc358764* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %19
  ret void
}

declare dso_local %struct.tc358764* @bridge_to_tc358764(%struct.drm_bridge*) #1

declare dso_local i32 @drm_panel_unprepare(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tc358764_reset(%struct.tc358764*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
