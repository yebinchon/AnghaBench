; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_config_id_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_config_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.komeda_dev = type { i32, %struct.komeda_pipeline** }
%struct.komeda_pipeline = type { i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.komeda_config_id = type { i64 }

@KOMEDA_FMT_RICH_LAYER = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @config_id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_id_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.komeda_dev*, align 8
  %8 = alloca %struct.komeda_pipeline*, align 8
  %9 = alloca %union.komeda_config_id, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.komeda_dev* @dev_to_mdev(%struct.device* %11)
  store %struct.komeda_dev* %12, %struct.komeda_dev** %7, align 8
  %13 = load %struct.komeda_dev*, %struct.komeda_dev** %7, align 8
  %14 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %13, i32 0, i32 1
  %15 = load %struct.komeda_pipeline**, %struct.komeda_pipeline*** %14, align 8
  %16 = getelementptr inbounds %struct.komeda_pipeline*, %struct.komeda_pipeline** %15, i64 0
  %17 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %16, align 8
  store %struct.komeda_pipeline* %17, %struct.komeda_pipeline** %8, align 8
  %18 = call i32 @memset(%union.komeda_config_id* %9, i32 0, i32 8)
  %19 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %20 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = bitcast %union.komeda_config_id* %9 to i32*
  store i32 %26, i32* %27, align 8
  %28 = load %struct.komeda_dev*, %struct.komeda_dev** %7, align 8
  %29 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = bitcast %union.komeda_config_id* %9 to i32*
  store i32 %30, i32* %31, align 8
  %32 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %33 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = bitcast %union.komeda_config_id* %9 to i32*
  store i32 %34, i32* %35, align 8
  %36 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %37 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = bitcast %union.komeda_config_id* %9 to i32*
  store i32 %38, i32* %39, align 8
  %40 = bitcast %union.komeda_config_id* %9 to i64*
  store i64 0, i64* %40, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %64, %3
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %44 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %49 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @KOMEDA_FMT_RICH_LAYER, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = bitcast %union.komeda_config_id* %9 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %59, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %41

67:                                               ; preds = %41
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = bitcast %union.komeda_config_id* %9 to i32*
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @snprintf(i8* %68, i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %71)
  ret i32 %72
}

declare dso_local %struct.komeda_dev* @dev_to_mdev(%struct.device*) #1

declare dso_local i32 @memset(%union.komeda_config_id*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
