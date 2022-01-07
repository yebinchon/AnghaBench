; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_init_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { %struct.TYPE_4__*, %struct.platform_device* }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dss_device*)* @dss_init_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_init_ports(%struct.dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dss_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %3, align 8
  %9 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %10 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %9, i32 0, i32 1
  %11 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %68, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %19 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %17, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %16
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.device_node* @of_graph_get_port_by_id(%struct.device_node* %25, i32 %26)
  store %struct.device_node* %27, %struct.device_node** %6, align 8
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %68

31:                                               ; preds = %24
  %32 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %33 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %66 [
    i32 129, label %41
    i32 128, label %56
  ]

41:                                               ; preds = %31
  %42 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  %45 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %46 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dpi_init_port(%struct.dss_device* %42, %struct.platform_device* %43, %struct.device_node* %44, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %72

55:                                               ; preds = %41
  br label %67

56:                                               ; preds = %31
  %57 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = call i32 @sdi_init_port(%struct.dss_device* %57, %struct.platform_device* %58, %struct.device_node* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %56
  br label %67

66:                                               ; preds = %31
  br label %67

67:                                               ; preds = %66, %65, %55
  br label %68

68:                                               ; preds = %67, %30
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %16

71:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %63, %53
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.device_node* @of_graph_get_port_by_id(%struct.device_node*, i32) #1

declare dso_local i32 @dpi_init_port(%struct.dss_device*, %struct.platform_device*, %struct.device_node*, i32) #1

declare dso_local i32 @sdi_init_port(%struct.dss_device*, %struct.platform_device*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
