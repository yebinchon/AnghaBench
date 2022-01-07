; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_backlight.c_nv40_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_backlight.c_nv40_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_ops = type { i32 }
%struct.nouveau_encoder = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvif_object }
%struct.nvif_object = type { i32 }

@NV40_PMC_BACKLIGHT = common dso_local global i32 0, align 4
@NV40_PMC_BACKLIGHT_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@nv40_bl_ops = common dso_local global %struct.backlight_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_encoder*, %struct.backlight_properties*, %struct.backlight_ops**)* @nv40_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_backlight_init(%struct.nouveau_encoder* %0, %struct.backlight_properties* %1, %struct.backlight_ops** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_encoder*, align 8
  %6 = alloca %struct.backlight_properties*, align 8
  %7 = alloca %struct.backlight_ops**, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nvif_object*, align 8
  store %struct.nouveau_encoder* %0, %struct.nouveau_encoder** %5, align 8
  store %struct.backlight_properties* %1, %struct.backlight_properties** %6, align 8
  store %struct.backlight_ops** %2, %struct.backlight_ops*** %7, align 8
  %10 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nouveau_drm* @nouveau_drm(i32 %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %8, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.nvif_object* %19, %struct.nvif_object** %9, align 8
  %20 = load %struct.nvif_object*, %struct.nvif_object** %9, align 8
  %21 = load i32, i32* @NV40_PMC_BACKLIGHT, align 4
  %22 = call i32 @nvif_rd32(%struct.nvif_object* %20, i32 %21)
  %23 = load i32, i32* @NV40_PMC_BACKLIGHT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load i32, i32* @BACKLIGHT_RAW, align 4
  %31 = load %struct.backlight_properties*, %struct.backlight_properties** %6, align 8
  %32 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.backlight_properties*, %struct.backlight_properties** %6, align 8
  %34 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %33, i32 0, i32 0
  store i32 31, i32* %34, align 4
  %35 = load %struct.backlight_ops**, %struct.backlight_ops*** %7, align 8
  store %struct.backlight_ops* @nv40_bl_ops, %struct.backlight_ops** %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @nvif_rd32(%struct.nvif_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
