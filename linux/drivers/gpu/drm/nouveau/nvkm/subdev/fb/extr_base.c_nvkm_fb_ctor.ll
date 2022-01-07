; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_base.c_nvkm_fb_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_base.c_nvkm_fb_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb_func = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fb = type { %struct.nvkm_fb_func*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@nvkm_fb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"NvFbBigPage\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_fb_ctor(%struct.nvkm_fb_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_fb* %3) #0 {
  %5 = alloca %struct.nvkm_fb_func*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_fb*, align 8
  store %struct.nvkm_fb_func* %0, %struct.nvkm_fb_func** %5, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_fb* %3, %struct.nvkm_fb** %8, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %12 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %11, i32 0, i32 3
  %13 = call i32 @nvkm_subdev_ctor(i32* @nvkm_fb, %struct.nvkm_device* %9, i32 %10, i32* %12)
  %14 = load %struct.nvkm_fb_func*, %struct.nvkm_fb_func** %5, align 8
  %15 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %16 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %15, i32 0, i32 0
  store %struct.nvkm_fb_func* %14, %struct.nvkm_fb_func** %16, align 8
  %17 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %18 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %17, i32 0, i32 0
  %19 = load %struct.nvkm_fb_func*, %struct.nvkm_fb_func** %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_fb_func, %struct.nvkm_fb_func* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %27 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %30 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %29, i32 0, i32 0
  %31 = load %struct.nvkm_fb_func*, %struct.nvkm_fb_func** %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_fb_func, %struct.nvkm_fb_func* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nvkm_longopt(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %36 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  ret void
}

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i32 @nvkm_longopt(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
