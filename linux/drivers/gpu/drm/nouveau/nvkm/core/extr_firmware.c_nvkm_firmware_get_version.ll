; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_firmware.c_nvkm_firmware_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_firmware.c_nvkm_firmware_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"nvidia/%s/%s-%d.bin\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"nvidia/%s/%s.bin\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"firmware \22%s\22 loaded\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"firmware \22%s\22 unavailable\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to load firmware \22%s\22\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_firmware_get_version(%struct.nvkm_subdev* %0, i8* %1, i32 %2, i32 %3, %struct.firmware** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.firmware**, align 8
  %12 = alloca %struct.nvkm_device*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.firmware** %4, %struct.firmware*** %11, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %12, align 8
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strncpy(i8* %19, i32 %24, i32 16)
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 15
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %28 = call i32 @strlen(i8* %27)
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %32, %5
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call signext i8 @tolower(i8 signext %38)
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 %41
  store i8 %39, i8* %42, align 1
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %80, %43
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %53, i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %55, i32 %56)
  br label %63

58:                                               ; preds = %49
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %59, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.firmware**, %struct.firmware*** %11, align 8
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %67 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @firmware_request_nowarn(%struct.firmware** %64, i8* %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %63
  %72 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %74 = call i32 @nvkm_debug(%struct.nvkm_subdev* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %6, align 4
  br label %89

76:                                               ; preds = %63
  %77 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %79 = call i32 @nvkm_debug(%struct.nvkm_subdev* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %15, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @nvkm_error(%struct.nvkm_subdev* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %71
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @firmware_request_nowarn(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i8*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
