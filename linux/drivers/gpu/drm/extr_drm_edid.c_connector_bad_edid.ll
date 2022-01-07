; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_connector_bad_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_connector_bad_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_KMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: EDID is invalid:\0A\00", align 1
@EDID_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\09[%02x] ZERO \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\09[%02x] BAD  \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09[%02x] GOOD \00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32*, i32)* @connector_bad_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connector_bad_edid(%struct.drm_connector* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [20 x i8], align 16
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @drm_debug, align 4
  %17 = load i32, i32* @DRM_UT_KMS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %74

21:                                               ; preds = %15, %3
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %71, %21
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EDID_LENGTH, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @EDID_LENGTH, align 4
  %44 = call i64 @drm_edid_is_zero(i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %64

50:                                               ; preds = %35
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @drm_edid_block_valid(i32* %51, i32 %52, i32 0, i32* null)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %63

59:                                               ; preds = %50
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* @KERN_WARNING, align 4
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %67 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* @EDID_LENGTH, align 4
  %70 = call i32 @print_hex_dump(i32 %65, i8* %66, i32 %67, i32 16, i32 1, i32* %68, i32 %69, i32 0)
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %31

74:                                               ; preds = %20, %31
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i64 @drm_edid_is_zero(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @drm_edid_block_valid(i32*, i32, i32, i32*) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
