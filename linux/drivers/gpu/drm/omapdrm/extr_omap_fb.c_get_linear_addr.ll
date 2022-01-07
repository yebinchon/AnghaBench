; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_get_linear_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_get_linear_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, i64* }
%struct.drm_format_info = type { i32*, i32, i32 }
%struct.omap_framebuffer = type { %struct.plane* }
%struct.plane = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_framebuffer*, %struct.drm_format_info*, i32, i32, i32)* @get_linear_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_linear_addr(%struct.drm_framebuffer* %0, %struct.drm_format_info* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_format_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_framebuffer*, align 8
  %12 = alloca %struct.plane*, align 8
  %13 = alloca i64, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %6, align 8
  store %struct.drm_format_info* %1, %struct.drm_format_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %15 = call %struct.omap_framebuffer* @to_omap_framebuffer(%struct.drm_framebuffer* %14)
  store %struct.omap_framebuffer* %15, %struct.omap_framebuffer** %11, align 8
  %16 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %11, align 8
  %17 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %16, i32 0, i32 0
  %18 = load %struct.plane*, %struct.plane** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.plane, %struct.plane* %18, i64 %20
  store %struct.plane* %21, %struct.plane** %12, align 8
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.drm_format_info*, %struct.drm_format_info** %7, align 8
  %31 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %29, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  br label %45

41:                                               ; preds = %5
  %42 = load %struct.drm_format_info*, %struct.drm_format_info** %7, align 8
  %43 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = phi i32 [ 1, %40 ], [ %44, %41 ]
  %47 = sdiv i32 %37, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %28, %48
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %50, %57
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %66

62:                                               ; preds = %45
  %63 = load %struct.drm_format_info*, %struct.drm_format_info** %7, align 8
  %64 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %62, %61
  %67 = phi i32 [ 1, %61 ], [ %65, %62 ]
  %68 = sdiv i32 %58, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %49, %69
  store i64 %70, i64* %13, align 8
  %71 = load %struct.plane*, %struct.plane** %12, align 8
  %72 = getelementptr inbounds %struct.plane, %struct.plane* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %73, %74
  ret i64 %75
}

declare dso_local %struct.omap_framebuffer* @to_omap_framebuffer(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
