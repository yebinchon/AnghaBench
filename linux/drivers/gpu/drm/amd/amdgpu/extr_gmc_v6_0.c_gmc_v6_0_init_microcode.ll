; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tahiti\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pitcairn\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"verde\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"oland\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"hainan\00", align 1
@mmMC_SEQ_MISC0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"amdgpu/si58_mc.bin\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_mc.bin\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"si_mc: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v6_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v6_0_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %16 [
    i32 129, label %11
    i32 130, label %12
    i32 128, label %13
    i32 131, label %14
    i32 132, label %15
  ]

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %18

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %18

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %18

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %18

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %15, %14, %13, %12, %11
  %19 = load i32, i32* @mmMC_SEQ_MISC0, align 4
  %20 = call i32 @RREG32(i32 %19)
  %21 = and i32 %20, -16777216
  %22 = lshr i32 %21, 24
  %23 = icmp eq i32 %22, 88
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %30 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @request_firmware(i32** %38, i8* %39, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @amdgpu_ucode_validate(i32* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %46
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %60)
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @release_firmware(i32* %65)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %56, %53
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @request_firmware(i32**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
