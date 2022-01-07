; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_sysfs_remove_feature_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_sysfs_remove_feature_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_ras = type { %struct.bin_attribute, %struct.TYPE_3__ }
%struct.bin_attribute = type { i32 }
%struct.TYPE_3__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.attribute_group = type { i8*, %struct.bin_attribute**, %struct.attribute** }

@.str = private unnamed_addr constant [4 x i8] c"ras\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_ras_sysfs_remove_feature_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ras_sysfs_remove_feature_node(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ras*, align 8
  %4 = alloca [2 x %struct.attribute*], align 16
  %5 = alloca [2 x %struct.bin_attribute*], align 16
  %6 = alloca %struct.attribute_group, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %7)
  store %struct.amdgpu_ras* %8, %struct.amdgpu_ras** %3, align 8
  %9 = getelementptr inbounds [2 x %struct.attribute*], [2 x %struct.attribute*]* %4, i64 0, i64 0
  %10 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.attribute* %12, %struct.attribute** %9, align 8
  %13 = getelementptr inbounds %struct.attribute*, %struct.attribute** %9, i64 1
  store %struct.attribute* null, %struct.attribute** %13, align 8
  %14 = getelementptr inbounds [2 x %struct.bin_attribute*], [2 x %struct.bin_attribute*]* %5, i64 0, i64 0
  %15 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %15, i32 0, i32 0
  store %struct.bin_attribute* %16, %struct.bin_attribute** %14, align 8
  %17 = getelementptr inbounds %struct.bin_attribute*, %struct.bin_attribute** %14, i64 1
  store %struct.bin_attribute* null, %struct.bin_attribute** %17, align 8
  %18 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %6, i32 0, i32 1
  %20 = getelementptr inbounds [2 x %struct.bin_attribute*], [2 x %struct.bin_attribute*]* %5, i64 0, i64 0
  store %struct.bin_attribute** %20, %struct.bin_attribute*** %19, align 8
  %21 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %6, i32 0, i32 2
  %22 = getelementptr inbounds [2 x %struct.attribute*], [2 x %struct.attribute*]* %4, i64 0, i64 0
  store %struct.attribute** %22, %struct.attribute*** %21, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @sysfs_remove_group(i32* %26, %struct.attribute_group* %6)
  ret i32 0
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
