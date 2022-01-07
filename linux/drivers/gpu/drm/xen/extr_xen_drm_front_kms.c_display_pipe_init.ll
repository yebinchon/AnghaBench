; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_display_pipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_display_pipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_drm_info = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.xen_drm_front_cfg_connector = type { i32, i32 }
%struct.xen_drm_front_drm_pipeline = type { i32, i32, i32, i32, i32, i32, %struct.xen_drm_front_drm_info* }

@pflip_to_worker = common dso_local global i32 0, align 4
@display_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_drm_front_drm_info*, i32, %struct.xen_drm_front_cfg_connector*, %struct.xen_drm_front_drm_pipeline*)* @display_pipe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_pipe_init(%struct.xen_drm_front_drm_info* %0, i32 %1, %struct.xen_drm_front_cfg_connector* %2, %struct.xen_drm_front_drm_pipeline* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_drm_front_drm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xen_drm_front_cfg_connector*, align 8
  %9 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xen_drm_front_drm_info* %0, %struct.xen_drm_front_drm_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xen_drm_front_cfg_connector* %2, %struct.xen_drm_front_cfg_connector** %8, align 8
  store %struct.xen_drm_front_drm_pipeline* %3, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %14 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %6, align 8
  %15 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %10, align 8
  %17 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %6, align 8
  %18 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %19 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %18, i32 0, i32 6
  store %struct.xen_drm_front_drm_info* %17, %struct.xen_drm_front_drm_info** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %22 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.xen_drm_front_cfg_connector*, %struct.xen_drm_front_cfg_connector** %8, align 8
  %24 = getelementptr inbounds %struct.xen_drm_front_cfg_connector, %struct.xen_drm_front_cfg_connector* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %27 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.xen_drm_front_cfg_connector*, %struct.xen_drm_front_cfg_connector** %8, align 8
  %29 = getelementptr inbounds %struct.xen_drm_front_cfg_connector, %struct.xen_drm_front_cfg_connector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %32 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %34 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %33, i32 0, i32 3
  %35 = load i32, i32* @pflip_to_worker, align 4
  %36 = call i32 @INIT_DELAYED_WORK(i32* %34, i32 %35)
  %37 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %6, align 8
  %38 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %39 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %38, i32 0, i32 1
  %40 = call i32 @xen_drm_front_conn_init(%struct.xen_drm_front_drm_info* %37, i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %4
  %46 = call i32* @xen_drm_front_conn_get_formats(i32* %12)
  store i32* %46, i32** %11, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %48 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %49 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %48, i32 0, i32 2
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %9, align 8
  %53 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %52, i32 0, i32 1
  %54 = call i32 @drm_simple_display_pipe_init(%struct.drm_device* %47, i32* %49, i32* @display_funcs, i32* %50, i32 %51, i32* null, i32* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %43
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @xen_drm_front_conn_init(%struct.xen_drm_front_drm_info*, i32*) #1

declare dso_local i32* @xen_drm_front_conn_get_formats(i32*) #1

declare dso_local i32 @drm_simple_display_pipe_init(%struct.drm_device*, i32*, i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
