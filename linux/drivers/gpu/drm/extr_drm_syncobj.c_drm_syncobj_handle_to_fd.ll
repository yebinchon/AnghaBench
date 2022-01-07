; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_handle_to_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_handle_to_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_syncobj = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, i32, i32*)* @drm_syncobj_handle_to_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_syncobj_handle_to_fd(%struct.drm_file* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_syncobj*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %10, i32 %11)
  store %struct.drm_syncobj* %12, %struct.drm_syncobj** %8, align 8
  %13 = load %struct.drm_syncobj*, %struct.drm_syncobj** %8, align 8
  %14 = icmp ne %struct.drm_syncobj* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.drm_syncobj*, %struct.drm_syncobj** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @drm_syncobj_get_fd(%struct.drm_syncobj* %19, i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.drm_syncobj*, %struct.drm_syncobj** %8, align 8
  %23 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %22)
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_syncobj_get_fd(%struct.drm_syncobj*, i32*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
