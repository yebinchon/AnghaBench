; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_dcb_sanitise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_dcb_sanitise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mxm = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unsupported DCB version\0A\00", align 1
@mxm_dcb_sanitise_entry = common dso_local global i32 0, align 4
@mxm_show_unmatched = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_mxm*)* @mxm_dcb_sanitise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxm_dcb_sanitise(%struct.nvkm_mxm* %0) #0 {
  %2 = alloca %struct.nvkm_mxm*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_mxm* %0, %struct.nvkm_mxm** %2, align 8
  %10 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %3, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %15, align 8
  store %struct.nvkm_bios* %16, %struct.nvkm_bios** %4, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %18 = call i32 @dcb_table(%struct.nvkm_bios* %17, i32* %5, i32* %6, i32* %7, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 64
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 65
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %1
  %28 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %29 = call i32 @nvkm_warn(%struct.nvkm_subdev* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %38

30:                                               ; preds = %24, %21
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %32 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %2, align 8
  %33 = load i32, i32* @mxm_dcb_sanitise_entry, align 4
  %34 = call i32 @dcb_outp_foreach(%struct.nvkm_bios* %31, %struct.nvkm_mxm* %32, i32 %33)
  %35 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %2, align 8
  %36 = load i32, i32* @mxm_show_unmatched, align 4
  %37 = call i32 @mxms_foreach(%struct.nvkm_mxm* %35, i32 1, i32 %36, i32* null)
  br label %38

38:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @dcb_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @dcb_outp_foreach(%struct.nvkm_bios*, %struct.nvkm_mxm*, i32) #1

declare dso_local i32 @mxms_foreach(%struct.nvkm_mxm*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
