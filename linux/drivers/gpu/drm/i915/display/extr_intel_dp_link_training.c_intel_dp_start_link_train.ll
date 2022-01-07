; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_start_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_link_training.c_intel_dp_start_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, %struct.intel_connector* }
%struct.intel_connector = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"[CONNECTOR:%d:%s] Link Training Passed at Link Rate = %d, Lane count = %d\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"[CONNECTOR:%d:%s] Link Training failed at link rate = %d, lane count = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_start_link_train(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_connector*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %4 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %5 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %4, i32 0, i32 2
  %6 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  store %struct.intel_connector* %6, %struct.intel_connector** %3, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = call i32 @intel_dp_link_training_clock_recovery(%struct.intel_dp* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %13 = call i32 @intel_dp_link_training_channel_equalization(%struct.intel_dp* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %33

16:                                               ; preds = %11
  %17 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %18 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %27 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %28, i32 %31)
  br label %64

33:                                               ; preds = %15, %10
  %34 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %35 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %40 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %44 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %47 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %51 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %52 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %55 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @intel_dp_get_link_train_fallback_values(%struct.intel_dp* %50, i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %33
  %60 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %61 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %60, i32 0, i32 0
  %62 = call i32 @schedule_work(i32* %61)
  br label %63

63:                                               ; preds = %59, %33
  br label %64

64:                                               ; preds = %63, %16
  ret void
}

declare dso_local i32 @intel_dp_link_training_clock_recovery(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_link_training_channel_equalization(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_dp_get_link_train_fallback_values(%struct.intel_dp*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
