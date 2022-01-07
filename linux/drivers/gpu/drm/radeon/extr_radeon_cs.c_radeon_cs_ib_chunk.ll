; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_cs_parser = type { i32, i64, i32, i64, i32* }

@RADEON_CS_USE_VM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid command stream !\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to sync rings: %i\0A\00", align 1
@R600_RING_TYPE_UVD_INDEX = common dso_local global i64 0, align 8
@TN_RING_TYPE_VCE1_INDEX = common dso_local global i64 0, align 8
@TN_RING_TYPE_VCE2_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to schedule IB !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_cs_parser*)* @radeon_cs_ib_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_ib_chunk(%struct.radeon_device* %0, %struct.radeon_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_cs_parser* %1, %struct.radeon_cs_parser** %5, align 8
  %7 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %8 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

12:                                               ; preds = %2
  %13 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RADEON_CS_USE_VM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %88

20:                                               ; preds = %12
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %26 = call i32 @radeon_cs_parse(%struct.radeon_device* %21, i64 %24, %struct.radeon_cs_parser* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %20
  %35 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %88

37:                                               ; preds = %29
  %38 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %39 = call i32 @radeon_cs_sync_rings(%struct.radeon_cs_parser* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ERESTARTSYS, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %88

52:                                               ; preds = %37
  %53 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @R600_RING_TYPE_UVD_INDEX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %60 = call i32 @radeon_uvd_note_usage(%struct.radeon_device* %59)
  br label %77

61:                                               ; preds = %52
  %62 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TN_RING_TYPE_VCE1_INDEX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %69 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TN_RING_TYPE_VCE2_INDEX, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %61
  %74 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %75 = call i32 @radeon_vce_note_usage(%struct.radeon_device* %74)
  br label %76

76:                                               ; preds = %73, %67
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %79 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %80 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %79, i32 0, i32 2
  %81 = call i32 @radeon_ib_schedule(%struct.radeon_device* %78, i32* %80, i32* null, i32 1)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %50, %34, %19, %11
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @radeon_cs_parse(%struct.radeon_device*, i64, %struct.radeon_cs_parser*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_sync_rings(%struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_uvd_note_usage(%struct.radeon_device*) #1

declare dso_local i32 @radeon_vce_note_usage(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
