; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_conn_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_conn_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qxl_head* }
%struct.qxl_head = type { i32, i32 }
%struct.qxl_output = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @qxl_conn_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_conn_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.qxl_device*, align 8
  %5 = alloca %struct.qxl_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qxl_head*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.qxl_device*, %struct.qxl_device** %14, align 8
  store %struct.qxl_device* %15, %struct.qxl_device** %4, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = call %struct.qxl_output* @drm_connector_to_qxl_output(%struct.drm_connector* %16)
  store %struct.qxl_output* %17, %struct.qxl_output** %5, align 8
  store i32 1024, i32* %6, align 4
  store i32 768, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %19 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %1
  %23 = load %struct.qxl_device*, %struct.qxl_device** %4, align 8
  %24 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.qxl_head*, %struct.qxl_head** %26, align 8
  %28 = load %struct.qxl_output*, %struct.qxl_output** %5, align 8
  %29 = getelementptr inbounds %struct.qxl_output, %struct.qxl_output* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %27, i64 %30
  store %struct.qxl_head* %31, %struct.qxl_head** %9, align 8
  %32 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %33 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %38 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %22
  %41 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %42 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.qxl_head*, %struct.qxl_head** %9, align 8
  %47 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %52 = call i64 @drm_add_modes_noedid(%struct.drm_connector* %51, i32 8192, i32 8192)
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %58 = call i64 @qxl_add_extra_modes(%struct.drm_connector* %57)
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %64 = call i64 @qxl_add_monitors_config_modes(%struct.drm_connector* %63)
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @drm_set_preferred_mode(%struct.drm_connector* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local %struct.qxl_output* @drm_connector_to_qxl_output(%struct.drm_connector*) #1

declare dso_local i64 @drm_add_modes_noedid(%struct.drm_connector*, i32, i32) #1

declare dso_local i64 @qxl_add_extra_modes(%struct.drm_connector*) #1

declare dso_local i64 @qxl_add_monitors_config_modes(%struct.drm_connector*) #1

declare dso_local i32 @drm_set_preferred_mode(%struct.drm_connector*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
