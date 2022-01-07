; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_read_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s: R: \00", align 1
@SDVO_I2C_CMD_STATUS = common dso_local global i64 0, align 8
@SDVO_CMD_STATUS_PENDING = common dso_local global i64 0, align 8
@SDVO_CMD_STATUS_TARGET_NOT_SPECIFIED = common dso_local global i64 0, align 8
@SDVO_CMD_STATUS_SCALING_NOT_SUPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@cmd_status_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"(??? %d)\00", align 1
@SDVO_CMD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@SDVO_I2C_RETURN_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"... failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_intel_sdvo*, i8*, i32)* @psb_intel_sdvo_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_read_response(%struct.psb_intel_sdvo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psb_intel_sdvo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.psb_intel_sdvo* %0, %struct.psb_intel_sdvo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 5, i64* %8, align 8
  %11 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %12 = call i32 @SDVO_NAME(%struct.psb_intel_sdvo* %11)
  %13 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %15 = load i64, i64* @SDVO_I2C_CMD_STATUS, align 8
  %16 = call i32 @psb_intel_sdvo_read_byte(%struct.psb_intel_sdvo* %14, i64 %15, i64* %9)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %92

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @SDVO_CMD_STATUS_PENDING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @SDVO_CMD_STATUS_TARGET_NOT_SPECIFIED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %8, align 8
  %31 = icmp ne i64 %29, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = call i32 @udelay(i32 15)
  %36 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %37 = load i64, i64* @SDVO_I2C_CMD_STATUS, align 8
  %38 = call i32 @psb_intel_sdvo_read_byte(%struct.psb_intel_sdvo* %36, i64 %37, i64* %9)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %92

41:                                               ; preds = %34
  br label %20

42:                                               ; preds = %32
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @SDVO_CMD_STATUS_SCALING_NOT_SUPP, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32*, i32** @cmd_status_names, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %55

52:                                               ; preds = %42
  %53 = load i64, i64* %9, align 8
  %54 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @SDVO_CMD_STATUS_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %92

60:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %67 = load i64, i64* @SDVO_I2C_RETURN_0, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i8*, i8** %6, align 8
  %72 = bitcast i8* %71 to i64*
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = call i32 @psb_intel_sdvo_read_byte(%struct.psb_intel_sdvo* %66, i64 %70, i64* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  br label %92

79:                                               ; preds = %65
  %80 = load i8*, i8** %6, align 8
  %81 = bitcast i8* %80 to i64*
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %61

90:                                               ; preds = %61
  %91 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %94

92:                                               ; preds = %78, %59, %40, %18
  %93 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @SDVO_NAME(%struct.psb_intel_sdvo*) #1

declare dso_local i32 @psb_intel_sdvo_read_byte(%struct.psb_intel_sdvo*, i64, i64*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
