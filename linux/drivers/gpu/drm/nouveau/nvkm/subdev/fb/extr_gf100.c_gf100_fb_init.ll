; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gf100.c_gf100_fb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gf100.c_gf100_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.gf100_fb = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_fb_init(%struct.nvkm_fb* %0) #0 {
  %2 = alloca %struct.nvkm_fb*, align 8
  %3 = alloca %struct.gf100_fb*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %2, align 8
  %5 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %6 = call %struct.gf100_fb* @gf100_fb(%struct.nvkm_fb* %5)
  store %struct.gf100_fb* %6, %struct.gf100_fb** %3, align 8
  %7 = load %struct.gf100_fb*, %struct.gf100_fb** %3, align 8
  %8 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %4, align 8
  %12 = load %struct.gf100_fb*, %struct.gf100_fb** %3, align 8
  %13 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = load %struct.gf100_fb*, %struct.gf100_fb** %3, align 8
  %19 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 8
  %22 = call i32 @nvkm_wr32(%struct.nvkm_device* %17, i32 1051664, i32 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %25 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %35 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nvkm_therm_clkgate_init(i32 %33, i32 %38)
  br label %40

40:                                               ; preds = %30, %23
  ret void
}

declare dso_local %struct.gf100_fb* @gf100_fb(%struct.nvkm_fb*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_therm_clkgate_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
