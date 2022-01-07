; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_crc.c_dm_parse_crc_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_crc.c_dm_parse_crc_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@AMDGPU_DM_PIPE_CRC_SOURCE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"crtc\00", align 1
@AMDGPU_DM_PIPE_CRC_SOURCE_CRTC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"dprx\00", align 1
@AMDGPU_DM_PIPE_CRC_SOURCE_DPRX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"crtc dither\00", align 1
@AMDGPU_DM_PIPE_CRC_SOURCE_CRTC_DITHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"dprx dither\00", align 1
@AMDGPU_DM_PIPE_CRC_SOURCE_DPRX_DITHER = common dso_local global i32 0, align 4
@AMDGPU_DM_PIPE_CRC_SOURCE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dm_parse_crc_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_parse_crc_source(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @AMDGPU_DM_PIPE_CRC_SOURCE_NONE, align 4
  store i32 %11, i32* %2, align 4
  br label %42

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @AMDGPU_DM_PIPE_CRC_SOURCE_CRTC, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @AMDGPU_DM_PIPE_CRC_SOURCE_DPRX, align 4
  store i32 %27, i32* %2, align 4
  br label %42

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @AMDGPU_DM_PIPE_CRC_SOURCE_CRTC_DITHER, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %28
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @AMDGPU_DM_PIPE_CRC_SOURCE_DPRX_DITHER, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @AMDGPU_DM_PIPE_CRC_SOURCE_INVALID, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38, %32, %26, %20, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
