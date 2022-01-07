; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_debugfs_create_ctrl_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_debugfs_create_ctrl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_minor* }
%struct.drm_minor = type { i32 }
%struct.amdgpu_ras = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ras\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ras_ctrl\00", align 1
@S_IWUGO = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@amdgpu_ras_debugfs_ctrl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @amdgpu_ras_debugfs_create_ctrl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_ras_debugfs_create_ctrl_node(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ras*, align 8
  %4 = alloca %struct.drm_minor*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %5)
  store %struct.amdgpu_ras* %6, %struct.amdgpu_ras** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_minor*, %struct.drm_minor** %10, align 8
  store %struct.drm_minor* %11, %struct.drm_minor** %4, align 8
  %12 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %13 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @S_IWUGO, align 4
  %19 = load i32, i32* @S_IRUGO, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23, %struct.amdgpu_device* %24, i32* @amdgpu_ras_debugfs_ctrl_ops)
  %26 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.amdgpu_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
