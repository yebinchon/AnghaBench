; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_kms.c_qxl_check_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_kms.c_qxl_check_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { i32, %struct.qxl_rom* }
%struct.qxl_rom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"bad rom signature %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Device Version %d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Compression level %d log level %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%d io pages at offset 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%d byte draw area at offset 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"RAM header offset: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qxl_device*)* @qxl_check_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_check_device(%struct.qxl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca %struct.qxl_rom*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  %5 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %6 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %5, i32 0, i32 1
  %7 = load %struct.qxl_rom*, %struct.qxl_rom** %6, align 8
  store %struct.qxl_rom* %7, %struct.qxl_rom** %4, align 8
  %8 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %9 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 1330796625
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %14 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %19 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %22 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %26 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %29 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %33 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %36 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %40 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %43 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %47 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %50 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.qxl_rom*, %struct.qxl_rom** %4, align 8
  %52 = getelementptr inbounds %struct.qxl_rom, %struct.qxl_rom* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, ...) @DRM_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %17, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
