; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v10_0.c_psp_v10_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v10_0.c_psp_v10_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.psp_firmware_header_v1_0 = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"raven2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"picasso\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"raven\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_asd.bin\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"psp v10.0: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_v10_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v10_0_init_microcode(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [30 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.psp_firmware_header_v1_0*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %9 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %10 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %33 [
    i32 128, label %16
  ]

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %32

22:                                               ; preds = %16
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 5592
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %31

30:                                               ; preds = %22
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %21
  br label %35

33:                                               ; preds = %1
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %32
  %36 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @snprintf(i8* %36, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @request_firmware(%struct.TYPE_10__** %41, i8* %42, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %102

50:                                               ; preds = %35
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %102

59:                                               ; preds = %50
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.psp_firmware_header_v1_0*
  store %struct.psp_firmware_header_v1_0* %66, %struct.psp_firmware_header_v1_0** %8, align 8
  %67 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %68 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %76 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %83 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %91 = bitcast %struct.psp_firmware_header_v1_0* %90 to i32*
  %92 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %93 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  store i32* %98, i32** %101, align 8
  store i32 0, i32* %2, align 4
  br label %121

102:                                              ; preds = %58, %49
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = call i32 @release_firmware(%struct.TYPE_10__* %114)
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %118, align 8
  br label %119

119:                                              ; preds = %105, %102
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %59
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_10__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
