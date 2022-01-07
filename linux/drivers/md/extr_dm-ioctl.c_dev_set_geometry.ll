; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dev_set_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_dev_set_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dm_ioctl = type { i32, i8*, i64 }
%struct.mapped_device = type { i32 }
%struct.hd_geometry = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid geometry supplied.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%lu %lu %lu %lu%c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to interpret geometry settings.\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Geometry exceeds range limits.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dm_ioctl*, i64)* @dev_set_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_set_geometry(%struct.file* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dm_ioctl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mapped_device*, align 8
  %11 = alloca %struct.hd_geometry, align 8
  %12 = alloca [4 x i64], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %18 = bitcast %struct.dm_ioctl* %17 to i8*
  %19 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %20 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  store i8* %23, i8** %13, align 8
  %24 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %25 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %24)
  store %struct.mapped_device* %25, %struct.mapped_device** %10, align 8
  %26 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  %27 = icmp ne %struct.mapped_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %101

31:                                               ; preds = %3
  %32 = load i8*, i8** %13, align 8
  %33 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %34 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ult i8* %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %13, align 8
  %39 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %40 = bitcast %struct.dm_ioctl* %39 to i8*
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr i8, i8* %40, i64 %41
  %43 = call i64 @invalid_str(i8* %38, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37, %31
  %46 = call i32 @DMWARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %97

47:                                               ; preds = %37
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  %56 = call i32 @sscanf(i8* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64* %49, i64* %51, i64* %53, i64* %55, i8* %14)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 4
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = call i32 @DMWARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %97

61:                                               ; preds = %47
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %63 = load i64, i64* %62, align 16
  %64 = icmp ugt i64 %63, 65535
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %67, 255
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %71 = load i64, i64* %70, align 16
  %72 = icmp ugt i64 %71, 255
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ULONG_MAX, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %69, %65, %61
  %79 = call i32 @DMWARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %97

80:                                               ; preds = %73
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %82 = load i64, i64* %81, align 16
  %83 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %11, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %11, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %88 = load i64, i64* %87, align 16
  %89 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %11, i32 0, i32 2
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %11, i32 0, i32 3
  store i64 %91, i64* %92, align 8
  %93 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  %94 = call i32 @dm_set_geometry(%struct.mapped_device* %93, %struct.hd_geometry* %11)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.dm_ioctl*, %struct.dm_ioctl** %6, align 8
  %96 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %80, %78, %59, %45
  %98 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  %99 = call i32 @dm_put(%struct.mapped_device* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i64 @invalid_str(i8*, i8*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i64*, i64*, i8*) #1

declare dso_local i32 @dm_set_geometry(%struct.mapped_device*, %struct.hd_geometry*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
