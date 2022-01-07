; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_amdgpu_cs = type { i32 }
%struct.amdgpu_cs_parser = type { %struct.TYPE_2__*, %struct.drm_file*, %struct.amdgpu_device* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialize parser %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed in the dependencies handling %d!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Not enough memory for command submission!\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to process the buffer list %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_cs_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %union.drm_amdgpu_cs*, align 8
  %10 = alloca %struct.amdgpu_cs_parser, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %union.drm_amdgpu_cs*
  store %union.drm_amdgpu_cs* %18, %union.drm_amdgpu_cs** %9, align 8
  %19 = bitcast %struct.amdgpu_cs_parser* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  store i32 0, i32* %11, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %107

27:                                               ; preds = %3
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %29 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %10, i32 0, i32 2
  store %struct.amdgpu_device* %28, %struct.amdgpu_device** %29, align 8
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %10, i32 0, i32 1
  store %struct.drm_file* %30, %struct.drm_file** %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @amdgpu_cs_parser_init(%struct.amdgpu_cs_parser* %10, i8* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %13, align 4
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %102

39:                                               ; preds = %27
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %41 = call i32 @amdgpu_cs_ib_fill(%struct.amdgpu_device* %40, %struct.amdgpu_cs_parser* %10)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %102

45:                                               ; preds = %39
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %47 = call i32 @amdgpu_cs_dependencies(%struct.amdgpu_device* %46, %struct.amdgpu_cs_parser* %10)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %102

53:                                               ; preds = %45
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @amdgpu_cs_parser_bos(%struct.amdgpu_cs_parser* %10, i8* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %79

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @ERESTARTSYS, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %75, %70, %65
  br label %79

79:                                               ; preds = %78, %63
  br label %102

80:                                               ; preds = %53
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %91, %80
  %82 = load i32, i32* %12, align 4
  %83 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %10, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @trace_amdgpu_cs(%struct.amdgpu_cs_parser* %10, i32 %89)
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %81

94:                                               ; preds = %81
  %95 = call i32 @amdgpu_cs_vm_handling(%struct.amdgpu_cs_parser* %10)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %102

99:                                               ; preds = %94
  %100 = load %union.drm_amdgpu_cs*, %union.drm_amdgpu_cs** %9, align 8
  %101 = call i32 @amdgpu_cs_submit(%struct.amdgpu_cs_parser* %10, %union.drm_amdgpu_cs* %100)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %99, %98, %79, %50, %44, %36
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @amdgpu_cs_parser_fini(%struct.amdgpu_cs_parser* %10, i32 %103, i32 %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %102, %24
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @amdgpu_cs_parser_init(%struct.amdgpu_cs_parser*, i8*) #2

declare dso_local i32 @DRM_ERROR(i8*, ...) #2

declare dso_local i32 @amdgpu_cs_ib_fill(%struct.amdgpu_device*, %struct.amdgpu_cs_parser*) #2

declare dso_local i32 @amdgpu_cs_dependencies(%struct.amdgpu_device*, %struct.amdgpu_cs_parser*) #2

declare dso_local i32 @amdgpu_cs_parser_bos(%struct.amdgpu_cs_parser*, i8*) #2

declare dso_local i32 @trace_amdgpu_cs(%struct.amdgpu_cs_parser*, i32) #2

declare dso_local i32 @amdgpu_cs_vm_handling(%struct.amdgpu_cs_parser*) #2

declare dso_local i32 @amdgpu_cs_submit(%struct.amdgpu_cs_parser*, %union.drm_amdgpu_cs*) #2

declare dso_local i32 @amdgpu_cs_parser_fini(%struct.amdgpu_cs_parser*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
