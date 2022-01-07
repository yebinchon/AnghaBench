; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_panel_ddc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_panel_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.imx_ldb_channel = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get ddc i2c adapter\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"no ddc available\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@OF_USE_NATIVE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.imx_ldb_channel*, %struct.device_node*)* @imx_ldb_panel_ddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ldb_panel_ddc(%struct.device* %0, %struct.imx_ldb_channel* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.imx_ldb_channel*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.imx_ldb_channel* %1, %struct.imx_ldb_channel** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %7, align 8
  %12 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %12, %struct.device_node** %8, align 8
  %13 = load %struct.device_node*, %struct.device_node** %8, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.device_node*, %struct.device_node** %8, align 8
  %17 = call i32 @of_find_i2c_adapter_by_node(%struct.device_node* %16)
  %18 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %19 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.device_node*, %struct.device_node** %8, align 8
  %21 = call i32 @of_node_put(%struct.device_node* %20)
  %22 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %23 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %77

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %34 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %76, label %37

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %42 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %41, i32 0, i32 4
  %43 = call i32* @of_get_property(%struct.device_node* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %49 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @kmemdup(i32* %47, i32 %50, i32 %51)
  %53 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %54 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  br label %75

55:                                               ; preds = %37
  %56 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %57 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %55
  %61 = load %struct.device_node*, %struct.device_node** %7, align 8
  %62 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %63 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %62, i32 0, i32 2
  %64 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %65 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %64, i32 0, i32 1
  %66 = load i32, i32* @OF_USE_NATIVE_MODE, align 4
  %67 = call i32 @of_get_drm_display_mode(%struct.device_node* %61, i32* %63, i32* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %6, align 8
  %72 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %60
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75, %32
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %26
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_find_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @of_get_drm_display_mode(%struct.device_node*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
