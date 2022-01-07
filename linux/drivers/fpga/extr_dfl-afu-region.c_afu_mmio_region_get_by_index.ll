; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-region.c_afu_mmio_region_get_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-region.c_afu_mmio_region_get_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_feature_platform_data = type { i32 }
%struct.dfl_afu_mmio_region = type { i32 }
%struct.dfl_afu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afu_mmio_region_get_by_index(%struct.dfl_feature_platform_data* %0, i32 %1, %struct.dfl_afu_mmio_region* %2) #0 {
  %4 = alloca %struct.dfl_feature_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dfl_afu_mmio_region*, align 8
  %7 = alloca %struct.dfl_afu_mmio_region*, align 8
  %8 = alloca %struct.dfl_afu*, align 8
  %9 = alloca i32, align 4
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dfl_afu_mmio_region* %2, %struct.dfl_afu_mmio_region** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %11 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %14 = call %struct.dfl_afu* @dfl_fpga_pdata_get_private(%struct.dfl_feature_platform_data* %13)
  store %struct.dfl_afu* %14, %struct.dfl_afu** %8, align 8
  %15 = load %struct.dfl_afu*, %struct.dfl_afu** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.dfl_afu_mmio_region* @get_region_by_index(%struct.dfl_afu* %15, i32 %16)
  store %struct.dfl_afu_mmio_region* %17, %struct.dfl_afu_mmio_region** %7, align 8
  %18 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %7, align 8
  %19 = icmp ne %struct.dfl_afu_mmio_region* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %6, align 8
  %25 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %7, align 8
  %26 = bitcast %struct.dfl_afu_mmio_region* %24 to i8*
  %27 = bitcast %struct.dfl_afu_mmio_region* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dfl_afu* @dfl_fpga_pdata_get_private(%struct.dfl_feature_platform_data*) #1

declare dso_local %struct.dfl_afu_mmio_region* @get_region_by_index(%struct.dfl_afu*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
