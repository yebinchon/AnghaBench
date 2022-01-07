; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_txp.c_vc4_txp_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32 }

@MODE_BAD_HVALUE = common dso_local global i32 0, align 4
@MODE_BAD_VVALUE = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @vc4_txp_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_txp_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  store %struct.drm_mode_config* %14, %struct.drm_mode_config** %7, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %29 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %2
  %33 = load i32, i32* @MODE_BAD_HVALUE, align 4
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %37 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %43 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @MODE_BAD_VVALUE, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @MODE_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %46, %32
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
