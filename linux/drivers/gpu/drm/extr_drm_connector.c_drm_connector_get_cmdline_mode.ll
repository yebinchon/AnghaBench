; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_get_cmdline_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_get_cmdline_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i64, %struct.drm_cmdline_mode }
%struct.drm_cmdline_mode = type { i32, i64, i64, i64, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"forcing %s connector %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"cmdline mode for connector %s %s %dx%d@%dHz%s%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" reduced blanking\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" with margins\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" interlaced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @drm_connector_get_cmdline_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_connector_get_cmdline_mode(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_cmdline_mode*, align 8
  %4 = alloca i8*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %5, i32 0, i32 2
  store %struct.drm_cmdline_mode* %6, %struct.drm_cmdline_mode** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @fb_get_options(i32 %9, i8** %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %82

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %16 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %17 = call i32 @drm_mode_parse_command_line_for_connector(i8* %14, %struct.drm_connector* %15, %struct.drm_cmdline_mode* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %82

20:                                               ; preds = %13
  %21 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %22 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %30 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @drm_get_connector_force_name(i64 %31)
  %33 = call i32 @DRM_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  %34 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %35 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %25, %20
  %40 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %41 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %44 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %47 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %50 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %53 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %58 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  br label %61

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 60, %60 ]
  %63 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %64 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %69 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %70 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %75 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %3, align 8
  %76 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %81 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51, i32 %62, i8* %68, i8* %74, i8* %80)
  br label %82

82:                                               ; preds = %61, %19, %12
  ret void
}

declare dso_local i64 @fb_get_options(i32, i8**) #1

declare dso_local i32 @drm_mode_parse_command_line_for_connector(i8*, %struct.drm_connector*, %struct.drm_cmdline_mode*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

declare dso_local i32 @drm_get_connector_force_name(i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
