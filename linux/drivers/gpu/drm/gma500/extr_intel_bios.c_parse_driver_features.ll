; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_driver_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_driver_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_driver_features = type { i64, i64 }

@BDB_DRIVER_FEATURES = common dso_local global i32 0, align 4
@BDB_DRIVER_FEATURE_EDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"LVDS VBT config bits: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, %struct.bdb_header*)* @parse_driver_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_driver_features(%struct.drm_psb_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_driver_features*, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %6 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %7 = load i32, i32* @BDB_DRIVER_FEATURES, align 4
  %8 = call %struct.bdb_driver_features* @find_section(%struct.bdb_header* %6, i32 %7)
  store %struct.bdb_driver_features* %8, %struct.bdb_driver_features** %5, align 8
  %9 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %10 = icmp ne %struct.bdb_driver_features* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %14 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BDB_DRIVER_FEATURE_EDP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %24 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %31 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.bdb_driver_features*, %struct.bdb_driver_features** %5, align 8
  %35 = getelementptr inbounds %struct.bdb_driver_features, %struct.bdb_driver_features* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %44

41:                                               ; preds = %22
  %42 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %11, %41, %38
  ret void
}

declare dso_local %struct.bdb_driver_features* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
