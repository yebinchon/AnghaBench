; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_parse_firmware_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_parse_firmware_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.falcon = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.falcon_fw_os_header_v1* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.falcon_fw_os_header_v1 = type { i32, i32, i32, i32 }
%struct.falcon_fw_bin_header_v1 = type { i64, i32, i64, i32, i32, i32 }

@PCI_VENDOR_ID_NVIDIA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"incorrect firmware magic\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unsupported firmware version\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"firmware image size inconsistency\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.falcon*)* @falcon_parse_firmware_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_parse_firmware_image(%struct.falcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.falcon*, align 8
  %4 = alloca %struct.falcon_fw_bin_header_v1*, align 8
  %5 = alloca %struct.falcon_fw_os_header_v1*, align 8
  store %struct.falcon* %0, %struct.falcon** %3, align 8
  %6 = load %struct.falcon*, %struct.falcon** %3, align 8
  %7 = getelementptr inbounds %struct.falcon, %struct.falcon* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %9 = load %struct.falcon_fw_os_header_v1*, %struct.falcon_fw_os_header_v1** %8, align 8
  %10 = bitcast %struct.falcon_fw_os_header_v1* %9 to i8*
  %11 = bitcast i8* %10 to %struct.falcon_fw_bin_header_v1*
  store %struct.falcon_fw_bin_header_v1* %11, %struct.falcon_fw_bin_header_v1** %4, align 8
  %12 = load %struct.falcon_fw_bin_header_v1*, %struct.falcon_fw_bin_header_v1** %4, align 8
  %13 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, %struct.falcon_fw_bin_header_v1* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI_VENDOR_ID_NVIDIA, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.falcon*, %struct.falcon** %3, align 8
  %19 = getelementptr inbounds %struct.falcon, %struct.falcon* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %104

24:                                               ; preds = %1
  %25 = load %struct.falcon_fw_bin_header_v1*, %struct.falcon_fw_bin_header_v1** %4, align 8
  %26 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, %struct.falcon_fw_bin_header_v1* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.falcon*, %struct.falcon** %3, align 8
  %31 = getelementptr inbounds %struct.falcon, %struct.falcon* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %104

36:                                               ; preds = %24
  %37 = load %struct.falcon_fw_bin_header_v1*, %struct.falcon_fw_bin_header_v1** %4, align 8
  %38 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, %struct.falcon_fw_bin_header_v1* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.falcon*, %struct.falcon** %3, align 8
  %41 = getelementptr inbounds %struct.falcon, %struct.falcon* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %39, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.falcon*, %struct.falcon** %3, align 8
  %47 = getelementptr inbounds %struct.falcon, %struct.falcon* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %104

52:                                               ; preds = %36
  %53 = load %struct.falcon*, %struct.falcon** %3, align 8
  %54 = getelementptr inbounds %struct.falcon, %struct.falcon* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load %struct.falcon_fw_os_header_v1*, %struct.falcon_fw_os_header_v1** %55, align 8
  %57 = load %struct.falcon_fw_bin_header_v1*, %struct.falcon_fw_bin_header_v1** %4, align 8
  %58 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, %struct.falcon_fw_bin_header_v1* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.falcon_fw_os_header_v1, %struct.falcon_fw_os_header_v1* %56, i64 %60
  store %struct.falcon_fw_os_header_v1* %61, %struct.falcon_fw_os_header_v1** %5, align 8
  %62 = load %struct.falcon_fw_bin_header_v1*, %struct.falcon_fw_bin_header_v1** %4, align 8
  %63 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, %struct.falcon_fw_bin_header_v1* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.falcon*, %struct.falcon** %3, align 8
  %66 = getelementptr inbounds %struct.falcon, %struct.falcon* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 4
  %69 = load %struct.falcon_fw_bin_header_v1*, %struct.falcon_fw_bin_header_v1** %4, align 8
  %70 = getelementptr inbounds %struct.falcon_fw_bin_header_v1, %struct.falcon_fw_bin_header_v1* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.falcon*, %struct.falcon** %3, align 8
  %73 = getelementptr inbounds %struct.falcon, %struct.falcon* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load %struct.falcon_fw_os_header_v1*, %struct.falcon_fw_os_header_v1** %5, align 8
  %77 = getelementptr inbounds %struct.falcon_fw_os_header_v1, %struct.falcon_fw_os_header_v1* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.falcon*, %struct.falcon** %3, align 8
  %80 = getelementptr inbounds %struct.falcon, %struct.falcon* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load %struct.falcon_fw_os_header_v1*, %struct.falcon_fw_os_header_v1** %5, align 8
  %84 = getelementptr inbounds %struct.falcon_fw_os_header_v1, %struct.falcon_fw_os_header_v1* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.falcon*, %struct.falcon** %3, align 8
  %87 = getelementptr inbounds %struct.falcon, %struct.falcon* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.falcon_fw_os_header_v1*, %struct.falcon_fw_os_header_v1** %5, align 8
  %91 = getelementptr inbounds %struct.falcon_fw_os_header_v1, %struct.falcon_fw_os_header_v1* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.falcon*, %struct.falcon** %3, align 8
  %94 = getelementptr inbounds %struct.falcon, %struct.falcon* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.falcon_fw_os_header_v1*, %struct.falcon_fw_os_header_v1** %5, align 8
  %98 = getelementptr inbounds %struct.falcon_fw_os_header_v1, %struct.falcon_fw_os_header_v1* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.falcon*, %struct.falcon** %3, align 8
  %101 = getelementptr inbounds %struct.falcon, %struct.falcon* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 8
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %52, %45, %29, %17
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
