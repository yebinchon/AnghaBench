; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64, i64, i64, i64 }
%struct.fb_info = type { %struct.vmw_fb_par* }
%struct.vmw_fb_par = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Requested panning can not fit in framebuffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @vmw_fb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.vmw_fb_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %8, align 8
  store %struct.vmw_fb_par* %9, %struct.vmw_fb_par** %6, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %21, %2
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %78

37:                                               ; preds = %21
  %38 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %39 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %38, i32 0, i32 2
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %50 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %52 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %37
  %56 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %57 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %58 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %61 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %64 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %69 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @vmw_fb_dirty_mark(%struct.vmw_fb_par* %56, i64 %59, i64 %62, i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %55, %37
  %75 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %6, align 8
  %76 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %33
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vmw_fb_dirty_mark(%struct.vmw_fb_par*, i64, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
