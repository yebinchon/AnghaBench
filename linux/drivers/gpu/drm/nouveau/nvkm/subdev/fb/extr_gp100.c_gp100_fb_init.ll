; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gp100.c_gp100_fb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gp100.c_gp100_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }
%struct.gf100_fb = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gp100_fb_init(%struct.nvkm_fb* %0) #0 {
  %2 = alloca %struct.nvkm_fb*, align 8
  %3 = alloca %struct.gf100_fb*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %2, align 8
  %5 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %6 = call %struct.gf100_fb* @gf100_fb(%struct.nvkm_fb* %5)
  store %struct.gf100_fb* %6, %struct.gf100_fb** %3, align 8
  %7 = load %struct.gf100_fb*, %struct.gf100_fb** %3, align 8
  %8 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %4, align 8
  %12 = load %struct.gf100_fb*, %struct.gf100_fb** %3, align 8
  %13 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %12, i32 0, i32 2
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
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = load %struct.gf100_fb*, %struct.gf100_fb** %3, align 8
  %26 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nvkm_memory_addr(i32 %28)
  %30 = ashr i32 %29, 8
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 1051848, i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %33 = load %struct.gf100_fb*, %struct.gf100_fb** %3, align 8
  %34 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nvkm_memory_addr(i32 %36)
  %38 = ashr i32 %37, 8
  %39 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 1051852, i32 %38)
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %41 = load %struct.gf100_fb*, %struct.gf100_fb** %3, align 8
  %42 = getelementptr inbounds %struct.gf100_fb, %struct.gf100_fb* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @nvkm_memory_size(i32 %44)
  %46 = ashr i32 %45, 16
  %47 = call i32 @min(i32 %46, i32 2)
  %48 = shl i32 %47, 17
  %49 = call i32 @nvkm_mask(%struct.nvkm_device* %40, i32 1051844, i32 393216, i32 %48)
  ret void
}

declare dso_local %struct.gf100_fb* @gf100_fb(%struct.nvkm_fb*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvkm_memory_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
