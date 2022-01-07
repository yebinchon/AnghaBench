; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_walk_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_walk_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.omapdss_comp_node = type { i32, i8*, i32, %struct.device_node* }

@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@omapdss_comp_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device_node*, i32)* @omapdss_walk_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapdss_walk_device(%struct.device* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omapdss_comp_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32 @of_property_read_string(%struct.device_node* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %76

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.omapdss_comp_node* @devm_kzalloc(%struct.device* %18, i32 32, i32 %19)
  store %struct.omapdss_comp_node* %20, %struct.omapdss_comp_node** %7, align 8
  %21 = load %struct.omapdss_comp_node*, %struct.omapdss_comp_node** %7, align 8
  %22 = icmp ne %struct.omapdss_comp_node* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = load %struct.omapdss_comp_node*, %struct.omapdss_comp_node** %7, align 8
  %26 = getelementptr inbounds %struct.omapdss_comp_node, %struct.omapdss_comp_node* %25, i32 0, i32 3
  store %struct.device_node* %24, %struct.device_node** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.omapdss_comp_node*, %struct.omapdss_comp_node** %7, align 8
  %29 = getelementptr inbounds %struct.omapdss_comp_node, %struct.omapdss_comp_node* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.omapdss_comp_node*, %struct.omapdss_comp_node** %7, align 8
  %32 = getelementptr inbounds %struct.omapdss_comp_node, %struct.omapdss_comp_node* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.omapdss_comp_node*, %struct.omapdss_comp_node** %7, align 8
  %34 = getelementptr inbounds %struct.omapdss_comp_node, %struct.omapdss_comp_node* %33, i32 0, i32 2
  %35 = call i32 @list_add(i32* %34, i32* @omapdss_comp_list)
  br label %36

36:                                               ; preds = %23, %17
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %38, %struct.device_node** %8, align 8
  %39 = load %struct.device_node*, %struct.device_node** %8, align 8
  %40 = icmp ne %struct.device_node* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %43, %struct.device_node** %8, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.device_node*, %struct.device_node** %8, align 8
  %46 = icmp ne %struct.device_node* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %76

48:                                               ; preds = %44
  %49 = load %struct.device_node*, %struct.device_node** %8, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  store %struct.device_node* null, %struct.device_node** %8, align 8
  br label %51

51:                                               ; preds = %73, %70, %61, %48
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = load %struct.device_node*, %struct.device_node** %8, align 8
  %54 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %52, %struct.device_node* %53)
  store %struct.device_node* %54, %struct.device_node** %8, align 8
  %55 = icmp ne %struct.device_node* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.device_node*, %struct.device_node** %8, align 8
  %58 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %57)
  store %struct.device_node* %58, %struct.device_node** %11, align 8
  %59 = load %struct.device_node*, %struct.device_node** %11, align 8
  %60 = icmp ne %struct.device_node* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %51

62:                                               ; preds = %56
  %63 = load %struct.device_node*, %struct.device_node** %11, align 8
  %64 = call i32 @of_device_is_available(%struct.device_node* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.device_node*, %struct.device_node** %11, align 8
  %68 = call i64 @omapdss_list_contains(%struct.device_node* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %62
  %71 = load %struct.device_node*, %struct.device_node** %11, align 8
  %72 = call i32 @of_node_put(%struct.device_node* %71)
  br label %51

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.device_node*, %struct.device_node** %11, align 8
  call void @omapdss_walk_device(%struct.device* %74, %struct.device_node* %75, i32 0)
  br label %51

76:                                               ; preds = %16, %47, %51
  ret void
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local %struct.omapdss_comp_node* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node*, %struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i64 @omapdss_list_contains(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
