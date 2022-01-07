; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_device = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ti,invert-polarity\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ti,channels\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to read property 'ti,channels': %d\0A\00", align 1
@OMAP_DSS_VENC_TYPE_COMPOSITE = common dso_local global i32 0, align 4
@OMAP_DSS_VENC_TYPE_SVIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"bad channel propert '%d'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_device*)* @venc_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_probe_of(%struct.venc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venc_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.venc_device* %0, %struct.venc_device** %3, align 8
  %8 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %9 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node* %14, i32 0, i32 0)
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_property_read_bool(%struct.device_node* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %23 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %30 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(%struct.TYPE_4__* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %57

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %45 [
    i32 1, label %37
    i32 2, label %41
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @OMAP_DSS_VENC_TYPE_COMPOSITE, align 4
  %39 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %40 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %54

41:                                               ; preds = %35
  %42 = load i32, i32* @OMAP_DSS_VENC_TYPE_SVIDEO, align 4
  %43 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %44 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %54

45:                                               ; preds = %35
  %46 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %47 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %57

54:                                               ; preds = %41, %37
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = call i32 @of_node_put(%struct.device_node* %55)
  store i32 0, i32* %2, align 4
  br label %61

57:                                               ; preds = %45, %28
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call i32 @of_node_put(%struct.device_node* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %54, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node*, i32, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
