; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_insert_iommu_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_msm_iommu.c_insert_iommu_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.msm_iommu_ctx_dev* }
%struct.msm_iommu_ctx_dev = type { i32, i64*, i32, i32 }
%struct.msm_iommu_dev = type { i32 }
%struct.of_phandle_args = type { i64* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Stream ID 0x%hx repeated; ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.msm_iommu_dev**, %struct.of_phandle_args*)* @insert_iommu_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_iommu_master(%struct.device* %0, %struct.msm_iommu_dev** %1, %struct.of_phandle_args* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.msm_iommu_dev**, align 8
  %6 = alloca %struct.of_phandle_args*, align 8
  %7 = alloca %struct.msm_iommu_ctx_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.msm_iommu_dev** %1, %struct.msm_iommu_dev*** %5, align 8
  store %struct.of_phandle_args* %2, %struct.of_phandle_args** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %11, align 8
  store %struct.msm_iommu_ctx_dev* %12, %struct.msm_iommu_ctx_dev** %7, align 8
  %13 = load %struct.msm_iommu_dev**, %struct.msm_iommu_dev*** %5, align 8
  %14 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %13, align 8
  %15 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.msm_iommu_ctx_dev* @kzalloc(i32 24, i32 %19)
  store %struct.msm_iommu_ctx_dev* %20, %struct.msm_iommu_ctx_dev** %7, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %7, align 8
  %25 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %7, align 8
  %27 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %26, i32 0, i32 2
  %28 = load %struct.msm_iommu_dev**, %struct.msm_iommu_dev*** %5, align 8
  %29 = load %struct.msm_iommu_dev*, %struct.msm_iommu_dev** %28, align 8
  %30 = getelementptr inbounds %struct.msm_iommu_dev, %struct.msm_iommu_dev* %29, i32 0, i32 0
  %31 = call i32 @list_add(i32* %27, i32* %30)
  %32 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %7, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.msm_iommu_ctx_dev* %32, %struct.msm_iommu_ctx_dev** %35, align 8
  br label %36

36:                                               ; preds = %18, %3
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %7, align 8
  %40 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %7, align 8
  %45 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %52 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dev_warn(%struct.device* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %80

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %37

65:                                               ; preds = %37
  %66 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %67 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %7, align 8
  %72 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.msm_iommu_ctx_dev*, %struct.msm_iommu_ctx_dev** %7, align 8
  %75 = getelementptr inbounds %struct.msm_iommu_ctx_dev, %struct.msm_iommu_ctx_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %73, i64 %78
  store i64 %70, i64* %79, align 8
  br label %80

80:                                               ; preds = %65, %57
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.msm_iommu_ctx_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
