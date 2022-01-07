; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_dumb-vga-dac.c_dumb_vga_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_dumb-vga-dac.c_dumb_vga_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32, i32 }
%struct.dumb_vga = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Missing encoder\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dumb_vga_con_helper_funcs = common dso_local global i32 0, align 4
@dumb_vga_con_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @dumb_vga_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumb_vga_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.dumb_vga*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %6 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %7 = call %struct.dumb_vga* @drm_bridge_to_dumb_vga(%struct.drm_bridge* %6)
  store %struct.dumb_vga* %7, %struct.dumb_vga** %4, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %18 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %17, i32 0, i32 0
  %19 = call i32 @drm_connector_helper_add(i32* %18, i32* @dumb_vga_con_helper_funcs)
  %20 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %21 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %24 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %23, i32 0, i32 0
  %25 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %26 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %27 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @drm_connector_init_with_ddc(i32 %22, i32* %24, i32* @dumb_vga_con_funcs, i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %42

35:                                               ; preds = %16
  %36 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %37 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %36, i32 0, i32 0
  %38 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %39 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_connector_attach_encoder(i32* %37, i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %32, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.dumb_vga* @drm_bridge_to_dumb_vga(%struct.drm_bridge*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_init_with_ddc(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
