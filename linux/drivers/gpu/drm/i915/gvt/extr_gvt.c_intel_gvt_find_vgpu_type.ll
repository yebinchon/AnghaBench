; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_find_vgpu_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_find_vgpu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_type = type { i32 }
%struct.intel_gvt = type { i32, %struct.intel_vgpu_type*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_type* (%struct.intel_gvt*, i8*)* @intel_gvt_find_vgpu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_type* @intel_gvt_find_vgpu_type(%struct.intel_gvt* %0, i8* %1) #0 {
  %3 = alloca %struct.intel_vgpu_type*, align 8
  %4 = alloca %struct.intel_gvt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_vgpu_type*, align 8
  %8 = alloca i8*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %10 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i8* @dev_driver_string(i32* %15)
  store i8* %16, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %20 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %25 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %24, i32 0, i32 1
  %26 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %26, i64 %28
  store %struct.intel_vgpu_type* %29, %struct.intel_vgpu_type** %7, align 8
  %30 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %7, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i32 @strncmp(i32 %32, i8* %38, i32 4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %23
  %42 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %7, align 8
  store %struct.intel_vgpu_type* %42, %struct.intel_vgpu_type** %3, align 8
  br label %48

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %17

47:                                               ; preds = %17
  store %struct.intel_vgpu_type* null, %struct.intel_vgpu_type** %3, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %3, align 8
  ret %struct.intel_vgpu_type* %49
}

declare dso_local i8* @dev_driver_string(i32*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
