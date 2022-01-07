; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_maybe_resize_data_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_maybe_resize_data_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i64, %struct.pool_c* }
%struct.pool_c = type { %struct.pool* }
%struct.pool = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"%s: failed to retrieve data device size\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: pool target (%llu blocks) too small: expected %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: unable to grow the data device until repaired.\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%s: growing the data device from %llu to %llu blocks\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"dm_pool_resize_data_dev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32*)* @maybe_resize_data_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_resize_data_dev(%struct.dm_target* %0, i32* %1) #0 {
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
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 1
  %13 = load %struct.pool_c*, %struct.pool_c** %12, align 8
  store %struct.pool_c* %13, %struct.pool_c** %7, align 8
  %14 = load %struct.pool_c*, %struct.pool_c** %7, align 8
  %15 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %14, i32 0, i32 0
  %16 = load %struct.pool*, %struct.pool** %15, align 8
  store %struct.pool* %16, %struct.pool** %8, align 8
  %17 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.pool*, %struct.pool** %8, align 8
  %23 = getelementptr inbounds %struct.pool, %struct.pool* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sector_div(i64 %21, i32 %24)
  %26 = load %struct.pool*, %struct.pool** %8, align 8
  %27 = getelementptr inbounds %struct.pool, %struct.pool* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dm_pool_get_data_dev_size(i32 %28, i64* %10)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.pool*, %struct.pool** %8, align 8
  %34 = getelementptr inbounds %struct.pool, %struct.pool* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dm_device_name(i32 %35)
  %37 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %97

39:                                               ; preds = %2
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.pool*, %struct.pool** %8, align 8
  %45 = getelementptr inbounds %struct.pool, %struct.pool* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dm_device_name(i32 %46)
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %48, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %97

53:                                               ; preds = %39
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  %58 = load %struct.pool*, %struct.pool** %8, align 8
  %59 = getelementptr inbounds %struct.pool, %struct.pool* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @dm_pool_metadata_needs_check(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.pool*, %struct.pool** %8, align 8
  %65 = getelementptr inbounds %struct.pool, %struct.pool* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dm_device_name(i32 %66)
  %68 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  store i32 0, i32* %3, align 4
  br label %97

69:                                               ; preds = %57
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.pool*, %struct.pool** %8, align 8
  %74 = getelementptr inbounds %struct.pool, %struct.pool* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dm_device_name(i32 %75)
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @DMINFO(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %76, i64 %77, i64 %78)
  br label %80

80:                                               ; preds = %72, %69
  %81 = load %struct.pool*, %struct.pool** %8, align 8
  %82 = getelementptr inbounds %struct.pool, %struct.pool* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @dm_pool_resize_data_dev(i32 %83, i64 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.pool*, %struct.pool** %8, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @metadata_operation_failed(%struct.pool* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %97

93:                                               ; preds = %80
  %94 = load i32*, i32** %5, align 8
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %53
  br label %96

96:                                               ; preds = %95
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %88, %63, %43, %32
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @sector_div(i64, i32) #1

declare dso_local i32 @dm_pool_get_data_dev_size(i32, i64*) #1

declare dso_local i32 @DMERR(i8*, i32, ...) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i64 @dm_pool_metadata_needs_check(i32) #1

declare dso_local i32 @DMINFO(i8*, i32, i64, i64) #1

declare dso_local i32 @dm_pool_resize_data_dev(i32, i64) #1

declare dso_local i32 @metadata_operation_failed(%struct.pool*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
