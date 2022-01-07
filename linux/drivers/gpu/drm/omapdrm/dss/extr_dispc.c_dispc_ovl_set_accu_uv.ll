; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_accu_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_accu_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.accu = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dispc_device = type { i32 }

@dispc_ovl_set_accu_uv.accu_nv12 = internal constant [4 x %struct.accu] [%struct.accu { i32 0, i32 1, i32 0, i32 1, i32 -1, i32 2, i32 0, i32 1 }, %struct.accu { i32 1, i32 2, i32 -3, i32 4, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 -1, i32 1, i32 0, i32 1, i32 -1, i32 2, i32 0, i32 1 }, %struct.accu { i32 -1, i32 2, i32 -1, i32 2, i32 -1, i32 1, i32 0, i32 1 }], align 16
@dispc_ovl_set_accu_uv.accu_nv12_ilace = internal constant [4 x %struct.accu] [%struct.accu { i32 0, i32 1, i32 0, i32 1, i32 -3, i32 4, i32 -1, i32 4 }, %struct.accu { i32 -1, i32 4, i32 -3, i32 4, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 -1, i32 1, i32 0, i32 1, i32 -1, i32 4, i32 -3, i32 4 }, %struct.accu { i32 -3, i32 4, i32 -3, i32 4, i32 -1, i32 1, i32 0, i32 1 }], align 16
@dispc_ovl_set_accu_uv.accu_yuv = internal constant [4 x %struct.accu] [%struct.accu { i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 -1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1 }, %struct.accu { i32 0, i32 1, i32 0, i32 1, i32 -1, i32 1, i32 0, i32 1 }], align 16
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32, i32, i32, i32, i32, i32, i32)* @dispc_ovl_set_accu_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_accu_uv(%struct.dispc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.dispc_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.accu*, align 8
  %27 = alloca %struct.accu*, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %31 [
    i32 131, label %32
    i32 128, label %33
    i32 130, label %34
    i32 129, label %35
  ]

31:                                               ; preds = %9
  br label %32

32:                                               ; preds = %9, %31
  store i32 0, i32* %25, align 4
  br label %36

33:                                               ; preds = %9
  store i32 3, i32* %25, align 4
  br label %36

34:                                               ; preds = %9
  store i32 2, i32* %25, align 4
  br label %36

35:                                               ; preds = %9
  store i32 1, i32* %25, align 4
  br label %36

36:                                               ; preds = %35, %34, %33, %32
  %37 = load i32, i32* %17, align 4
  switch i32 %37, label %45 [
    i32 134, label %38
    i32 132, label %44
    i32 133, label %44
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store %struct.accu* getelementptr inbounds ([4 x %struct.accu], [4 x %struct.accu]* @dispc_ovl_set_accu_uv.accu_nv12_ilace, i64 0, i64 0), %struct.accu** %26, align 8
  br label %43

42:                                               ; preds = %38
  store %struct.accu* getelementptr inbounds ([4 x %struct.accu], [4 x %struct.accu]* @dispc_ovl_set_accu_uv.accu_nv12, i64 0, i64 0), %struct.accu** %26, align 8
  br label %43

43:                                               ; preds = %42, %41
  br label %47

44:                                               ; preds = %36, %36
  store %struct.accu* getelementptr inbounds ([4 x %struct.accu], [4 x %struct.accu]* @dispc_ovl_set_accu_uv.accu_yuv, i64 0, i64 0), %struct.accu** %26, align 8
  br label %47

45:                                               ; preds = %36
  %46 = call i32 (...) @BUG()
  br label %110

47:                                               ; preds = %44, %43
  %48 = load %struct.accu*, %struct.accu** %26, align 8
  %49 = load i32, i32* %25, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.accu, %struct.accu* %48, i64 %50
  store %struct.accu* %51, %struct.accu** %27, align 8
  %52 = load i32, i32* %12, align 4
  %53 = mul nsw i32 1024, %52
  %54 = load i32, i32* %14, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %23, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 1024, %56
  %58 = load i32, i32* %15, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %24, align 4
  %60 = load %struct.accu*, %struct.accu** %27, align 8
  %61 = getelementptr inbounds %struct.accu, %struct.accu* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %23, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load %struct.accu*, %struct.accu** %27, align 8
  %66 = getelementptr inbounds %struct.accu, %struct.accu* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  %69 = srem i32 %68, 1024
  store i32 %69, i32* %19, align 4
  %70 = load %struct.accu*, %struct.accu** %27, align 8
  %71 = getelementptr inbounds %struct.accu, %struct.accu* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %23, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load %struct.accu*, %struct.accu** %27, align 8
  %76 = getelementptr inbounds %struct.accu, %struct.accu* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %74, %77
  %79 = srem i32 %78, 1024
  store i32 %79, i32* %20, align 4
  %80 = load %struct.accu*, %struct.accu** %27, align 8
  %81 = getelementptr inbounds %struct.accu, %struct.accu* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %24, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.accu*, %struct.accu** %27, align 8
  %86 = getelementptr inbounds %struct.accu, %struct.accu* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %84, %87
  %89 = srem i32 %88, 1024
  store i32 %89, i32* %21, align 4
  %90 = load %struct.accu*, %struct.accu** %27, align 8
  %91 = getelementptr inbounds %struct.accu, %struct.accu* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %24, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load %struct.accu*, %struct.accu** %27, align 8
  %96 = getelementptr inbounds %struct.accu, %struct.accu* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %94, %97
  %99 = srem i32 %98, 1024
  store i32 %99, i32* %22, align 4
  %100 = load %struct.dispc_device*, %struct.dispc_device** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %21, align 4
  %104 = call i32 @dispc_ovl_set_vid_accu2_0(%struct.dispc_device* %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.dispc_device*, %struct.dispc_device** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %22, align 4
  %109 = call i32 @dispc_ovl_set_vid_accu2_1(%struct.dispc_device* %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %47, %45
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_ovl_set_vid_accu2_0(%struct.dispc_device*, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_vid_accu2_1(%struct.dispc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
