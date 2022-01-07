; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_validate_displayid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_validate_displayid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.displayid_hdr = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"base revision 0x%x, length %d, %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"DisplayID checksum invalid, remainder is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @validate_displayid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_displayid(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.displayid_hdr*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = bitcast i64* %14 to %struct.displayid_hdr*
  store %struct.displayid_hdr* %15, %struct.displayid_hdr** %10, align 8
  %16 = load %struct.displayid_hdr*, %struct.displayid_hdr** %10, align 8
  %17 = getelementptr inbounds %struct.displayid_hdr, %struct.displayid_hdr* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.displayid_hdr*, %struct.displayid_hdr** %10, align 8
  %20 = getelementptr inbounds %struct.displayid_hdr, %struct.displayid_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.displayid_hdr*, %struct.displayid_hdr** %10, align 8
  %23 = getelementptr inbounds %struct.displayid_hdr, %struct.displayid_hdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.displayid_hdr*, %struct.displayid_hdr** %10, align 8
  %26 = getelementptr inbounds %struct.displayid_hdr, %struct.displayid_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.displayid_hdr*, %struct.displayid_hdr** %10, align 8
  %30 = getelementptr inbounds %struct.displayid_hdr, %struct.displayid_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 5
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %57, %40
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.displayid_hdr*, %struct.displayid_hdr** %10, align 8
  %45 = getelementptr inbounds %struct.displayid_hdr, %struct.displayid_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 5
  %48 = icmp sle i32 %43, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load i64*, i64** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @DRM_NOTE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %63, %37
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_NOTE(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
