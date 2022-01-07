; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-region.c_afu_mmio_region_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-region.c_afu_mmio_region_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_feature_platform_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dfl_afu_mmio_region = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.dfl_afu = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afu_mmio_region_add(%struct.dfl_feature_platform_data* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dfl_feature_platform_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dfl_afu_mmio_region*, align 8
  %13 = alloca %struct.dfl_afu*, align 8
  %14 = alloca i32, align 4
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %16 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.dfl_afu_mmio_region* @devm_kzalloc(i32* %18, i32 40, i32 %19)
  store %struct.dfl_afu_mmio_region* %20, %struct.dfl_afu_mmio_region** %12, align 8
  %21 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %12, align 8
  %22 = icmp ne %struct.dfl_afu_mmio_region* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %89

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %12, align 8
  %29 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %12, align 8
  %32 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %12, align 8
  %35 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %12, align 8
  %38 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %40 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %43 = call %struct.dfl_afu* @dfl_fpga_pdata_get_private(%struct.dfl_feature_platform_data* %42)
  store %struct.dfl_afu* %43, %struct.dfl_afu** %13, align 8
  %44 = load %struct.dfl_afu*, %struct.dfl_afu** %13, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @get_region_by_index(%struct.dfl_afu* %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %26
  %49 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %50 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @EEXIST, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  br label %81

54:                                               ; preds = %26
  %55 = load i8*, i8** %9, align 8
  %56 = call i8* @PAGE_ALIGN(i8* %55)
  store i8* %56, i8** %9, align 8
  %57 = load %struct.dfl_afu*, %struct.dfl_afu** %13, align 8
  %58 = getelementptr inbounds %struct.dfl_afu, %struct.dfl_afu* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %12, align 8
  %61 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %12, align 8
  %63 = getelementptr inbounds %struct.dfl_afu_mmio_region, %struct.dfl_afu_mmio_region* %62, i32 0, i32 0
  %64 = load %struct.dfl_afu*, %struct.dfl_afu** %13, align 8
  %65 = getelementptr inbounds %struct.dfl_afu, %struct.dfl_afu* %64, i32 0, i32 2
  %66 = call i32 @list_add(i32* %63, i32* %65)
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.dfl_afu*, %struct.dfl_afu** %13, align 8
  %69 = getelementptr inbounds %struct.dfl_afu, %struct.dfl_afu* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %67, i64 %71
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.dfl_afu*, %struct.dfl_afu** %13, align 8
  %75 = getelementptr inbounds %struct.dfl_afu, %struct.dfl_afu* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %79 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %6, align 4
  br label %89

81:                                               ; preds = %48
  %82 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %7, align 8
  %83 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.dfl_afu_mmio_region*, %struct.dfl_afu_mmio_region** %12, align 8
  %87 = call i32 @devm_kfree(i32* %85, %struct.dfl_afu_mmio_region* %86)
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %81, %54, %23
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.dfl_afu_mmio_region* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dfl_afu* @dfl_fpga_pdata_get_private(%struct.dfl_feature_platform_data*) #1

declare dso_local i64 @get_region_by_index(%struct.dfl_afu*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @PAGE_ALIGN(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.dfl_afu_mmio_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
