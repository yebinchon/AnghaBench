; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_main.c_udl_parse_vendor_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_main.c_udl_parse_vendor_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.udl_device = type { i32 }

@MAX_VENDOR_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vendor descriptor length:%x data:%11ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"DL chip limited to %d pixel modes\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unrecognized vendor firmware descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.usb_device*)* @udl_parse_vendor_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_parse_vendor_descriptor(%struct.drm_device* %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.udl_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = call %struct.udl_device* @to_udl(%struct.drm_device* %14)
  store %struct.udl_device* %15, %struct.udl_device** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @MAX_VENDOR_DESCRIPTOR_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 %16, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

22:                                               ; preds = %2
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %7, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @MAX_VENDOR_DESCRIPTOR_SIZE, align 4
  %27 = call i32 @usb_get_descriptor(%struct.usb_device* %24, i32 95, i32 0, i8* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 5
  br i1 %29, label %30, label %108

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @DRM_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %66, label %40

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 95
  br i1 %45, label %66, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %66, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 2
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %52, %46, %40, %30
  br label %109

67:                                               ; preds = %58
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %102, %67
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %7, align 8
  %90 = load i32, i32* %12, align 4
  switch i32 %90, label %101 [
    i32 512, label %91
  ]

91:                                               ; preds = %78
  %92 = load i8*, i8** %7, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.udl_device*, %struct.udl_device** %6, align 8
  %100 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %102

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %91
  %103 = load i32, i32* %11, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %7, align 8
  br label %74

107:                                              ; preds = %74
  br label %108

108:                                              ; preds = %107, %22
  br label %111

109:                                              ; preds = %66
  %110 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %108
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @kfree(i8* %112)
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.udl_device* @to_udl(%struct.drm_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, i8*, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
