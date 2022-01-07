; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_of_iommu.c_of_fsl_mc_iommu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_of_iommu.c_of_fsl_mc_iommu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_phandle_args = type { i32, i32, i32 }
%struct.fsl_mc_device = type { i32, i32 }
%struct.device_node = type { i32 }

@__const.of_fsl_mc_iommu_init.iommu_spec = private unnamed_addr constant %struct.of_phandle_args { i32 1, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"iommu-map\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"iommu-map-mask\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NO_IOMMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*, %struct.device_node*)* @of_fsl_mc_iommu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_fsl_mc_iommu_init(%struct.fsl_mc_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = bitcast %struct.of_phandle_args* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.of_phandle_args* @__const.of_fsl_mc_iommu_init.iommu_spec to i8*), i64 12, i1 false)
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %11 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @of_map_rid(%struct.device_node* %9, i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @NO_IOMMU, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %32 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %31, i32 0, i32 0
  %33 = call i32 @of_iommu_xlate(i32* %32, %struct.of_phandle_args* %6)
  store i32 %33, i32* %7, align 4
  %34 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @of_node_put(i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %28
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @of_map_rid(%struct.device_node*, i32, i8*, i8*, i32*, i32) #2

declare dso_local i32 @of_iommu_xlate(i32*, %struct.of_phandle_args*) #2

declare dso_local i32 @of_node_put(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
