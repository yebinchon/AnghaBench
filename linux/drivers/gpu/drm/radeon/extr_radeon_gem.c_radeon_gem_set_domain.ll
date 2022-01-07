; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_set_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_set_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Set domain without domain !\0A\00", align 1
@RADEON_GEM_DOMAIN_CPU = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to wait for object: %li\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_gem_object*, i64, i64)* @radeon_gem_set_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_gem_set_domain(%struct.drm_gem_object* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.radeon_bo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %12 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %11)
  store %struct.radeon_bo* %12, %struct.radeon_bo** %8, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %68

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @RADEON_GEM_DOMAIN_CPU, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load %struct.radeon_bo*, %struct.radeon_bo** %8, align 8
  %29 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 30, %33
  %35 = call i64 @dma_resv_wait_timeout_rcu(i32 %32, i32 1, i32 1, i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i64, i64* @EBUSY, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %38, %27
  %42 = load i64, i64* %10, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @EINTR, align 8
  %47 = sub nsw i64 0, %46
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %10, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %68

54:                                               ; preds = %44, %41
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @RADEON_GEM_DOMAIN_VRAM, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.radeon_bo*, %struct.radeon_bo** %8, align 8
  %61 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %59, %55
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %64, %49, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
