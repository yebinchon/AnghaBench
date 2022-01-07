; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_pre_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_parade-ps8622.c_ps8622_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.ps8622_bridge = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"fails to enable ps8622->v12\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to prepare panel\0A\00", align 1
@PS8622_RST_HIGH_T2_MIN_US = common dso_local global i32 0, align 4
@PS8622_POWER_RISE_T1_MAX_US = common dso_local global i32 0, align 4
@PS8622_RST_HIGH_T2_MAX_US = common dso_local global i32 0, align 4
@PS8622_POWER_RISE_T1_MIN_US = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to send config to bridge (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @ps8622_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps8622_pre_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.ps8622_bridge*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = call %struct.ps8622_bridge* @bridge_to_ps8622(%struct.drm_bridge* %5)
  store %struct.ps8622_bridge* %6, %struct.ps8622_bridge** %3, align 8
  %7 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %66

12:                                               ; preds = %1
  %13 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %14 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value(i32 %15, i32 0)
  %17 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %18 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %23 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @regulator_enable(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %33 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @drm_panel_prepare(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %66

39:                                               ; preds = %31
  %40 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %41 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gpiod_set_value(i32 %42, i32 1)
  %44 = load i32, i32* @PS8622_RST_HIGH_T2_MIN_US, align 4
  %45 = load i32, i32* @PS8622_POWER_RISE_T1_MAX_US, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @PS8622_RST_HIGH_T2_MAX_US, align 4
  %48 = load i32, i32* @PS8622_POWER_RISE_T1_MIN_US, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @usleep_range(i32 %46, i32 %49)
  %51 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %52 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gpiod_set_value(i32 %53, i32 1)
  %55 = call i32 @usleep_range(i32 20000, i32 30000)
  %56 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %57 = call i32 @ps8622_send_config(%struct.ps8622_bridge* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %39
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %66

63:                                               ; preds = %39
  %64 = load %struct.ps8622_bridge*, %struct.ps8622_bridge** %3, align 8
  %65 = getelementptr inbounds %struct.ps8622_bridge, %struct.ps8622_bridge* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %60, %37, %11
  ret void
}

declare dso_local %struct.ps8622_bridge* @bridge_to_ps8622(%struct.drm_bridge*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @drm_panel_prepare(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ps8622_send_config(%struct.ps8622_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
