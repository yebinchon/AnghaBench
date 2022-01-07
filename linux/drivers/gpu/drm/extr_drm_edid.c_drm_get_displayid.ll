; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_get_displayid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_get_displayid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32*, i32 }
%struct.edid = type { i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, %struct.edid*)* @drm_get_displayid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_get_displayid(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.edid*, %struct.edid** %4, align 8
  %10 = call i8* @drm_find_displayid_extension(%struct.edid* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @EDID_LENGTH, align 4
  %18 = call i32 @drm_parse_display_id(%struct.drm_connector* %15, i8* %16, i32 %17, i32 1)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %29

22:                                               ; preds = %14
  %23 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  br label %45

29:                                               ; preds = %27, %21, %13
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @drm_mode_put_tile_group(i32 %37, i32* %40)
  %42 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %34, %29
  br label %45

45:                                               ; preds = %44, %28
  ret void
}

declare dso_local i8* @drm_find_displayid_extension(%struct.edid*) #1

declare dso_local i32 @drm_parse_display_id(%struct.drm_connector*, i8*, i32, i32) #1

declare dso_local i32 @drm_mode_put_tile_group(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
