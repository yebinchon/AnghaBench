; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_bridge_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_bridge_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.tc_data = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"main link stream stop error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"main link disable error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @tc_bridge_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_bridge_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.tc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.tc_data* @bridge_to_tc(%struct.drm_bridge* %5)
  store %struct.tc_data* %6, %struct.tc_data** %3, align 8
  %7 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %8 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @drm_panel_disable(i32 %9)
  %11 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %12 = call i32 @tc_stream_disable(%struct.tc_data* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %17 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %23 = call i32 @tc_main_link_disable(%struct.tc_data* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %28 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  ret void
}

declare dso_local %struct.tc_data* @bridge_to_tc(%struct.drm_bridge*) #1

declare dso_local i32 @drm_panel_disable(i32) #1

declare dso_local i32 @tc_stream_disable(%struct.tc_data*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tc_main_link_disable(%struct.tc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
