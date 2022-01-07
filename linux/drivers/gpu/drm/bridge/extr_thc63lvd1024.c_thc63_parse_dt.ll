; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_thc63lvd1024.c_thc63_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_thc63lvd1024.c_thc63_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thc63_dev = type { %struct.TYPE_4__, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device_node = type { i32 }

@THC63_RGB_OUT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Missing endpoint in port@%u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Endpoint in port@%u unconnected\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"port@%u remote endpoint is disabled\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@THC63_LVDS_IN1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"operating in %s-link mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thc63_dev*)* @thc63_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thc63_parse_dt(%struct.thc63_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thc63_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.thc63_dev* %0, %struct.thc63_dev** %3, align 8
  %6 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %7 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @THC63_RGB_OUT0, align 4
  %12 = call %struct.device_node* @of_graph_get_endpoint_by_regs(i32 %10, i32 %11, i32 -1)
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %17 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* @THC63_RGB_OUT0, align 4
  %20 = call i32 @dev_err(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %24)
  store %struct.device_node* %25, %struct.device_node** %5, align 8
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %32 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* @THC63_RGB_OUT0, align 4
  %35 = call i32 @dev_err(%struct.TYPE_5__* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %107

38:                                               ; preds = %23
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i64 @of_device_is_available(%struct.device_node* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %44 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* @THC63_RGB_OUT0, align 4
  %47 = call i32 @dev_err(%struct.TYPE_5__* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = call i32 @of_node_put(%struct.device_node* %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %38
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i32 @of_drm_find_bridge(%struct.device_node* %53)
  %55 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %56 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call i32 @of_node_put(%struct.device_node* %57)
  %59 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %60 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @EPROBE_DEFER, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %107

66:                                               ; preds = %52
  %67 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %68 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @THC63_LVDS_IN1, align 4
  %73 = call %struct.device_node* @of_graph_get_endpoint_by_regs(i32 %71, i32 %72, i32 -1)
  store %struct.device_node* %73, %struct.device_node** %4, align 8
  %74 = load %struct.device_node*, %struct.device_node** %4, align 8
  %75 = icmp ne %struct.device_node* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %66
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %77)
  store %struct.device_node* %78, %struct.device_node** %5, align 8
  %79 = load %struct.device_node*, %struct.device_node** %4, align 8
  %80 = call i32 @of_node_put(%struct.device_node* %79)
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = icmp ne %struct.device_node* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = call i64 @of_device_is_available(%struct.device_node* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %89 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = call i32 @of_node_put(%struct.device_node* %92)
  br label %94

94:                                               ; preds = %91, %76
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %97 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load %struct.thc63_dev*, %struct.thc63_dev** %3, align 8
  %100 = getelementptr inbounds %struct.thc63_dev, %struct.thc63_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %106 = call i32 @dev_dbg(%struct.TYPE_5__* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %95, %63, %42, %30, %15
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_drm_find_bridge(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
