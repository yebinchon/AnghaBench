; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_perform_link_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dc_link_dp_perform_link_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.dc_link_settings = type { i32 }
%struct.link_training_settings = type { i32 }

@LINK_TRAINING_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_dp_perform_link_training(%struct.dc_link* %0, %struct.dc_link_settings* %1, i32 %2) #0 {
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %struct.dc_link_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.link_training_settings, align 4
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store %struct.dc_link_settings* %1, %struct.dc_link_settings** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %11 = load %struct.dc_link_settings*, %struct.dc_link_settings** %5, align 8
  %12 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %13 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %12, i32 0, i32 1
  %14 = call i32 @initialize_training_settings(%struct.dc_link* %10, %struct.dc_link_settings* %11, %struct.TYPE_8__* %13, %struct.link_training_settings* %8)
  %15 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %16 = call i32 @dpcd_set_link_settings(%struct.dc_link* %15, %struct.link_training_settings* %8)
  %17 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %18 = call i32 @perform_clock_recovery_sequence(%struct.dc_link* %17, %struct.link_training_settings* %8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %24 = call i32 @perform_channel_equalization_sequence(%struct.dc_link* %23, %struct.link_training_settings* %8)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @perform_link_training_int(%struct.dc_link* %33, %struct.link_training_settings* %8, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @print_status_message(%struct.dc_link* %37, %struct.link_training_settings* %8, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LINK_TRAINING_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %45 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %43, %36
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @initialize_training_settings(%struct.dc_link*, %struct.dc_link_settings*, %struct.TYPE_8__*, %struct.link_training_settings*) #1

declare dso_local i32 @dpcd_set_link_settings(%struct.dc_link*, %struct.link_training_settings*) #1

declare dso_local i32 @perform_clock_recovery_sequence(%struct.dc_link*, %struct.link_training_settings*) #1

declare dso_local i32 @perform_channel_equalization_sequence(%struct.dc_link*, %struct.link_training_settings*) #1

declare dso_local i32 @perform_link_training_int(%struct.dc_link*, %struct.link_training_settings*, i32) #1

declare dso_local i32 @print_status_message(%struct.dc_link*, %struct.link_training_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
