; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_gf100.c_gf100_bus_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_gf100.c_gf100_bus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bus = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"MMIO %s of %08x FAULT at %06x [ %s%s%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"!ENGINE \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"IBUS \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"TIMEOUT \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_bus*)* @gf100_bus_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_bus_intr(%struct.nvkm_bus* %0) #0 {
  %2 = alloca %struct.nvkm_bus*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_bus* %0, %struct.nvkm_bus** %2, align 8
  %8 = load %struct.nvkm_bus*, %struct.nvkm_bus** %2, align 8
  %9 = getelementptr inbounds %struct.nvkm_bus, %struct.nvkm_bus* %8, i32 0, i32 0
  store %struct.nvkm_subdev* %9, %struct.nvkm_subdev** %3, align 8
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %4, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %14 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 4352)
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 4416)
  %17 = and i32 %14, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 14
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %1
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 36996)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 37000)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 16777212
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %50 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %32, i32 %34, i8* %39, i8* %44, i8* %49)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %51, i32 36996, i32 0)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 14
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 4352, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, -15
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %21, %1
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @nvkm_mask(%struct.nvkm_device* %66, i32 4416, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
