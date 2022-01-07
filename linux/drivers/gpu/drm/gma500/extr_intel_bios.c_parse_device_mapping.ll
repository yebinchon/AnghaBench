; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_device_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_device_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i32, %struct.child_device_config* }
%struct.child_device_config = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_general_definitions = type { i32, %struct.child_device_config* }

@BDB_GENERAL_DEFINITIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"No general definition block is found, no devices defined.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"different child size is found. Invalid.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"no child dev is parsed from VBT\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"No memory space for child devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, %struct.bdb_header*)* @parse_device_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_device_mapping(%struct.drm_psb_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_general_definitions*, align 8
  %6 = alloca %struct.child_device_config*, align 8
  %7 = alloca %struct.child_device_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %12 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %13 = load i32, i32* @BDB_GENERAL_DEFINITIONS, align 4
  %14 = call %struct.bdb_general_definitions* @find_section(%struct.bdb_header* %12, i32 %13)
  store %struct.bdb_general_definitions* %14, %struct.bdb_general_definitions** %5, align 8
  %15 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %5, align 8
  %16 = icmp ne %struct.bdb_general_definitions* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %112

19:                                               ; preds = %2
  %20 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %5, align 8
  %21 = getelementptr inbounds %struct.bdb_general_definitions, %struct.bdb_general_definitions* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %112

27:                                               ; preds = %19
  %28 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %5, align 8
  %29 = call i32 @get_blocksize(%struct.bdb_general_definitions* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 16
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %54, %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %5, align 8
  %41 = getelementptr inbounds %struct.bdb_general_definitions, %struct.bdb_general_definitions* %40, i32 0, i32 1
  %42 = load %struct.child_device_config*, %struct.child_device_config** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %42, i64 %44
  store %struct.child_device_config* %45, %struct.child_device_config** %6, align 8
  %46 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %47 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %54

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %50
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %112

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.child_device_config* @kcalloc(i32 %63, i32 4, i32 %64)
  %66 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %67 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %66, i32 0, i32 1
  store %struct.child_device_config* %65, %struct.child_device_config** %67, align 8
  %68 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %68, i32 0, i32 1
  %70 = load %struct.child_device_config*, %struct.child_device_config** %69, align 8
  %71 = icmp ne %struct.child_device_config* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  %73 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %112

74:                                               ; preds = %62
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %77 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %108, %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load %struct.bdb_general_definitions*, %struct.bdb_general_definitions** %5, align 8
  %84 = getelementptr inbounds %struct.bdb_general_definitions, %struct.bdb_general_definitions* %83, i32 0, i32 1
  %85 = load %struct.child_device_config*, %struct.child_device_config** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %85, i64 %87
  store %struct.child_device_config* %88, %struct.child_device_config** %6, align 8
  %89 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %90 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  br label %108

94:                                               ; preds = %82
  %95 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %96 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %95, i32 0, i32 1
  %97 = load %struct.child_device_config*, %struct.child_device_config** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %97, i64 %99
  store %struct.child_device_config* %100, %struct.child_device_config** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  %103 = load %struct.child_device_config*, %struct.child_device_config** %7, align 8
  %104 = bitcast %struct.child_device_config* %103 to i8*
  %105 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %106 = bitcast %struct.child_device_config* %105 to i8*
  %107 = call i32 @memcpy(i8* %104, i8* %106, i32 4)
  br label %108

108:                                              ; preds = %94, %93
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %78

111:                                              ; preds = %78
  br label %112

112:                                              ; preds = %111, %72, %60, %25, %17
  ret void
}

declare dso_local %struct.bdb_general_definitions* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @get_blocksize(%struct.bdb_general_definitions*) #1

declare dso_local %struct.child_device_config* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
