; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_alloc_etr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_alloc_etr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_buf = type { i32, i32, i64 }
%struct.tmc_drvdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TMC_ETR_SG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i64 0, align 8
@ETR_MODE_FLAT = common dso_local global i32 0, align 4
@ETR_MODE_ETR_SG = common dso_local global i32 0, align 4
@ETR_MODE_CATU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"allocated buffer of size %ldKB in mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.etr_buf* (%struct.tmc_drvdata*, i64, i32, i32, i8**)* @tmc_alloc_etr_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.etr_buf* @tmc_alloc_etr_buf(%struct.tmc_drvdata* %0, i64 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.etr_buf*, align 8
  %7 = alloca %struct.tmc_drvdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.etr_buf*, align 8
  %18 = alloca %struct.device*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %22 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %18, align 8
  %25 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %26 = load i32, i32* @TMC_ETR_SG, align 4
  %27 = call i32 @tmc_etr_has_cap(%struct.tmc_drvdata* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.device*, %struct.device** %18, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iommu_get_domain_for_dev(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %33 = call i32 @tmc_etr_get_catu_device(%struct.tmc_drvdata* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %5
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %5
  %44 = phi i1 [ true, %5 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.etr_buf* @kzalloc(i32 16, i32 %46)
  store %struct.etr_buf* %47, %struct.etr_buf** %17, align 8
  %48 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %49 = icmp ne %struct.etr_buf* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.etr_buf* @ERR_PTR(i32 %52)
  store %struct.etr_buf* %53, %struct.etr_buf** %6, align 8
  br label %123

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %57 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load i8**, i8*** %11, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @SZ_1M, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66, %63, %60
  %71 = load i32, i32* @ETR_MODE_FLAT, align 4
  %72 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %73 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i8**, i8*** %11, align 8
  %76 = call i32 @tmc_etr_mode_alloc_buf(i32 %71, %struct.tmc_drvdata* %72, %struct.etr_buf* %73, i32 %74, i8** %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %70, %66, %54
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* @ETR_MODE_ETR_SG, align 4
  %85 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %86 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i8**, i8*** %11, align 8
  %89 = call i32 @tmc_etr_mode_alloc_buf(i32 %84, %struct.tmc_drvdata* %85, %struct.etr_buf* %86, i32 %87, i8** %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %83, %80, %77
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* @ETR_MODE_CATU, align 4
  %98 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %7, align 8
  %99 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i8**, i8*** %11, align 8
  %102 = call i32 @tmc_etr_mode_alloc_buf(i32 %97, %struct.tmc_drvdata* %98, %struct.etr_buf* %99, i32 %100, i8** %101)
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %96, %93, %90
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %108 = call i32 @kfree(%struct.etr_buf* %107)
  %109 = load i32, i32* %12, align 4
  %110 = call %struct.etr_buf* @ERR_PTR(i32 %109)
  store %struct.etr_buf* %110, %struct.etr_buf** %6, align 8
  br label %123

111:                                              ; preds = %103
  %112 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %113 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %112, i32 0, i32 1
  %114 = call i32 @refcount_set(i32* %113, i32 1)
  %115 = load %struct.device*, %struct.device** %18, align 8
  %116 = load i64, i64* %8, align 8
  %117 = lshr i64 %116, 10
  %118 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %119 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dev_dbg(%struct.device* %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %117, i32 %120)
  %122 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  store %struct.etr_buf* %122, %struct.etr_buf** %6, align 8
  br label %123

123:                                              ; preds = %111, %106, %50
  %124 = load %struct.etr_buf*, %struct.etr_buf** %6, align 8
  ret %struct.etr_buf* %124
}

declare dso_local i32 @tmc_etr_has_cap(%struct.tmc_drvdata*, i32) #1

declare dso_local i32 @iommu_get_domain_for_dev(i32) #1

declare dso_local i32 @tmc_etr_get_catu_device(%struct.tmc_drvdata*) #1

declare dso_local %struct.etr_buf* @kzalloc(i32, i32) #1

declare dso_local %struct.etr_buf* @ERR_PTR(i32) #1

declare dso_local i32 @tmc_etr_mode_alloc_buf(i32, %struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**) #1

declare dso_local i32 @kfree(%struct.etr_buf*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
