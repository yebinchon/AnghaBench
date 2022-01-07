; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ucode.c_radeon_ucode_print_common_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ucode.c_radeon_ucode_print_common_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_firmware_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"size_bytes: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"header_size_bytes: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"header_version_major: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"header_version_minor: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ip_version_major: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ip_version_minor: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ucode_version: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ucode_size_bytes: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"ucode_array_offset_bytes: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"crc32: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.common_firmware_header*)* @radeon_ucode_print_common_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_ucode_print_common_hdr(%struct.common_firmware_header* %0) #0 {
  %2 = alloca %struct.common_firmware_header*, align 8
  store %struct.common_firmware_header* %0, %struct.common_firmware_header** %2, align 8
  %3 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %4 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @le32_to_cpu(i32 %5)
  %7 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %9 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %14 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %19 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %24 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %29 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %34 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %36)
  %38 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %39 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %44 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %46)
  %48 = load %struct.common_firmware_header*, %struct.common_firmware_header** %2, align 8
  %49 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %51)
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
