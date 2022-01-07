; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.exynos_drm_ipp = type { i32, i8*, i32, i64, i32, %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_funcs*, %struct.device*, i32, i32, i32 }
%struct.exynos_drm_ipp_funcs = type { i32 }
%struct.exynos_drm_ipp_formats = type { i32 }

@ipp_list = common dso_local global i32 0, align 4
@num_ipp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Registered ipp %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_ipp_register(%struct.device* %0, %struct.exynos_drm_ipp* %1, %struct.exynos_drm_ipp_funcs* %2, i32 %3, %struct.exynos_drm_ipp_formats* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.exynos_drm_ipp*, align 8
  %10 = alloca %struct.exynos_drm_ipp_funcs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.exynos_drm_ipp_formats*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.exynos_drm_ipp* %1, %struct.exynos_drm_ipp** %9, align 8
  store %struct.exynos_drm_ipp_funcs* %2, %struct.exynos_drm_ipp_funcs** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.exynos_drm_ipp_formats* %4, %struct.exynos_drm_ipp_formats** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %15 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %16 = icmp ne %struct.exynos_drm_ipp* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.exynos_drm_ipp_funcs*, %struct.exynos_drm_ipp_funcs** %10, align 8
  %21 = icmp ne %struct.exynos_drm_ipp_funcs* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %12, align 8
  %26 = icmp ne %struct.exynos_drm_ipp_formats* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %36 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %35, i32 0, i32 10
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %39 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %38, i32 0, i32 9
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %42 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %41, i32 0, i32 8
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %46 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %45, i32 0, i32 7
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.exynos_drm_ipp_funcs*, %struct.exynos_drm_ipp_funcs** %10, align 8
  %48 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %49 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %48, i32 0, i32 6
  store %struct.exynos_drm_ipp_funcs* %47, %struct.exynos_drm_ipp_funcs** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %52 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %55 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %12, align 8
  %57 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %58 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %57, i32 0, i32 5
  store %struct.exynos_drm_ipp_formats* %56, %struct.exynos_drm_ipp_formats** %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %61 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %63 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %62, i32 0, i32 4
  %64 = call i32 @list_add_tail(i32* %63, i32* @ipp_list)
  %65 = load i32, i32* @num_ipp, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @num_ipp, align 4
  %67 = sext i32 %65 to i64
  %68 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %69 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.device*, %struct.device** %8, align 8
  %71 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %9, align 8
  %72 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @DRM_DEV_DEBUG_DRIVER(%struct.device* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %73)
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
