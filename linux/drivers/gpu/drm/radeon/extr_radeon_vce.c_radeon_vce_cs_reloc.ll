; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_cs_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_cs_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { %struct.TYPE_2__, %struct.radeon_bo_list*, %struct.radeon_cs_chunk* }
%struct.TYPE_2__ = type { i32* }
%struct.radeon_bo_list = type { i32, i32 }
%struct.radeon_cs_chunk = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid reloc offset %llX!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"buffer to small (%d / %d)!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vce_cs_reloc(%struct.radeon_cs_parser* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_cs_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_cs_chunk*, align 8
  %11 = alloca %struct.radeon_bo_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %16, i32 0, i32 2
  %18 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %17, align 8
  store %struct.radeon_cs_chunk* %18, %struct.radeon_cs_chunk** %10, align 8
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @radeon_get_ib_value(%struct.radeon_cs_parser* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @radeon_get_ib_value(%struct.radeon_cs_parser* %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %10, align 8
  %29 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %10, align 8
  %35 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %100

40:                                               ; preds = %4
  %41 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %41, i32 0, i32 1
  %43 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = udiv i32 %44, 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %43, i64 %46
  store %struct.radeon_bo_list* %47, %struct.radeon_bo_list** %11, align 8
  %48 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %11, align 8
  %49 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %11, align 8
  %53 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @radeon_bo_size(i32 %54)
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %60, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 32
  %70 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %71 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %69, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %40
  %81 = load i32, i32* %14, align 4
  %82 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %100

85:                                               ; preds = %40
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %100

99:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %91, %80, %32
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i8* @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @radeon_bo_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
