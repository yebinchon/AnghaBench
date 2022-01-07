; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_lcd_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_lcd_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__*, %struct.device_node* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.resource = type { i32 }
%struct.armada_variant = type { i32 }
%struct.platform_device_id = type { i64 }
%struct.of_device_id = type { %struct.armada_variant* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"no port node found in %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @armada_lcd_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_lcd_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.armada_variant*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.platform_device_id*, align 8
  %15 = alloca %struct.of_device_id*, align 8
  %16 = alloca %struct.device_node*, align 8
  %17 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.platform_device* @to_platform_device(%struct.device* %18)
  store %struct.platform_device* %19, %struct.platform_device** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.drm_device*
  store %struct.drm_device* %21, %struct.drm_device** %9, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %10, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %26 = call i32 @platform_get_irq(%struct.platform_device* %25, i32 0)
  store i32 %26, i32* %11, align 4
  store %struct.device_node* null, %struct.device_node** %13, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %97

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 1
  %34 = load %struct.device_node*, %struct.device_node** %33, align 8
  %35 = icmp ne %struct.device_node* %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %31
  %37 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %38 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %37)
  store %struct.platform_device_id* %38, %struct.platform_device_id** %14, align 8
  %39 = load %struct.platform_device_id*, %struct.platform_device_id** %14, align 8
  %40 = icmp ne %struct.platform_device_id* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %97

44:                                               ; preds = %36
  %45 = load %struct.platform_device_id*, %struct.platform_device_id** %14, align 8
  %46 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.armada_variant*
  store %struct.armada_variant* %48, %struct.armada_variant** %12, align 8
  br label %89

49:                                               ; preds = %31
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 1
  %52 = load %struct.device_node*, %struct.device_node** %51, align 8
  store %struct.device_node* %52, %struct.device_node** %17, align 8
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = call %struct.of_device_id* @of_match_device(i32 %57, %struct.device* %58)
  store %struct.of_device_id* %59, %struct.of_device_id** %15, align 8
  %60 = load %struct.of_device_id*, %struct.of_device_id** %15, align 8
  %61 = icmp ne %struct.of_device_id* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %97

65:                                               ; preds = %49
  %66 = load %struct.device_node*, %struct.device_node** %17, align 8
  %67 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %67, %struct.device_node** %16, align 8
  %68 = load %struct.device_node*, %struct.device_node** %16, align 8
  %69 = icmp ne %struct.device_node* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %71, %struct.device_node** %17, align 8
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.device_node*, %struct.device_node** %17, align 8
  %74 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %74, %struct.device_node** %13, align 8
  %75 = load %struct.device_node*, %struct.device_node** %16, align 8
  %76 = call i32 @of_node_put(%struct.device_node* %75)
  %77 = load %struct.device_node*, %struct.device_node** %13, align 8
  %78 = icmp ne %struct.device_node* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.device_node*, %struct.device_node** %17, align 8
  %82 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %81)
  %83 = load i32, i32* @ENXIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %97

85:                                               ; preds = %72
  %86 = load %struct.of_device_id*, %struct.of_device_id** %15, align 8
  %87 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %86, i32 0, i32 0
  %88 = load %struct.armada_variant*, %struct.armada_variant** %87, align 8
  store %struct.armada_variant* %88, %struct.armada_variant** %12, align 8
  br label %89

89:                                               ; preds = %85, %44
  %90 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load %struct.resource*, %struct.resource** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.armada_variant*, %struct.armada_variant** %12, align 8
  %95 = load %struct.device_node*, %struct.device_node** %13, align 8
  %96 = call i32 @armada_drm_crtc_create(%struct.drm_device* %90, %struct.device* %91, %struct.resource* %92, i32 %93, %struct.armada_variant* %94, %struct.device_node* %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %89, %79, %62, %41, %29
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @armada_drm_crtc_create(%struct.drm_device*, %struct.device*, %struct.resource*, i32, %struct.armada_variant*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
