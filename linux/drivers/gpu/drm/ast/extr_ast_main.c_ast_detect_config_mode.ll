; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_detect_config_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_detect_config_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.ast_private* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ast_private = type { i32 }

@ast_use_defaults = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"aspeed,scu-revision-id\00", align 1
@ast_use_dt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Using device-tree for configuration\0A\00", align 1
@PCI_CHIP_AST2000 = common dso_local global i64 0, align 8
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@ast_use_p2a = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Using P2A bridge for configuration\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"P2A bridge disabled, using default configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32*)* @ast_detect_config_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_detect_config_mode(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.ast_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.ast_private*, %struct.ast_private** %17, align 8
  store %struct.ast_private* %18, %struct.ast_private** %6, align 8
  %19 = load i32, i32* @ast_use_defaults, align 4
  %20 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %21 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %4, align 8
  store i32 -1, i32* %22, align 4
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ast_use_dt, align 4
  %32 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %33 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %80

35:                                               ; preds = %25, %2
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI_CHIP_AST2000, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %80

44:                                               ; preds = %35
  %45 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %46 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %47 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %45, i32 %46, i32 208, i32 255)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %49 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %50 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %48, i32 %49, i32 209, i32 255)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 16
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %54, %44
  %59 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %60 = call i8* @ast_read32(%struct.ast_private* %59, i32 61444)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i32, i32* @ast_use_p2a, align 4
  %66 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %67 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = call i32 @DRM_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %70 = call i32 @ast_write32(%struct.ast_private* %69, i32 61444, i32 510525440)
  %71 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %72 = call i32 @ast_write32(%struct.ast_private* %71, i32 61440, i32 1)
  %73 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %74 = call i8* @ast_read32(%struct.ast_private* %73, i32 73852)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %4, align 8
  store i32 %75, i32* %76, align 4
  br label %80

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %54
  %79 = call i32 @DRM_INFO(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %64, %43, %30
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i8* @ast_read32(%struct.ast_private*, i32) #1

declare dso_local i32 @ast_write32(%struct.ast_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
