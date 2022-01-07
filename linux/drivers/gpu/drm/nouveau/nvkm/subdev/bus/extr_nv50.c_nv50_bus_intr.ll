; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_nv50.c_nv50_bus_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_nv50.c_nv50_bus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bus = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_therm* }
%struct.nvkm_therm = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"MMIO %s of %08x FAULT at %06x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_bus_intr(%struct.nvkm_bus* %0) #0 {
  %2 = alloca %struct.nvkm_bus*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_therm*, align 8
  store %struct.nvkm_bus* %0, %struct.nvkm_bus** %2, align 8
  %9 = load %struct.nvkm_bus*, %struct.nvkm_bus** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_bus, %struct.nvkm_bus* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %3, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = call i32 @nvkm_rd32(%struct.nvkm_device* %14, i32 4352)
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 4416)
  %18 = and i32 %15, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 36996)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 37000)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 16777212
  %36 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, -9
  store i32 %38, i32* %5, align 4
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 4352, i32 8)
  br label %41

41:                                               ; preds = %22, %1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 65536
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %47 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %46, i32 0, i32 0
  %48 = load %struct.nvkm_therm*, %struct.nvkm_therm** %47, align 8
  store %struct.nvkm_therm* %48, %struct.nvkm_therm** %8, align 8
  %49 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %50 = icmp ne %struct.nvkm_therm* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %53 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %52, i32 0, i32 0
  %54 = call i32 @nvkm_subdev_intr(i32* %53)
  br label %55

55:                                               ; preds = %51, %45
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, -65537
  store i32 %57, i32* %5, align 4
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %58, i32 4352, i32 65536)
  br label %60

60:                                               ; preds = %55, %41
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @nvkm_mask(%struct.nvkm_device* %67, i32 4416, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %63, %60
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_subdev_intr(i32*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
