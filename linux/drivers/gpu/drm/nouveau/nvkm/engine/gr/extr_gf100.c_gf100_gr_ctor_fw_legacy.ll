; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_ctor_fw_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_ctor_fw_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }
%struct.gf100_gr_fuc = type { i32*, i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"fecs_inst\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fuc409c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fecs_data\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fuc409d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gpccs_inst\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fuc41ac\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"gpccs_data\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fuc41ad\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"failed to load %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%s: falling back to legacy path\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"nouveau/nv%02x_%s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"nouveau/%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_gr_ctor_fw_legacy(%struct.gf100_gr* %0, i8* %1, %struct.gf100_gr_fuc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_gr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gf100_gr_fuc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_subdev*, align 8
  %11 = alloca %struct.nvkm_device*, align 8
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca [32 x i8], align 16
  store %struct.gf100_gr* %0, %struct.gf100_gr** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.gf100_gr_fuc* %2, %struct.gf100_gr_fuc** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.gf100_gr*, %struct.gf100_gr** %6, align 8
  %15 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %10, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %48

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %47

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %46

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %45

40:                                               ; preds = %35
  %41 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @nvkm_error(%struct.nvkm_subdev* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %5, align 4
  br label %110

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %34
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @nvkm_debug(%struct.nvkm_subdev* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %50)
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %54 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %52, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %55, i8* %56)
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %60 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @request_firmware(%struct.firmware** %12, i8* %58, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %48
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %66, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %67)
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %71 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @request_firmware(%struct.firmware** %12, i8* %69, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @nvkm_error(%struct.nvkm_subdev* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %5, align 4
  br label %110

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %48
  %83 = load %struct.firmware*, %struct.firmware** %12, align 8
  %84 = getelementptr inbounds %struct.firmware, %struct.firmware* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %8, align 8
  %87 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.firmware*, %struct.firmware** %12, align 8
  %89 = getelementptr inbounds %struct.firmware, %struct.firmware* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %8, align 8
  %92 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32* @kmemdup(i32 %90, i32 %93, i32 %94)
  %96 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %8, align 8
  %97 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %96, i32 0, i32 0
  store i32* %95, i32** %97, align 8
  %98 = load %struct.firmware*, %struct.firmware** %12, align 8
  %99 = call i32 @release_firmware(%struct.firmware* %98)
  %100 = load %struct.gf100_gr_fuc*, %struct.gf100_gr_fuc** %8, align 8
  %101 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %82
  br label %108

105:                                              ; preds = %82
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  br label %108

108:                                              ; preds = %105, %104
  %109 = phi i32 [ 0, %104 ], [ %107, %105 ]
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %76, %40
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i8*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
