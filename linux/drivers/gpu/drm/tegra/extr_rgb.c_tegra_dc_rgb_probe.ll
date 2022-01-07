; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_dc_rgb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_dc_rgb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.device_node*, %struct.TYPE_6__* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.tegra_rgb = type { %struct.TYPE_5__, i8*, i8*, %struct.tegra_dc* }

@.str = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get parent clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to set parent clock: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_dc_rgb_probe(%struct.tegra_dc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tegra_rgb*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_dc* %0, %struct.tegra_dc** %3, align 8
  %7 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device_node* @of_get_child_by_name(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i32 @of_device_is_available(%struct.device_node* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %118

22:                                               ; preds = %15
  %23 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.tegra_rgb* @devm_kzalloc(%struct.TYPE_6__* %25, i32 40, i32 %26)
  store %struct.tegra_rgb* %27, %struct.tegra_rgb** %5, align 8
  %28 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %29 = icmp ne %struct.tegra_rgb* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %118

33:                                               ; preds = %22
  %34 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %42 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.device_node* %40, %struct.device_node** %43, align 8
  %44 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %45 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %46 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %45, i32 0, i32 3
  store %struct.tegra_dc* %44, %struct.tegra_dc** %46, align 8
  %47 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %47, i32 0, i32 0
  %49 = call i32 @tegra_output_probe(%struct.TYPE_5__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %118

54:                                               ; preds = %33
  %55 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %56 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call i8* @devm_clk_get(%struct.TYPE_6__* %57, i8* null)
  %59 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %60 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %68 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %72 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %2, align 4
  br label %118

75:                                               ; preds = %54
  %76 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %77 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = call i8* @devm_clk_get(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %81 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %83 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @IS_ERR(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %75
  %88 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %89 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %93 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @PTR_ERR(i8* %94)
  store i32 %95, i32* %2, align 4
  br label %118

96:                                               ; preds = %75
  %97 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %98 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %101 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @clk_set_parent(i8* %99, i8* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %118

113:                                              ; preds = %96
  %114 = load %struct.tegra_rgb*, %struct.tegra_rgb** %5, align 8
  %115 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %114, i32 0, i32 0
  %116 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %117 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %116, i32 0, i32 0
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %117, align 8
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %106, %87, %66, %52, %30, %19
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local %struct.tegra_rgb* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @tegra_output_probe(%struct.TYPE_5__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_set_parent(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
