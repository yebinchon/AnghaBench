; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_base.c_nvkm_mxm_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_base.c_nvkm_mxm_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32, %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_mxm = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_mxm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"no VBIOS data, nothing to do\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"BIOS version %d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"module flags: %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"config flags: %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to locate valid SIS\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"MXMS Version %d.%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NvMXMDCB\00", align 1
@MXM_SANITISE_DCB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_mxm_new_(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_mxm** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_mxm**, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvkm_mxm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_mxm** %2, %struct.nvkm_mxm*** %7, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %13, i32 0, i32 1
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %14, align 8
  store %struct.nvkm_bios* %15, %struct.nvkm_bios** %8, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.nvkm_mxm* @kzalloc(i32 8, i32 %16)
  %18 = load %struct.nvkm_mxm**, %struct.nvkm_mxm*** %7, align 8
  store %struct.nvkm_mxm* %17, %struct.nvkm_mxm** %18, align 8
  store %struct.nvkm_mxm* %17, %struct.nvkm_mxm** %9, align 8
  %19 = icmp ne %struct.nvkm_mxm* %17, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %96

23:                                               ; preds = %3
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %27 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %26, i32 0, i32 1
  %28 = call i32 @nvkm_subdev_ctor(i32* @nvkm_mxm, %struct.nvkm_device* %24, i32 %25, i32* %27)
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %30 = call i64 @mxm_table(%struct.nvkm_bios* %29, i32* %10, i32* %11)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @nvbios_rd08(%struct.nvkm_bios* %34, i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %40 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %39, i32 0, i32 1
  %41 = call i32 (i32*, i8*, ...) @nvkm_debug(i32* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %96

42:                                               ; preds = %33
  %43 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %44 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %43, i32 0, i32 1
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 4
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 15
  %49 = call i32 @nvkm_info(i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %51 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %50, i32 0, i32 1
  %52 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @nvbios_rd08(%struct.nvkm_bios* %52, i64 %54)
  %56 = call i32 (i32*, i8*, ...) @nvkm_debug(i32* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %58 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %57, i32 0, i32 1
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, 2
  %62 = call i32 @nvbios_rd08(%struct.nvkm_bios* %59, i64 %61)
  %63 = call i32 (i32*, i8*, ...) @nvkm_debug(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @mxm_shadow(%struct.nvkm_mxm* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %42
  %69 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %70 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %69, i32 0, i32 1
  %71 = call i32 @nvkm_warn(i32* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %96

72:                                               ; preds = %42
  %73 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %74 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %73, i32 0, i32 1
  %75 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %76 = call i32 @mxms_version(%struct.nvkm_mxm* %75)
  %77 = ashr i32 %76, 8
  %78 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %79 = call i32 @mxms_version(%struct.nvkm_mxm* %78)
  %80 = and i32 %79, 255
  %81 = call i32 (i32*, i8*, ...) @nvkm_debug(i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %83 = call i32 @mxms_foreach(%struct.nvkm_mxm* %82, i32 0, i32* null, i32* null)
  %84 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %85 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @nvkm_boolopt(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %72
  %90 = load i32, i32* @MXM_SANITISE_DCB, align 4
  %91 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %9, align 8
  %92 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %72
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %68, %38, %20
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.nvkm_mxm* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i64 @mxm_table(%struct.nvkm_bios*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, ...) #1

declare dso_local i32 @nvkm_info(i32*, i8*, i32, i32) #1

declare dso_local i64 @mxm_shadow(%struct.nvkm_mxm*, i32) #1

declare dso_local i32 @nvkm_warn(i32*, i8*) #1

declare dso_local i32 @mxms_version(%struct.nvkm_mxm*) #1

declare dso_local i32 @mxms_foreach(%struct.nvkm_mxm*, i32, i32*, i32*) #1

declare dso_local i64 @nvkm_boolopt(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
