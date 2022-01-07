; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f54_data = type { i32, %struct.v4l2_pix_format, i8*, i8*, %struct.TYPE_2__* }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.rmi_device* }
%struct.rmi_device = type { i32 }
%struct.rmi_driver_data = type { i64, i64 }

@F54_REPORT_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f54_data*, i32)* @rmi_f54_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f54_set_input(%struct.f54_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f54_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rmi_device*, align 8
  %7 = alloca %struct.rmi_driver_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.f54_data* %0, %struct.f54_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %14 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.rmi_device*, %struct.rmi_device** %16, align 8
  store %struct.rmi_device* %17, %struct.rmi_device** %6, align 8
  %18 = load %struct.rmi_device*, %struct.rmi_device** %6, align 8
  %19 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %18, i32 0, i32 0
  %20 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %19)
  store %struct.rmi_driver_data* %20, %struct.rmi_driver_data** %7, align 8
  %21 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %7, align 8
  %22 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = inttoptr i64 %23 to i8*
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %29 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i8* [ %26, %25 ], [ %30, %27 ]
  store i8* %32, i8** %8, align 8
  %33 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %7, align 8
  %34 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = inttoptr i64 %35 to i8*
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %41 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i8* [ %38, %37 ], [ %42, %39 ]
  store i8* %44, i8** %9, align 8
  %45 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %46 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %45, i32 0, i32 1
  store %struct.v4l2_pix_format* %46, %struct.v4l2_pix_format** %10, align 8
  %47 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @rmi_f54_get_reptype(%struct.f54_data* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @F54_REPORT_NONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %103

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 6
  %60 = call i32 @rmi_f54_get_pixel_fmt(i32 %57, i32* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %3, align 4
  br label %103

65:                                               ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.f54_data*, %struct.f54_data** %4, align 8
  %68 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @V4L2_COLORSPACE_RAW, align 4
  %81 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %65, %63, %53
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_f54_get_reptype(%struct.f54_data*, i32) #1

declare dso_local i32 @rmi_f54_get_pixel_fmt(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
