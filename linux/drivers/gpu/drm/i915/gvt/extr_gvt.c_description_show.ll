; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_description_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_description_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.intel_vgpu_type = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [74 x i8] c"low_gm_size: %dMB\0Ahigh_gm_size: %dMB\0Afence: %d\0Aresolution: %s\0Aweight: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.device*, i8*)* @description_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @description_show(%struct.kobject* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.intel_vgpu_type*, align 8
  %9 = alloca i8*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = call %struct.TYPE_2__* @kdev_to_i915(%struct.device* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load %struct.kobject*, %struct.kobject** %5, align 8
  %16 = call i32 @kobject_name(%struct.kobject* %15)
  %17 = call %struct.intel_vgpu_type* @intel_gvt_find_vgpu_type(i8* %14, i32 %16)
  store %struct.intel_vgpu_type* %17, %struct.intel_vgpu_type** %8, align 8
  %18 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %8, align 8
  %19 = icmp ne %struct.intel_vgpu_type* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %8, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BYTES_TO_MB(i32 %25)
  %27 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %8, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BYTES_TO_MB(i32 %29)
  %31 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %8, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %8, align 8
  %35 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @vgpu_edid_str(i32 %36)
  %38 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %8, align 8
  %39 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %33, i8* %37, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %21, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_2__* @kdev_to_i915(%struct.device*) #1

declare dso_local %struct.intel_vgpu_type* @intel_gvt_find_vgpu_type(i8*, i32) #1

declare dso_local i32 @kobject_name(%struct.kobject*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @BYTES_TO_MB(i32) #1

declare dso_local i8* @vgpu_edid_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
