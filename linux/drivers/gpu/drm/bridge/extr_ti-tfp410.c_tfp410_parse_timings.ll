; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_parse_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_parse_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge_timings = type { i32, i8*, i8* }
%struct.tfp410 = type { %struct.TYPE_2__*, i32, %struct.drm_bridge_timings }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@tfp410_default_timings = common dso_local global %struct.drm_bridge_timings zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pclk-sample\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@DRM_BUS_FLAG_DE_HIGH = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_RGB888_2X12_LE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ti,deskew\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tfp410*, i32)* @tfp410_parse_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_parse_timings(%struct.tfp410* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tfp410*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_bridge_timings*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tfp410* %0, %struct.tfp410** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %12 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %11, i32 0, i32 2
  store %struct.drm_bridge_timings* %12, %struct.drm_bridge_timings** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %6, align 8
  %14 = bitcast %struct.drm_bridge_timings* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.drm_bridge_timings* @tfp410_default_timings to i8*), i64 24, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

18:                                               ; preds = %2
  %19 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %20 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  %24 = call %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node* %23, i32 0, i32 0)
  store %struct.device_node* %24, %struct.device_node** %7, align 8
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %101

30:                                               ; preds = %18
  %31 = load %struct.device_node*, %struct.device_node** %7, align 8
  %32 = call i32 @of_property_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %8)
  %33 = load %struct.device_node*, %struct.device_node** %7, align 8
  %34 = call i32 @of_property_read_u32(%struct.device_node* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = call i32 @of_node_put(%struct.device_node* %35)
  %37 = load i32, i32* @DRM_BUS_FLAG_DE_HIGH, align 4
  %38 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %6, align 8
  %39 = getelementptr inbounds %struct.drm_bridge_timings, %struct.drm_bridge_timings* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %57 [
    i32 0, label %41
    i32 1, label %49
  ]

41:                                               ; preds = %30
  %42 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE, align 4
  %43 = load i32, i32* @DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %6, align 8
  %46 = getelementptr inbounds %struct.drm_bridge_timings, %struct.drm_bridge_timings* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %60

49:                                               ; preds = %30
  %50 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE, align 4
  %51 = load i32, i32* @DRM_BUS_FLAG_SYNC_SAMPLE_POSEDGE, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %6, align 8
  %54 = getelementptr inbounds %struct.drm_bridge_timings, %struct.drm_bridge_timings* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %60

57:                                               ; preds = %30
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %101

60:                                               ; preds = %49, %41
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %70 [
    i32 12, label %62
    i32 24, label %66
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* @MEDIA_BUS_FMT_RGB888_2X12_LE, align 4
  %64 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %65 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X24, align 4
  %68 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %69 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %101

73:                                               ; preds = %66, %62
  %74 = load %struct.tfp410*, %struct.tfp410** %4, align 8
  %75 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.device_node*, %struct.device_node** %77, align 8
  %79 = call i32 @of_property_read_u32(%struct.device_node* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, -4
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 3
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %73
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %101

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 350, %89
  %91 = sub nsw i32 1200, %90
  %92 = call i8* @min(i32 0, i32 %91)
  %93 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %6, align 8
  %94 = getelementptr inbounds %struct.drm_bridge_timings, %struct.drm_bridge_timings* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = mul nsw i32 350, %95
  %97 = add nsw i32 1300, %96
  %98 = call i8* @min(i32 0, i32 %97)
  %99 = load %struct.drm_bridge_timings*, %struct.drm_bridge_timings** %6, align 8
  %100 = getelementptr inbounds %struct.drm_bridge_timings, %struct.drm_bridge_timings* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %88, %85, %70, %57, %27, %17
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node*, i32, i32) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i8* @min(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
