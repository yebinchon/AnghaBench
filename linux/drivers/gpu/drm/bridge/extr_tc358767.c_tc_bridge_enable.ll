; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_bridge_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_bridge_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.tc_data = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to read display props: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"main link enable error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"main link stream start error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @tc_bridge_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_bridge_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.tc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.tc_data* @bridge_to_tc(%struct.drm_bridge* %5)
  store %struct.tc_data* %6, %struct.tc_data** %3, align 8
  %7 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %8 = call i32 @tc_get_display_props(%struct.tc_data* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %13 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %19 = call i32 @tc_main_link_enable(%struct.tc_data* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %24 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %46

28:                                               ; preds = %17
  %29 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %30 = call i32 @tc_stream_enable(%struct.tc_data* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %35 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %40 = call i32 @tc_main_link_disable(%struct.tc_data* %39)
  br label %46

41:                                               ; preds = %28
  %42 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %43 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @drm_panel_enable(i32 %44)
  br label %46

46:                                               ; preds = %41, %33, %22, %11
  ret void
}

declare dso_local %struct.tc_data* @bridge_to_tc(%struct.drm_bridge*) #1

declare dso_local i32 @tc_get_display_props(%struct.tc_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tc_main_link_enable(%struct.tc_data*) #1

declare dso_local i32 @tc_stream_enable(%struct.tc_data*) #1

declare dso_local i32 @tc_main_link_disable(%struct.tc_data*) #1

declare dso_local i32 @drm_panel_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
