; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_get_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.mod_vrr_params = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.core_freesync = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_freesync_get_settings(%struct.mod_freesync* %0, %struct.mod_vrr_params* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.mod_freesync*, align 8
  %12 = alloca %struct.mod_vrr_params*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.core_freesync*, align 8
  store %struct.mod_freesync* %0, %struct.mod_freesync** %11, align 8
  store %struct.mod_vrr_params* %1, %struct.mod_vrr_params** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store %struct.core_freesync* null, %struct.core_freesync** %21, align 8
  %22 = load %struct.mod_freesync*, %struct.mod_freesync** %11, align 8
  %23 = icmp eq %struct.mod_freesync* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  br label %59

25:                                               ; preds = %10
  %26 = load %struct.mod_freesync*, %struct.mod_freesync** %11, align 8
  %27 = call %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync* %26)
  store %struct.core_freesync* %27, %struct.core_freesync** %21, align 8
  %28 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %12, align 8
  %29 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %25
  %33 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %12, align 8
  %34 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %12, align 8
  %39 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %14, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %15, align 8
  store i32 0, i32* %43, align 4
  %44 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %12, align 8
  %45 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %18, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %12, align 8
  %50 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %19, align 8
  store i32 %52, i32* %53, align 4
  %54 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %12, align 8
  %55 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %20, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %24, %32, %25
  ret void
}

declare dso_local %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
