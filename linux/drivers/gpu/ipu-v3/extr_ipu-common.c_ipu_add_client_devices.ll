; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_add_client_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_add_client_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_platform_reg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ipu_soc = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@ipu_client_id_mutex = common dso_local global i32 0, align 4
@ipu_client_id = common dso_local global i32 0, align 4
@client_reg = common dso_local global %struct.ipu_platform_reg* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"no port@%d node in %pOF, not using %s%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CSI\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_soc*, i64)* @ipu_add_client_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_add_client_devices(%struct.ipu_soc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_soc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipu_platform_reg*, align 8
  %11 = alloca %struct.platform_device*, align 8
  %12 = alloca %struct.device_node*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %14 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = call i32 @mutex_lock(i32* @ipu_client_id_mutex)
  %17 = load i32, i32* @ipu_client_id, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ipu_platform_reg*, %struct.ipu_platform_reg** @client_reg, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.ipu_platform_reg* %18)
  %20 = load i32, i32* @ipu_client_id, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* @ipu_client_id, align 4
  %22 = call i32 @mutex_unlock(i32* @ipu_client_id_mutex)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %91, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ipu_platform_reg*, %struct.ipu_platform_reg** @client_reg, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.ipu_platform_reg* %25)
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %94

28:                                               ; preds = %23
  %29 = load %struct.ipu_platform_reg*, %struct.ipu_platform_reg** @client_reg, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ipu_platform_reg, %struct.ipu_platform_reg* %29, i64 %31
  store %struct.ipu_platform_reg* %32, %struct.ipu_platform_reg** %10, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.device_node* @of_graph_get_port_by_id(i32 %35, i32 %36)
  store %struct.device_node* %37, %struct.device_node** %12, align 8
  %38 = load %struct.device_node*, %struct.device_node** %12, align 8
  %39 = icmp ne %struct.device_node* %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %28
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = udiv i32 %46, 2
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %51 = load i32, i32* %7, align 4
  %52 = urem i32 %51, 2
  %53 = call i32 @dev_info(%struct.device* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i8* %50, i32 %52)
  br label %91

54:                                               ; preds = %28
  %55 = load %struct.ipu_platform_reg*, %struct.ipu_platform_reg** %10, align 8
  %56 = getelementptr inbounds %struct.ipu_platform_reg, %struct.ipu_platform_reg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = call %struct.platform_device* @platform_device_alloc(i32 %57, i32 %58)
  store %struct.platform_device* %60, %struct.platform_device** %11, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %62 = icmp ne %struct.platform_device* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %95

66:                                               ; preds = %54
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store %struct.device* %67, %struct.device** %70, align 8
  %71 = load %struct.device_node*, %struct.device_node** %12, align 8
  %72 = load %struct.ipu_platform_reg*, %struct.ipu_platform_reg** %10, align 8
  %73 = getelementptr inbounds %struct.ipu_platform_reg, %struct.ipu_platform_reg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.device_node* %71, %struct.device_node** %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %76 = load %struct.ipu_platform_reg*, %struct.ipu_platform_reg** %10, align 8
  %77 = getelementptr inbounds %struct.ipu_platform_reg, %struct.ipu_platform_reg* %76, i32 0, i32 0
  %78 = call i32 @platform_device_add_data(%struct.platform_device* %75, %struct.TYPE_4__* %77, i32 8)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %66
  %82 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %83 = call i32 @platform_device_add(%struct.platform_device* %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %66
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %89 = call i32 @platform_device_put(%struct.platform_device* %88)
  br label %95

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %40
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %23

94:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %100

95:                                               ; preds = %87, %63
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = call i32 @to_platform_device(%struct.device* %96)
  %98 = call i32 @platform_device_unregister_children(i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %94
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ipu_platform_reg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.device_node* @of_graph_get_port_by_id(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i8*, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @platform_device_unregister_children(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
