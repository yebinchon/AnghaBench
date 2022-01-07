; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_page_track.c_intel_vgpu_register_page_track.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_page_track.c_intel_vgpu_register_page_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.intel_vgpu_page_track = type { i8*, i32 }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_register_page_track(%struct.intel_vgpu* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.intel_vgpu_page_track*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call %struct.intel_vgpu_page_track* @intel_vgpu_find_page_track(%struct.intel_vgpu* %12, i64 %13)
  store %struct.intel_vgpu_page_track* %14, %struct.intel_vgpu_page_track** %10, align 8
  %15 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %10, align 8
  %16 = icmp ne %struct.intel_vgpu_page_track* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EEXIST, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.intel_vgpu_page_track* @kzalloc(i32 16, i32 %21)
  store %struct.intel_vgpu_page_track* %22, %struct.intel_vgpu_page_track** %10, align 8
  %23 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %10, align 8
  %24 = icmp ne %struct.intel_vgpu_page_track* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %47

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %10, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu_page_track, %struct.intel_vgpu_page_track* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %10, align 8
  %34 = getelementptr inbounds %struct.intel_vgpu_page_track, %struct.intel_vgpu_page_track* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %36 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %10, align 8
  %39 = call i32 @radix_tree_insert(i32* %36, i64 %37, %struct.intel_vgpu_page_track* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load %struct.intel_vgpu_page_track*, %struct.intel_vgpu_page_track** %10, align 8
  %44 = call i32 @kfree(%struct.intel_vgpu_page_track* %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %42, %25, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.intel_vgpu_page_track* @intel_vgpu_find_page_track(%struct.intel_vgpu*, i64) #1

declare dso_local %struct.intel_vgpu_page_track* @kzalloc(i32, i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.intel_vgpu_page_track*) #1

declare dso_local i32 @kfree(%struct.intel_vgpu_page_track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
