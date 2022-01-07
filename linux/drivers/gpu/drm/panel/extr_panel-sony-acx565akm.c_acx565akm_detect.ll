; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acx565akm_panel = type { i32, i8*, i32, i32, i32, i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@MIPI_DCS_GET_DISPLAY_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"LCD panel %s by bootloader (status 0x%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"disabled \00", align 1
@MIPI_DCS_GET_DISPLAY_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"MIPI display ID: %02x%02x%02x\0A\00", align 1
@MIPID_VER_ACX565AKM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"acx565akm\00", align 1
@MIPID_VER_L4F00311 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"l4f00311\00", align 1
@MIPID_VER_LPH8923 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"lph8923\00", align 1
@MIPID_VER_LS041Y3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"ls041y3\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"unknown display ID\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"%s rev %02x panel detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acx565akm_panel*)* @acx565akm_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acx565akm_detect(%struct.acx565akm_panel* %0) #0 {
  %2 = alloca %struct.acx565akm_panel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acx565akm_panel* %0, %struct.acx565akm_panel** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %7 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @gpiod_set_value(i32 %8, i32 1)
  %10 = call i32 @usleep_range(i32 5000, i32 10000)
  %11 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %12 = load i32, i32* @MIPI_DCS_GET_DISPLAY_STATUS, align 4
  %13 = call i32 @acx565akm_read(%struct.acx565akm_panel* %11, i32 %12, i32* %3, i32 4)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @__be32_to_cpu(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 131072
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1024
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %19, %1
  %24 = phi i1 [ false, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %27 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %29 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %28, i32 0, i32 6
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %33 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32*, i8*, i8*, i32, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %41 = load i32, i32* @MIPI_DCS_GET_DISPLAY_ID, align 4
  %42 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %43 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @acx565akm_read(%struct.acx565akm_panel* %40, i32 %41, i32* %44, i32 3)
  %46 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %47 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %51 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %58 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %57, i32 0, i32 7
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %63 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, i8*, i32, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %61, i32 %66)
  %68 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %69 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %101 [
    i32 16, label %73
    i32 41, label %83
    i32 69, label %89
    i32 131, label %95
  ]

73:                                               ; preds = %23
  %74 = load i32, i32* @MIPID_VER_ACX565AKM, align 4
  %75 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %76 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 8
  %77 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %78 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %77, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %80 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %82 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  br label %111

83:                                               ; preds = %23
  %84 = load i32, i32* @MIPID_VER_L4F00311, align 4
  %85 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %86 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %88 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %87, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %88, align 8
  br label %111

89:                                               ; preds = %23
  %90 = load i32, i32* @MIPID_VER_LPH8923, align 4
  %91 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %92 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  %93 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %94 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %93, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %94, align 8
  br label %111

95:                                               ; preds = %23
  %96 = load i32, i32* @MIPID_VER_LS041Y3, align 4
  %97 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %98 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %100 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %99, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %100, align 8
  br label %111

101:                                              ; preds = %23
  %102 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %103 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %102, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %103, align 8
  %104 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %105 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %104, i32 0, i32 6
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %130

111:                                              ; preds = %95, %89, %83, %73
  %112 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %113 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %118 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %120 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %119, i32 0, i32 6
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %124 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %127 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dev_info(i32* %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %125, i32 %128)
  br label %130

130:                                              ; preds = %111, %101
  %131 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %132 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %2, align 8
  %137 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @gpiod_set_value(i32 %138, i32 0)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @acx565akm_read(%struct.acx565akm_panel*, i32, i32*, i32) #1

declare dso_local i32 @__be32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32, ...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
