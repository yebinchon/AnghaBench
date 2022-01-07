; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_nxp-ptn3460.c_ptn3460_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_nxp-ptn3460.c_ptn3460_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.ptn3460_bridge = type { i32, %struct.edid*, i32 }
%struct.edid = type { i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to allocate EDID\0A\00", align 1
@PTN3460_EDID_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @ptn3460_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptn3460_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.ptn3460_bridge*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.ptn3460_bridge* @connector_to_ptn3460(%struct.drm_connector* %9)
  store %struct.ptn3460_bridge* %10, %struct.ptn3460_bridge** %4, align 8
  %11 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %12 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %11, i32 0, i32 1
  %13 = load %struct.edid*, %struct.edid** %12, align 8
  %14 = icmp ne %struct.edid* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %18 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %17, i32 0, i32 1
  %19 = load %struct.edid*, %struct.edid** %18, align 8
  %20 = call i32 @drm_add_edid_modes(%struct.drm_connector* %16, %struct.edid* %19)
  store i32 %20, i32* %2, align 4
  br label %73

21:                                               ; preds = %1
  %22 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %23 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %29 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %28, i32 0, i32 0
  %30 = call i32 @ptn3460_pre_enable(i32* %29)
  %31 = load i32, i32* @EDID_LENGTH, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kmalloc(i32 %31, i32 %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %21
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

38:                                               ; preds = %21
  %39 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %40 = load i32, i32* @PTN3460_EDID_ADDR, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @EDID_LENGTH, align 4
  %43 = call i32 @ptn3460_read_bytes(%struct.ptn3460_bridge* %39, i32 %40, i32* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @kfree(i32* %47)
  br label %64

49:                                               ; preds = %38
  %50 = load i32*, i32** %5, align 8
  %51 = bitcast i32* %50 to %struct.edid*
  %52 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %53 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %52, i32 0, i32 1
  store %struct.edid* %51, %struct.edid** %53, align 8
  %54 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %55 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %56 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %55, i32 0, i32 1
  %57 = load %struct.edid*, %struct.edid** %56, align 8
  %58 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %54, %struct.edid* %57)
  %59 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %60 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %61 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %60, i32 0, i32 1
  %62 = load %struct.edid*, %struct.edid** %61, align 8
  %63 = call i32 @drm_add_edid_modes(%struct.drm_connector* %59, %struct.edid* %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %49, %46
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %4, align 8
  %69 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %68, i32 0, i32 0
  %70 = call i32 @ptn3460_disable(i32* %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %36, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.ptn3460_bridge* @connector_to_ptn3460(%struct.drm_connector*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @ptn3460_pre_enable(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @ptn3460_read_bytes(%struct.ptn3460_bridge*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @ptn3460_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
