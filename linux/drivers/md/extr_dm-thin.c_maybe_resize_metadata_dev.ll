; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_maybe_resize_metadata_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_maybe_resize_metadata_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.pool* }
%struct.pool = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"%s: failed to retrieve metadata device size\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: metadata device (%llu blocks) too small: expected %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"%s: unable to grow the metadata device until repaired.\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"%s: growing the metadata device from %llu to %llu blocks\00", align 1
@PM_OUT_OF_METADATA_SPACE = common dso_local global i64 0, align 8
@PM_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"dm_pool_resize_metadata_dev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32*)* @maybe_resize_metadata_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_resize_metadata_dev(%struct.dm_target* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pool_c*, align 8
  %8 = alloca %struct.pool*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.pool_c*, %struct.pool_c** %12, align 8
  store %struct.pool_c* %13, %struct.pool_c** %7, align 8
  %14 = load %struct.pool_c*, %struct.pool_c** %7, align 8
  %15 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %14, i32 0, i32 0
  %16 = load %struct.pool*, %struct.pool** %15, align 8
  store %struct.pool* %16, %struct.pool** %8, align 8
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.pool*, %struct.pool** %8, align 8
  %19 = getelementptr inbounds %struct.pool, %struct.pool* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @get_metadata_dev_size_in_blocks(i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load %struct.pool*, %struct.pool** %8, align 8
  %23 = getelementptr inbounds %struct.pool, %struct.pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dm_pool_get_metadata_dev_size(i32 %24, i64* %10)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.pool*, %struct.pool** %8, align 8
  %30 = getelementptr inbounds %struct.pool, %struct.pool* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dm_device_name(i32 %31)
  %33 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %102

35:                                               ; preds = %2
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.pool*, %struct.pool** %8, align 8
  %41 = getelementptr inbounds %struct.pool, %struct.pool* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dm_device_name(i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %44, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %102

49:                                               ; preds = %35
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %49
  %54 = load %struct.pool*, %struct.pool** %8, align 8
  %55 = getelementptr inbounds %struct.pool, %struct.pool* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @dm_pool_metadata_needs_check(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.pool*, %struct.pool** %8, align 8
  %61 = getelementptr inbounds %struct.pool, %struct.pool* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dm_device_name(i32 %62)
  %64 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 0, i32* %3, align 4
  br label %102

65:                                               ; preds = %53
  %66 = load %struct.pool*, %struct.pool** %8, align 8
  %67 = getelementptr inbounds %struct.pool, %struct.pool* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @warn_if_metadata_device_too_big(i32 %68)
  %70 = load %struct.pool*, %struct.pool** %8, align 8
  %71 = getelementptr inbounds %struct.pool, %struct.pool* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dm_device_name(i32 %72)
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @DMINFO(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %73, i64 %74, i64 %75)
  %77 = load %struct.pool*, %struct.pool** %8, align 8
  %78 = call i64 @get_pool_mode(%struct.pool* %77)
  %79 = load i64, i64* @PM_OUT_OF_METADATA_SPACE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load %struct.pool*, %struct.pool** %8, align 8
  %83 = load i32, i32* @PM_WRITE, align 4
  %84 = call i32 @set_pool_mode(%struct.pool* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %65
  %86 = load %struct.pool*, %struct.pool** %8, align 8
  %87 = getelementptr inbounds %struct.pool, %struct.pool* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @dm_pool_resize_metadata_dev(i32 %88, i64 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.pool*, %struct.pool** %8, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @metadata_operation_failed(%struct.pool* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %102

98:                                               ; preds = %85
  %99 = load i32*, i32** %5, align 8
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %98, %49
  br label %101

101:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %93, %59, %39, %28
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @get_metadata_dev_size_in_blocks(i32) #1

declare dso_local i32 @dm_pool_get_metadata_dev_size(i32, i64*) #1

declare dso_local i32 @DMERR(i8*, i32, ...) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i64 @dm_pool_metadata_needs_check(i32) #1

declare dso_local i32 @warn_if_metadata_device_too_big(i32) #1

declare dso_local i32 @DMINFO(i8*, i32, i64, i64) #1

declare dso_local i64 @get_pool_mode(%struct.pool*) #1

declare dso_local i32 @set_pool_mode(%struct.pool*, i32) #1

declare dso_local i32 @dm_pool_resize_metadata_dev(i32, i64) #1

declare dso_local i32 @metadata_operation_failed(%struct.pool*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
