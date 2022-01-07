; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_firmware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_firmware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, %struct.firmware* }
%struct.firmware = type { i64, i64 }
%struct.cdn_firmware_header = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"firmware is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"active ucpu failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_firmware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_firmware_init(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.cdn_firmware_header*, align 8
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %9 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %10 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %9, i32 0, i32 1
  %11 = load %struct.firmware*, %struct.firmware** %10, align 8
  store %struct.firmware* %11, %struct.firmware** %7, align 8
  %12 = load %struct.firmware*, %struct.firmware** %7, align 8
  %13 = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cdn_firmware_header*
  store %struct.cdn_firmware_header* %15, %struct.cdn_firmware_header** %8, align 8
  %16 = load %struct.firmware*, %struct.firmware** %7, align 8
  %17 = getelementptr inbounds %struct.firmware, %struct.firmware* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.cdn_firmware_header*, %struct.cdn_firmware_header** %8, align 8
  %20 = getelementptr inbounds %struct.cdn_firmware_header, %struct.cdn_firmware_header* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @le32_to_cpu(i32 %21)
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %26 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %1
  %32 = load %struct.firmware*, %struct.firmware** %7, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cdn_firmware_header*, %struct.cdn_firmware_header** %8, align 8
  %36 = getelementptr inbounds %struct.cdn_firmware_header, %struct.cdn_firmware_header* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %5, align 8
  %40 = load %struct.firmware*, %struct.firmware** %7, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cdn_firmware_header*, %struct.cdn_firmware_header** %8, align 8
  %44 = getelementptr inbounds %struct.cdn_firmware_header, %struct.cdn_firmware_header* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.cdn_firmware_header*, %struct.cdn_firmware_header** %8, align 8
  %48 = getelementptr inbounds %struct.cdn_firmware_header, %struct.cdn_firmware_header* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %6, align 8
  %52 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.cdn_firmware_header*, %struct.cdn_firmware_header** %8, align 8
  %55 = getelementptr inbounds %struct.cdn_firmware_header, %struct.cdn_firmware_header* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.cdn_firmware_header*, %struct.cdn_firmware_header** %8, align 8
  %59 = getelementptr inbounds %struct.cdn_firmware_header, %struct.cdn_firmware_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @cdn_dp_load_firmware(%struct.cdn_dp_device* %52, i32* %53, i64 %56, i32* %57, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %31
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %81

66:                                               ; preds = %31
  %67 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %68 = call i32 @cdn_dp_set_firmware_active(%struct.cdn_dp_device* %67, i32 1)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %73 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %66
  %79 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %80 = call i32 @cdn_dp_event_config(%struct.cdn_dp_device* %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %71, %64, %24
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @cdn_dp_load_firmware(%struct.cdn_dp_device*, i32*, i64, i32*, i32) #1

declare dso_local i32 @cdn_dp_set_firmware_active(%struct.cdn_dp_device*, i32) #1

declare dso_local i32 @cdn_dp_event_config(%struct.cdn_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
