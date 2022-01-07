; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_create_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_create_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.analogix_dp_device = type { i32, %struct.drm_bridge* }
%struct.drm_bridge = type { i32*, %struct.analogix_dp_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to allocate for drm bridge\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@analogix_dp_bridge_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to attach drm bridge\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.analogix_dp_device*)* @analogix_dp_create_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_create_bridge(%struct.drm_device* %0, %struct.analogix_dp_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.analogix_dp_device*, align 8
  %6 = alloca %struct.drm_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.analogix_dp_device* %1, %struct.analogix_dp_device** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.drm_bridge* @devm_kzalloc(i32 %10, i32 16, i32 %11)
  store %struct.drm_bridge* %12, %struct.drm_bridge** %6, align 8
  %13 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %14 = icmp ne %struct.drm_bridge* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %21 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %22 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %21, i32 0, i32 1
  store %struct.drm_bridge* %20, %struct.drm_bridge** %22, align 8
  %23 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %24 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %25 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %24, i32 0, i32 1
  store %struct.analogix_dp_device* %23, %struct.analogix_dp_device** %25, align 8
  %26 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %27 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %26, i32 0, i32 0
  store i32* @analogix_dp_bridge_funcs, i32** %27, align 8
  %28 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %29 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %32 = call i32 @drm_bridge_attach(i32 %30, %struct.drm_bridge* %31, i32* null)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.drm_bridge* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_bridge_attach(i32, %struct.drm_bridge*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
