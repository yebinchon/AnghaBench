; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_backlight_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_intel_bios.c_parse_backlight_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { %struct.bdb_lvds_backlight*, %struct.TYPE_2__* }
%struct.bdb_lvds_backlight = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_lvds_options = type { i32 }

@BDB_LVDS_OPTIONS = common dso_local global i32 0, align 4
@BDB_LVDS_BACKLIGHT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"out of memory for backlight data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*, %struct.bdb_header*)* @parse_backlight_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_backlight_data(%struct.drm_psb_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_lvds_backlight*, align 8
  %6 = alloca %struct.bdb_lvds_backlight*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bdb_lvds_options*, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  store %struct.bdb_lvds_backlight* null, %struct.bdb_lvds_backlight** %5, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %10 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %11 = load i32, i32* @BDB_LVDS_OPTIONS, align 4
  %12 = call i8* @find_section(%struct.bdb_header* %10, i32 %11)
  %13 = bitcast i8* %12 to %struct.bdb_lvds_options*
  store %struct.bdb_lvds_options* %13, %struct.bdb_lvds_options** %9, align 8
  %14 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %14, i32 0, i32 0
  store %struct.bdb_lvds_backlight* null, %struct.bdb_lvds_backlight** %15, align 8
  %16 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %9, align 8
  %17 = icmp ne %struct.bdb_lvds_options* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.bdb_lvds_options*, %struct.bdb_lvds_options** %9, align 8
  %20 = getelementptr inbounds %struct.bdb_lvds_options, %struct.bdb_lvds_options* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %23

22:                                               ; preds = %2
  br label %49

23:                                               ; preds = %18
  %24 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %25 = load i32, i32* @BDB_LVDS_BACKLIGHT, align 4
  %26 = call i8* @find_section(%struct.bdb_header* %24, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr i8, i8* %27, i64 1
  %29 = bitcast i8* %28 to %struct.bdb_lvds_backlight*
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bdb_lvds_backlight, %struct.bdb_lvds_backlight* %29, i64 %31
  store %struct.bdb_lvds_backlight* %32, %struct.bdb_lvds_backlight** %5, align 8
  %33 = load %struct.bdb_lvds_backlight*, %struct.bdb_lvds_backlight** %5, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.bdb_lvds_backlight* @kmemdup(%struct.bdb_lvds_backlight* %33, i32 4, i32 %34)
  store %struct.bdb_lvds_backlight* %35, %struct.bdb_lvds_backlight** %6, align 8
  %36 = load %struct.bdb_lvds_backlight*, %struct.bdb_lvds_backlight** %6, align 8
  %37 = icmp ne %struct.bdb_lvds_backlight* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %23
  %39 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %49

45:                                               ; preds = %23
  %46 = load %struct.bdb_lvds_backlight*, %struct.bdb_lvds_backlight** %6, align 8
  %47 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %48 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %47, i32 0, i32 0
  store %struct.bdb_lvds_backlight* %46, %struct.bdb_lvds_backlight** %48, align 8
  br label %49

49:                                               ; preds = %45, %38, %22
  ret void
}

declare dso_local i8* @find_section(%struct.bdb_header*, i32) #1

declare dso_local %struct.bdb_lvds_backlight* @kmemdup(%struct.bdb_lvds_backlight*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
