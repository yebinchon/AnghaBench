; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_gem.c_udl_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_gem.c_udl_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_create_dumb*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %6, align 8
  %7 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %8 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DIV_ROUND_UP(i32 %12, i32 8)
  %14 = mul nsw i32 %9, %13
  %15 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %16 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %18 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %21 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %25 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %29 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %6, align 8
  %32 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %31, i32 0, i32 4
  %33 = call i32 @udl_gem_create(%struct.drm_file* %26, %struct.drm_device* %27, i32 %30, i32* %32)
  ret i32 %33
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @udl_gem_create(%struct.drm_file*, %struct.drm_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
