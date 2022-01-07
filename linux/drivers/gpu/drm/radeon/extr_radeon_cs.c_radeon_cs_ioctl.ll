; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i32, i32, i64, i32 }
%struct.drm_file = type { i32 }
%struct.radeon_cs_parser = type { i32, i32, %struct.radeon_device*, %struct.drm_file* }

@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to initialize parser !\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse relocation %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cs_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_cs_parser, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %8, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = call i32 @up_read(i32* %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %129

27:                                               ; preds = %3
  %28 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = call i32 @up_read(i32* %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %37 = call i32 @radeon_gpu_reset(%struct.radeon_device* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %129

45:                                               ; preds = %27
  %46 = call i32 @memset(%struct.radeon_cs_parser* %9, i32 0, i32 24)
  %47 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %48 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 3
  store %struct.drm_file* %47, %struct.drm_file** %48, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %50 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 2
  store %struct.radeon_device* %49, %struct.radeon_device** %50, align 8
  %51 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @radeon_cs_parser_init(%struct.radeon_cs_parser* %9, i8* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %45
  %64 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @radeon_cs_parser_fini(%struct.radeon_cs_parser* %9, i32 %65, i32 0)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = call i32 @up_read(i32* %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @radeon_cs_handle_lockup(%struct.radeon_device* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %129

74:                                               ; preds = %45
  %75 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %76 = call i32 @radeon_cs_ib_fill(%struct.radeon_device* %75, %struct.radeon_cs_parser* %9)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  %80 = call i32 @radeon_cs_parser_relocs(%struct.radeon_cs_parser* %9)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @ERESTARTSYS, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %83, %79
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @radeon_cs_parser_fini(%struct.radeon_cs_parser* %9, i32 %96, i32 0)
  %98 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 0
  %100 = call i32 @up_read(i32* %99)
  %101 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @radeon_cs_handle_lockup(%struct.radeon_device* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %129

105:                                              ; preds = %92
  %106 = call i32 @trace_radeon_cs(%struct.radeon_cs_parser* %9)
  %107 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %108 = call i32 @radeon_cs_ib_chunk(%struct.radeon_device* %107, %struct.radeon_cs_parser* %9)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %119

112:                                              ; preds = %105
  %113 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %114 = call i32 @radeon_cs_ib_vm_chunk(%struct.radeon_device* %113, %struct.radeon_cs_parser* %9)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %119

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %117, %111
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @radeon_cs_parser_fini(%struct.radeon_cs_parser* %9, i32 %120, i32 1)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 0
  %124 = call i32 @up_read(i32* %123)
  %125 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @radeon_cs_handle_lockup(%struct.radeon_device* %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %119, %95, %63, %43, %21
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @radeon_gpu_reset(%struct.radeon_device*) #1

declare dso_local i32 @memset(%struct.radeon_cs_parser*, i32, i32) #1

declare dso_local i32 @radeon_cs_parser_init(%struct.radeon_cs_parser*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_parser_fini(%struct.radeon_cs_parser*, i32, i32) #1

declare dso_local i32 @radeon_cs_handle_lockup(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_cs_ib_fill(%struct.radeon_device*, %struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_cs_parser_relocs(%struct.radeon_cs_parser*) #1

declare dso_local i32 @trace_radeon_cs(%struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_cs_ib_chunk(%struct.radeon_device*, %struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_cs_ib_vm_chunk(%struct.radeon_device*, %struct.radeon_cs_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
