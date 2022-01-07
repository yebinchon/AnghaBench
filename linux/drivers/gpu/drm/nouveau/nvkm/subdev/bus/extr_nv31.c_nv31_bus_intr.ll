; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_nv31.c_nv31_bus_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_nv31.c_nv31_bus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bus = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_therm*, %struct.nvkm_gpio* }
%struct.nvkm_therm = type { i32 }
%struct.nvkm_gpio = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"MMIO %s of %08x FAULT at %06x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_bus*)* @nv31_bus_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv31_bus_intr(%struct.nvkm_bus* %0) #0 {
  %2 = alloca %struct.nvkm_bus*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_therm*, align 8
  store %struct.nvkm_bus* %0, %struct.nvkm_bus** %2, align 8
  %11 = load %struct.nvkm_bus*, %struct.nvkm_bus** %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_bus, %struct.nvkm_bus* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %3, align 8
  %13 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %4, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 4352)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 4416)
  %20 = and i32 %17, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 4356)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 4420)
  %25 = and i32 %22, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %30 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %29, i32 0, i32 1
  %31 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %30, align 8
  store %struct.nvkm_gpio* %31, %struct.nvkm_gpio** %7, align 8
  %32 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %33 = icmp ne %struct.nvkm_gpio* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %7, align 8
  %36 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %35, i32 0, i32 0
  %37 = call i32 @nvkm_subdev_intr(i32* %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %45 = call i32 @nvkm_rd32(%struct.nvkm_device* %44, i32 36996)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %47 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 37000)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 16777212
  %57 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %54, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, -9
  store i32 %59, i32* %5, align 4
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %61 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i32 4352, i32 8)
  br label %62

62:                                               ; preds = %43, %39
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 458752
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %68 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %67, i32 0, i32 0
  %69 = load %struct.nvkm_therm*, %struct.nvkm_therm** %68, align 8
  store %struct.nvkm_therm* %69, %struct.nvkm_therm** %10, align 8
  %70 = load %struct.nvkm_therm*, %struct.nvkm_therm** %10, align 8
  %71 = icmp ne %struct.nvkm_therm* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.nvkm_therm*, %struct.nvkm_therm** %10, align 8
  %74 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %73, i32 0, i32 0
  %75 = call i32 @nvkm_subdev_intr(i32* %74)
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, -458753
  store i32 %78, i32* %5, align 4
  %79 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %79, i32 4352, i32 458752)
  br label %81

81:                                               ; preds = %76, %62
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @nvkm_mask(%struct.nvkm_device* %88, i32 4416, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_subdev_intr(i32*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
