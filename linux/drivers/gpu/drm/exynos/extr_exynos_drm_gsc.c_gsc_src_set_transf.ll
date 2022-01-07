; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_transf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_src_set_transf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }

@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@GSC_IN_CON = common dso_local global i32 0, align 4
@GSC_IN_ROT_MASK = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@GSC_IN_ROT_XFLIP = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@GSC_IN_ROT_YFLIP = common dso_local global i32 0, align 4
@GSC_IN_ROT_90 = common dso_local global i32 0, align 4
@GSC_IN_ROT_180 = common dso_local global i32 0, align 4
@GSC_IN_ROT_270 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, i32)* @gsc_src_set_transf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_src_set_transf(%struct.gsc_context* %0, i32 %1) #0 {
  %3 = alloca %struct.gsc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @GSC_IN_CON, align 4
  %11 = call i32 @gsc_read(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @GSC_IN_ROT_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %106 [
    i32 131, label %17
    i32 128, label %36
    i32 130, label %58
    i32 129, label %82
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @GSC_IN_ROT_XFLIP, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @GSC_IN_ROT_YFLIP, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %26
  br label %106

36:                                               ; preds = %2
  %37 = load i32, i32* @GSC_IN_ROT_90, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @GSC_IN_ROT_XFLIP, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @GSC_IN_ROT_YFLIP, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %48
  br label %106

58:                                               ; preds = %2
  %59 = load i32, i32* @GSC_IN_ROT_180, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @GSC_IN_ROT_XFLIP, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %58
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @GSC_IN_ROT_YFLIP, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %76, %71
  br label %106

82:                                               ; preds = %2
  %83 = load i32, i32* @GSC_IN_ROT_270, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load i32, i32* @GSC_IN_ROT_XFLIP, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %90, %82
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* @GSC_IN_ROT_YFLIP, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %2, %105, %81, %57, %35
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @GSC_IN_CON, align 4
  %109 = call i32 @gsc_write(i32 %107, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @GSC_IN_ROT_90, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load %struct.gsc_context*, %struct.gsc_context** %3, align 8
  %117 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  ret void
}

declare dso_local i32 @gsc_read(i32) #1

declare dso_local i32 @gsc_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
