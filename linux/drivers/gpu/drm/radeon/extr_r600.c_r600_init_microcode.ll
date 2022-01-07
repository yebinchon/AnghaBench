; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"RV770\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"R600\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"RV610\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"RV630\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"RV620\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"RV635\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"RV670\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"RS780\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"R700\00", align 1
@RV770_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"RV730\00", align 1
@RV730_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"RV710\00", align 1
@RV710_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"RV740\00", align 1
@RV740_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"CEDAR\00", align 1
@CEDAR_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"REDWOOD\00", align 1
@REDWOOD_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"JUNIPER\00", align 1
@JUNIPER_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"CYPRESS\00", align 1
@CYPRESS_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"PALM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"SUMO\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"SUMO2\00", align 1
@EVERGREEN_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@EVERGREEN_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@EVERGREEN_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@R700_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@R700_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@R700_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@R600_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@R600_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@R600_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"Loading %s Microcode\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"radeon/%s_pfp.bin\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"r600_cp: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"radeon/%s_me.bin\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"radeon/%s_rlc.bin\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"r600_rlc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"radeon/%s_smc.bin\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"smc: error loading firmware \22%s\22\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"smc: Bogus length %zu in firmware \22%s\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"r600_cp: Failed to load firmware \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_init_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [30 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i64 0, i64* %9, align 8
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %50 [
    i32 142, label %16
    i32 138, label %17
    i32 136, label %18
    i32 137, label %19
    i32 135, label %20
    i32 134, label %21
    i32 140, label %22
    i32 139, label %22
    i32 130, label %23
    i32 132, label %26
    i32 133, label %29
    i32 131, label %32
    i32 147, label %35
    i32 141, label %38
    i32 144, label %41
    i32 146, label %44
    i32 145, label %44
    i32 143, label %47
    i32 129, label %48
    i32 128, label %49
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

22:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %52

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %24 = load i32, i32* @RV770_SMC_UCODE_SIZE, align 4
  %25 = call i64 @ALIGN(i32 %24, i32 4)
  store i64 %25, i64* %9, align 8
  br label %52

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  %27 = load i32, i32* @RV730_SMC_UCODE_SIZE, align 4
  %28 = call i64 @ALIGN(i32 %27, i32 4)
  store i64 %28, i64* %9, align 8
  br label %52

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  %30 = load i32, i32* @RV710_SMC_UCODE_SIZE, align 4
  %31 = call i64 @ALIGN(i32 %30, i32 4)
  store i64 %31, i64* %9, align 8
  br label %52

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  %33 = load i32, i32* @RV740_SMC_UCODE_SIZE, align 4
  %34 = call i64 @ALIGN(i32 %33, i32 4)
  store i64 %34, i64* %9, align 8
  br label %52

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  %36 = load i32, i32* @CEDAR_SMC_UCODE_SIZE, align 4
  %37 = call i64 @ALIGN(i32 %36, i32 4)
  store i64 %37, i64* %9, align 8
  br label %52

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  %39 = load i32, i32* @REDWOOD_SMC_UCODE_SIZE, align 4
  %40 = call i64 @ALIGN(i32 %39, i32 4)
  store i64 %40, i64* %9, align 8
  br label %52

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  %42 = load i32, i32* @JUNIPER_SMC_UCODE_SIZE, align 4
  %43 = call i64 @ALIGN(i32 %42, i32 4)
  store i64 %43, i64* %9, align 8
  br label %52

44:                                               ; preds = %1, %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %5, align 8
  %45 = load i32, i32* @CYPRESS_SMC_UCODE_SIZE, align 4
  %46 = call i64 @ALIGN(i32 %45, i32 4)
  store i64 %46, i64* %9, align 8
  br label %52

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %4, align 8
  br label %52

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %4, align 8
  br label %52

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %4, align 8
  br label %52

50:                                               ; preds = %1
  %51 = call i32 (...) @BUG()
  br label %52

52:                                               ; preds = %50, %49, %48, %47, %44, %41, %38, %35, %32, %29, %26, %23, %22, %21, %20, %19, %18, %17, %16
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 147
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* @EVERGREEN_PFP_UCODE_SIZE, align 4
  %59 = mul nsw i32 %58, 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load i32, i32* @EVERGREEN_PM4_UCODE_SIZE, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %7, align 8
  %64 = load i32, i32* @EVERGREEN_RLC_UCODE_SIZE, align 4
  %65 = mul nsw i32 %64, 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %8, align 8
  br label %93

67:                                               ; preds = %52
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 130
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* @R700_PFP_UCODE_SIZE, align 4
  %74 = mul nsw i32 %73, 4
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %6, align 8
  %76 = load i32, i32* @R700_PM4_UCODE_SIZE, align 4
  %77 = mul nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %7, align 8
  %79 = load i32, i32* @R700_RLC_UCODE_SIZE, align 4
  %80 = mul nsw i32 %79, 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %8, align 8
  br label %92

82:                                               ; preds = %67
  %83 = load i32, i32* @R600_PFP_UCODE_SIZE, align 4
  %84 = mul nsw i32 %83, 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %6, align 8
  %86 = load i32, i32* @R600_PM4_UCODE_SIZE, align 4
  %87 = mul nsw i32 %86, 12
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %7, align 8
  %89 = load i32, i32* @R600_RLC_UCODE_SIZE, align 4
  %90 = mul nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %82, %72
  br label %93

93:                                               ; preds = %92, %57
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* %94)
  %96 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @snprintf(i8* %96, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %97)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 4
  %101 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @request_firmware(%struct.TYPE_3__** %100, i8* %101, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  br label %244

109:                                              ; preds = %93
  %110 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %109
  %118 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %124 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i64 %122, i8* %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %11, align 4
  br label %244

127:                                              ; preds = %109
  %128 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @snprintf(i8* %128, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %129)
  %131 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 3
  %133 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %134 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @request_firmware(%struct.TYPE_3__** %132, i8* %133, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  br label %244

141:                                              ; preds = %127
  %142 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 3
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %7, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %141
  %150 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 3
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %156 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i64 %154, i8* %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %149, %141
  %160 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @snprintf(i8* %160, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* %161)
  %163 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %166 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @request_firmware(%struct.TYPE_3__** %164, i8* %165, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  br label %244

173:                                              ; preds = %159
  %174 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %175 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %174, i32 0, i32 2
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %8, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %173
  %182 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 2
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %188 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i64 %186, i8* %187)
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %181, %173
  %192 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp sge i32 %194, 130
  br i1 %195, label %196, label %243

196:                                              ; preds = %191
  %197 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sle i32 %199, 145
  br i1 %200, label %201, label %243

201:                                              ; preds = %196
  %202 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %203 = load i8*, i8** %5, align 8
  %204 = call i32 @snprintf(i8* %202, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %203)
  %205 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %206 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %208 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @request_firmware(%struct.TYPE_3__** %206, i8* %207, i32 %210)
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %201
  %215 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %216 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i8* %215)
  %217 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 1
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = call i32 @release_firmware(%struct.TYPE_3__* %219)
  %221 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %222 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %221, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %222, align 8
  store i32 0, i32* %11, align 4
  br label %242

223:                                              ; preds = %201
  %224 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %225 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %224, i32 0, i32 1
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %9, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %241

231:                                              ; preds = %223
  %232 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %233 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %232, i32 0, i32 1
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %238 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i64 %236, i8* %237)
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %11, align 4
  br label %241

241:                                              ; preds = %231, %223
  br label %242

242:                                              ; preds = %241, %214
  br label %243

243:                                              ; preds = %242, %196, %191
  br label %244

244:                                              ; preds = %243, %172, %140, %117, %108
  %245 = load i32, i32* %11, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %280

247:                                              ; preds = %244
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  %251 = icmp ne i32 %248, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %254 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* %253)
  br label %255

255:                                              ; preds = %252, %247
  %256 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 4
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %257, align 8
  %259 = call i32 @release_firmware(%struct.TYPE_3__* %258)
  %260 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %261 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %260, i32 0, i32 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %261, align 8
  %262 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %263 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %262, i32 0, i32 3
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %263, align 8
  %265 = call i32 @release_firmware(%struct.TYPE_3__* %264)
  %266 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %267, align 8
  %268 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %269 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %268, i32 0, i32 2
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = call i32 @release_firmware(%struct.TYPE_3__* %270)
  %272 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %273 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %272, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %273, align 8
  %274 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %275 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %274, i32 0, i32 1
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %275, align 8
  %277 = call i32 @release_firmware(%struct.TYPE_3__* %276)
  %278 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %279 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %278, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %279, align 8
  br label %280

280:                                              ; preds = %255, %244
  %281 = load i32, i32* %11, align 4
  ret i32 %281
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @DRM_INFO(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_3__**, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
