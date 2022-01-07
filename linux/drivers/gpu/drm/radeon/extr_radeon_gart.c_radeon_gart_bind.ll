; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_gart_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_gart_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64, %struct.page**, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"trying to bind memory to uninitialized GART !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gart_bind(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.page** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.page** %3, %struct.page*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %114

29:                                               ; preds = %6
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %32 = udiv i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %36 = udiv i32 %34, %35
  %37 = udiv i32 %33, %36
  store i32 %37, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %38

38:                                               ; preds = %98, %29
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %38
  %43 = load %struct.page**, %struct.page*** %11, align 8
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.page*, %struct.page** %43, i64 %45
  %47 = load %struct.page*, %struct.page** %46, align 8
  %48 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load %struct.page**, %struct.page*** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.page*, %struct.page** %51, i64 %53
  store %struct.page* %47, %struct.page** %54, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %92, %42
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %64 = udiv i32 %62, %63
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @radeon_gart_get_page_entry(i32 %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %66
  %84 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @radeon_gart_set_page(%struct.radeon_device* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %66
  %89 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %90 = load i32, i32* %16, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %14, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %60

97:                                               ; preds = %60
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %38

103:                                              ; preds = %38
  %104 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = call i32 (...) @mb()
  %111 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %112 = call i32 @radeon_gart_tlb_flush(%struct.radeon_device* %111)
  br label %113

113:                                              ; preds = %109, %103
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %25
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @radeon_gart_get_page_entry(i32, i32) #1

declare dso_local i32 @radeon_gart_set_page(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @radeon_gart_tlb_flush(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
