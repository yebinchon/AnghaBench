; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vga.c_nouveau_vga_set_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vga.c_nouveau_vga_set_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.nvif_object }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nvif_object = type { i32 }

@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_MEM = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_IO = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @nouveau_vga_set_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_vga_set_decode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvif_object*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(i8* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %6, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store %struct.nvif_object* %13, %struct.nvif_object** %7, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 76
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nvif_wr32(%struct.nvif_object* %31, i32 557152, i32 %32)
  br label %51

34:                                               ; preds = %22, %2
  %35 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 64
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @nvif_wr32(%struct.nvif_object* %43, i32 557140, i32 %44)
  br label %50

46:                                               ; preds = %34
  %47 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @nvif_wr32(%struct.nvif_object* %47, i32 6228, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %56 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @VGA_RSRC_NORMAL_IO, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @VGA_RSRC_NORMAL_MEM, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %51
  %63 = load i32, i32* @VGA_RSRC_NORMAL_IO, align 4
  %64 = load i32, i32* @VGA_RSRC_NORMAL_MEM, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %54
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i8*) #1

declare dso_local i32 @nvif_wr32(%struct.nvif_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
