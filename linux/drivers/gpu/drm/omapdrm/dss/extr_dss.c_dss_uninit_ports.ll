; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_uninit_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_uninit_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { %struct.TYPE_4__*, %struct.platform_device* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dss_device*)* @dss_uninit_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_uninit_ports(%struct.dss_device* %0) #0 {
  %2 = alloca %struct.dss_device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %2, align 8
  %7 = load %struct.dss_device*, %struct.dss_device** %2, align 8
  %8 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %7, i32 0, i32 1
  %9 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %9, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %47, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.dss_device*, %struct.dss_device** %2, align 8
  %17 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.device_node* @of_graph_get_port_by_id(%struct.device_node* %23, i32 %24)
  store %struct.device_node* %25, %struct.device_node** %5, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %47

29:                                               ; preds = %22
  %30 = load %struct.dss_device*, %struct.dss_device** %2, align 8
  %31 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %45 [
    i32 129, label %39
    i32 128, label %42
  ]

39:                                               ; preds = %29
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call i32 @dpi_uninit_port(%struct.device_node* %40)
  br label %46

42:                                               ; preds = %29
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = call i32 @sdi_uninit_port(%struct.device_node* %43)
  br label %46

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %42, %39
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %14

50:                                               ; preds = %14
  ret void
}

declare dso_local %struct.device_node* @of_graph_get_port_by_id(%struct.device_node*, i32) #1

declare dso_local i32 @dpi_uninit_port(%struct.device_node*) #1

declare dso_local i32 @sdi_uninit_port(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
