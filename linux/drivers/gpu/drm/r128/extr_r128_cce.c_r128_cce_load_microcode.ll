; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_cce.c_r128_cce_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_cce.c_r128_cce_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.firmware = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"r128_cce\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"r128_cce: Failed to register firmware\0A\00", align 1
@FIRMWARE_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"r128_cce: Failed to load firmware \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"r128_cce: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R128_PM4_MICROCODE_ADDR = common dso_local global i32 0, align 4
@R128_PM4_MICROCODE_DATAH = common dso_local global i32 0, align 4
@R128_PM4_MICROCODE_DATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @r128_cce_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_load_microcode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call %struct.platform_device* @platform_device_register_simple(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32 0)
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = call i64 @IS_ERR(%struct.platform_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.platform_device* %16)
  store i32 %17, i32* %2, align 4
  br label %82

18:                                               ; preds = %1
  %19 = load i32, i32* @FIRMWARE_NAME, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @request_firmware(%struct.firmware** %5, i32 %19, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = call i32 @platform_device_unregister(%struct.platform_device* %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @FIRMWARE_NAME, align 4
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %82

31:                                               ; preds = %18
  %32 = load %struct.firmware*, %struct.firmware** %5, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 2048
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FIRMWARE_NAME, align 4
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %78

44:                                               ; preds = %31
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @r128_do_wait_for_idle(i32* %45)
  %47 = load %struct.firmware*, %struct.firmware** %5, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* @R128_PM4_MICROCODE_ADDR, align 4
  %52 = call i32 @R128_WRITE(i32 %51, i32 0)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %74, %44
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load i32, i32* @R128_PM4_MICROCODE_DATAH, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = call i32 @be32_to_cpup(i32* %62)
  %64 = call i32 @R128_WRITE(i32 %57, i32 %63)
  %65 = load i32, i32* @R128_PM4_MICROCODE_DATAL, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = call i32 @be32_to_cpup(i32* %71)
  %73 = call i32 @R128_WRITE(i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %53

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %77, %36
  %79 = load %struct.firmware*, %struct.firmware** %5, align 8
  %80 = call i32 @release_firmware(%struct.firmware* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %27, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local %struct.platform_device* @platform_device_register_simple(i8*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @r128_do_wait_for_idle(i32*) #1

declare dso_local i32 @R128_WRITE(i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
