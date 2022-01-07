; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_drv.c_sun4i_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_drv.c_sun4i_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.component_match = type { i32 }
%struct.endpoint_list = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"allwinner,pipelines\00", align 1
@sun4i_drv_master_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.component_match*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.endpoint_list, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.component_match* null, %struct.component_match** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  store i32 0, i32* %10, align 4
  %16 = getelementptr inbounds %struct.endpoint_list, %struct.endpoint_list* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @INIT_KFIFO(i32 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %30, %1
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.device_node* %22, %struct.device_node** %11, align 8
  %23 = load %struct.device_node*, %struct.device_node** %11, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %33

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.endpoint_list, %struct.endpoint_list* %7, i32 0, i32 0
  %28 = load %struct.device_node*, %struct.device_node** %11, align 8
  %29 = call i32 @kfifo_put(i32* %27, %struct.device_node* %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %19

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %47, %33
  %35 = getelementptr inbounds %struct.endpoint_list, %struct.endpoint_list* %7, i32 0, i32 0
  %36 = call i64 @kfifo_get(i32* %35, %struct.device_node** %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = call i32 @sun4i_drv_add_endpoints(%struct.TYPE_3__* %40, %struct.endpoint_list* %7, %struct.component_match** %4, %struct.device_node* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %2, align 4
  br label %60

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %34

51:                                               ; preds = %34
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.component_match*, %struct.component_match** %4, align 8
  %58 = call i32 @component_master_add_with_match(%struct.TYPE_3__* %56, i32* @sun4i_drv_master_ops, %struct.component_match* %57)
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %54, %45
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @kfifo_put(i32*, %struct.device_node*) #1

declare dso_local i64 @kfifo_get(i32*, %struct.device_node**) #1

declare dso_local i32 @sun4i_drv_add_endpoints(%struct.TYPE_3__*, %struct.endpoint_list*, %struct.component_match**, %struct.device_node*) #1

declare dso_local i32 @component_master_add_with_match(%struct.TYPE_3__*, i32*, %struct.component_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
