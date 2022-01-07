; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_submit = type { i32 }
%struct.drm_etnaviv_gem_submit_reloc = type { i32, i32, i32, i32 }
%struct.etnaviv_gem_submit_bo = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ETNA_SUBMIT_SOFTPIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid reloc flags\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"non-aligned reloc offset: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid offset %u at reloc %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"relocation %u outside object\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_submit*, i8*, i64, %struct.drm_etnaviv_gem_submit_reloc*, i64)* @submit_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_reloc(%struct.etnaviv_gem_submit* %0, i8* %1, i64 %2, %struct.drm_etnaviv_gem_submit_reloc* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.etnaviv_gem_submit*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_etnaviv_gem_submit_reloc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_etnaviv_gem_submit_reloc*, align 8
  %17 = alloca %struct.etnaviv_gem_submit_bo*, align 8
  %18 = alloca i64, align 8
  store %struct.etnaviv_gem_submit* %0, %struct.etnaviv_gem_submit** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.drm_etnaviv_gem_submit_reloc* %3, %struct.drm_etnaviv_gem_submit_reloc** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %14, align 8
  %21 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %7, align 8
  %22 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ETNA_SUBMIT_SOFTPIN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %131

33:                                               ; preds = %27, %5
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %127, %33
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %130

38:                                               ; preds = %34
  %39 = load %struct.drm_etnaviv_gem_submit_reloc*, %struct.drm_etnaviv_gem_submit_reloc** %10, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_reloc, %struct.drm_etnaviv_gem_submit_reloc* %39, i64 %40
  store %struct.drm_etnaviv_gem_submit_reloc* %41, %struct.drm_etnaviv_gem_submit_reloc** %16, align 8
  %42 = load %struct.drm_etnaviv_gem_submit_reloc*, %struct.drm_etnaviv_gem_submit_reloc** %16, align 8
  %43 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_reloc, %struct.drm_etnaviv_gem_submit_reloc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %131

51:                                               ; preds = %38
  %52 = load %struct.drm_etnaviv_gem_submit_reloc*, %struct.drm_etnaviv_gem_submit_reloc** %16, align 8
  %53 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_reloc, %struct.drm_etnaviv_gem_submit_reloc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %54, 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.drm_etnaviv_gem_submit_reloc*, %struct.drm_etnaviv_gem_submit_reloc** %16, align 8
  %59 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_reloc, %struct.drm_etnaviv_gem_submit_reloc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %131

64:                                               ; preds = %51
  %65 = load %struct.drm_etnaviv_gem_submit_reloc*, %struct.drm_etnaviv_gem_submit_reloc** %16, align 8
  %66 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_reloc, %struct.drm_etnaviv_gem_submit_reloc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %18, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %64
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73, %64
  %78 = load i64, i64* %18, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %131

83:                                               ; preds = %73
  %84 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %7, align 8
  %85 = load %struct.drm_etnaviv_gem_submit_reloc*, %struct.drm_etnaviv_gem_submit_reloc** %16, align 8
  %86 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_reloc, %struct.drm_etnaviv_gem_submit_reloc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @submit_bo(%struct.etnaviv_gem_submit* %84, i32 %87, %struct.etnaviv_gem_submit_bo** %17)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %6, align 4
  br label %131

93:                                               ; preds = %83
  %94 = load %struct.drm_etnaviv_gem_submit_reloc*, %struct.drm_etnaviv_gem_submit_reloc** %16, align 8
  %95 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_reloc, %struct.drm_etnaviv_gem_submit_reloc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %17, align 8
  %99 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %104, 8
  %106 = icmp ugt i64 %97, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %93
  %108 = load i64, i64* %12, align 8
  %109 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %131

112:                                              ; preds = %93
  %113 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %17, align 8
  %114 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.drm_etnaviv_gem_submit_reloc*, %struct.drm_etnaviv_gem_submit_reloc** %16, align 8
  %119 = getelementptr inbounds %struct.drm_etnaviv_gem_submit_reloc, %struct.drm_etnaviv_gem_submit_reloc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %117, %121
  %123 = load i64*, i64** %14, align 8
  %124 = load i64, i64* %18, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* %18, align 8
  store i64 %126, i64* %13, align 8
  br label %127

127:                                              ; preds = %112
  %128 = load i64, i64* %12, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %12, align 8
  br label %34

130:                                              ; preds = %34
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %130, %107, %91, %77, %57, %47, %30
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @submit_bo(%struct.etnaviv_gem_submit*, i32, %struct.etnaviv_gem_submit_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
