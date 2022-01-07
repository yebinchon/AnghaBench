; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.vmw_fb_par* }
%struct.vmw_fb_par = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [15 x i8] c"Bad regno %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Bad depth %u, bpp %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @vmw_fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.vmw_fb_par*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %17, align 8
  store %struct.vmw_fb_par* %18, %struct.vmw_fb_par** %14, align 8
  %19 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %14, align 8
  %20 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %15, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ugt i32 %22, 15
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 1, i32* %7, align 4
  br label %70

27:                                               ; preds = %6
  %28 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %14, align 8
  %29 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %50 [
    i32 24, label %35
    i32 32, label %35
  ]

35:                                               ; preds = %27, %27
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 65280
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 65280
  %41 = or i32 %38, %40
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 65280
  %44 = lshr i32 %43, 8
  %45 = or i32 %41, %44
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %69

50:                                               ; preds = %27
  %51 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %14, align 8
  %52 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %14, align 8
  %59 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 8
  %68 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %67)
  store i32 1, i32* %7, align 4
  br label %70

69:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %50, %24
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
