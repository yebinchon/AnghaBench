; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_set_filp_rights.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_set_filp_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_file**, %struct.drm_file*, i32*)* @radeon_set_filp_rights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_set_filp_rights(%struct.drm_device* %0, %struct.drm_file** %1, %struct.drm_file* %2, i32* %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file**, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file** %1, %struct.drm_file*** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %9, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %21, align 8
  %23 = icmp ne %struct.drm_file* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %26 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  store %struct.drm_file* %25, %struct.drm_file** %26, align 8
  br label %27

27:                                               ; preds = %24, %20
  br label %41

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  %34 = load %struct.drm_file*, %struct.drm_file** %33, align 8
  %35 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %36 = icmp eq %struct.drm_file* %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  store %struct.drm_file* null, %struct.drm_file** %38, align 8
  br label %39

39:                                               ; preds = %37, %32
  br label %40

40:                                               ; preds = %39, %28
  br label %41

41:                                               ; preds = %40, %27
  %42 = load %struct.drm_file**, %struct.drm_file*** %6, align 8
  %43 = load %struct.drm_file*, %struct.drm_file** %42, align 8
  %44 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %45 = icmp eq %struct.drm_file* %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
