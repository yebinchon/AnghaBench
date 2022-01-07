; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv50.c_nv50_mpeg_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv50.c_nv50_mpeg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_mpeg_intr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %10 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %3, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %4, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 45312)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = call i32 @nvkm_rd32(%struct.nvkm_device* %17, i32 45616)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 45620)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 45624)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 16777216
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 45832, i32 256)
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, -16777217
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %30, %27
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @nvkm_info(%struct.nvkm_subdev* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %39
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %50, i32 45312, i32 %51)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %54 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 45616, i32 1)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_info(%struct.nvkm_subdev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
