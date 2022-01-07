; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_drv.c_sun4i_drv_add_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_drv.c_sun4i_drv_add_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.endpoint_list = type { i32 }
%struct.component_match = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Adding component %pOF\0A\00", align 1
@compare_of = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.endpoint_list*, %struct.component_match**, %struct.device_node*)* @sun4i_drv_add_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_drv_add_endpoints(%struct.device* %0, %struct.endpoint_list* %1, %struct.component_match** %2, %struct.device_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.endpoint_list*, align 8
  %8 = alloca %struct.component_match**, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.endpoint_list* %1, %struct.endpoint_list** %7, align 8
  store %struct.component_match** %2, %struct.component_match*** %8, align 8
  store %struct.device_node* %3, %struct.device_node** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.device_node*, %struct.device_node** %9, align 8
  %12 = call i64 @sun4i_drv_node_is_frontend(%struct.device_node* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.device_node*, %struct.device_node** %9, align 8
  %16 = call i64 @of_device_is_available(%struct.device_node* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %66

19:                                               ; preds = %14, %4
  %20 = load %struct.device_node*, %struct.device_node** %9, align 8
  %21 = call i64 @sun4i_drv_node_is_connector(%struct.device_node* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %66

24:                                               ; preds = %19
  %25 = load %struct.device_node*, %struct.device_node** %9, align 8
  %26 = call i64 @sun4i_drv_node_is_frontend(%struct.device_node* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.device_node*, %struct.device_node** %9, align 8
  %30 = call i64 @sun4i_drv_node_is_deu(%struct.device_node* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %24
  %33 = load %struct.device_node*, %struct.device_node** %9, align 8
  %34 = call i64 @sun4i_drv_node_is_supported_frontend(%struct.device_node* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.device_node*, %struct.device_node** %9, align 8
  %38 = call i64 @of_device_is_available(%struct.device_node* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36, %28
  %41 = load %struct.device_node*, %struct.device_node** %9, align 8
  %42 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.device_node* %41)
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.component_match**, %struct.component_match*** %8, align 8
  %45 = load i32, i32* @compare_of, align 4
  %46 = load %struct.device_node*, %struct.device_node** %9, align 8
  %47 = call i32 @drm_of_component_match_add(%struct.device* %43, %struct.component_match** %44, i32 %45, %struct.device_node* %46)
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %40, %36, %32
  %51 = load %struct.endpoint_list*, %struct.endpoint_list** %7, align 8
  %52 = load %struct.device_node*, %struct.device_node** %9, align 8
  %53 = call i32 @sun4i_drv_traverse_endpoints(%struct.endpoint_list* %51, %struct.device_node* %52, i32 1)
  %54 = load %struct.device_node*, %struct.device_node** %9, align 8
  %55 = call i64 @sun4i_drv_node_is_tcon_top(%struct.device_node* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.endpoint_list*, %struct.endpoint_list** %7, align 8
  %59 = load %struct.device_node*, %struct.device_node** %9, align 8
  %60 = call i32 @sun4i_drv_traverse_endpoints(%struct.endpoint_list* %58, %struct.device_node* %59, i32 3)
  %61 = load %struct.endpoint_list*, %struct.endpoint_list** %7, align 8
  %62 = load %struct.device_node*, %struct.device_node** %9, align 8
  %63 = call i32 @sun4i_drv_traverse_endpoints(%struct.endpoint_list* %61, %struct.device_node* %62, i32 5)
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %23, %18
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @sun4i_drv_node_is_frontend(%struct.device_node*) #1

declare dso_local i64 @of_device_is_available(%struct.device_node*) #1

declare dso_local i64 @sun4i_drv_node_is_connector(%struct.device_node*) #1

declare dso_local i64 @sun4i_drv_node_is_deu(%struct.device_node*) #1

declare dso_local i64 @sun4i_drv_node_is_supported_frontend(%struct.device_node*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, %struct.device_node*) #1

declare dso_local i32 @drm_of_component_match_add(%struct.device*, %struct.component_match**, i32, %struct.device_node*) #1

declare dso_local i32 @sun4i_drv_traverse_endpoints(%struct.endpoint_list*, %struct.device_node*, i32) #1

declare dso_local i64 @sun4i_drv_node_is_tcon_top(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
