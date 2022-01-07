; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_nv04.c_nv04_bus_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bus/extr_nv04.c_nv04_bus_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bus = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_gpio* }
%struct.nvkm_gpio = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"BUS ERROR\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_bus*)* @nv04_bus_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_bus_intr(%struct.nvkm_bus* %0) #0 {
  %2 = alloca %struct.nvkm_bus*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_gpio*, align 8
  store %struct.nvkm_bus* %0, %struct.nvkm_bus** %2, align 8
  %7 = load %struct.nvkm_bus*, %struct.nvkm_bus** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_bus, %struct.nvkm_bus* %7, i32 0, i32 0
  store %struct.nvkm_subdev* %8, %struct.nvkm_subdev** %3, align 8
  %9 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %4, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %13 = call i32 @nvkm_rd32(%struct.nvkm_device* %12, i32 4352)
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = call i32 @nvkm_rd32(%struct.nvkm_device* %14, i32 4416)
  %16 = and i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %22 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -2
  store i32 %24, i32* %5, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %26 = call i32 @nvkm_wr32(%struct.nvkm_device* %25, i32 4352, i32 1)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 272
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %32, i32 0, i32 0
  %34 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %33, align 8
  store %struct.nvkm_gpio* %34, %struct.nvkm_gpio** %6, align 8
  %35 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %36 = icmp ne %struct.nvkm_gpio* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %6, align 8
  %39 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %38, i32 0, i32 0
  %40 = call i32 @nvkm_subdev_intr(i32* %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, -273
  store i32 %43, i32* %5, align 4
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %45 = call i32 @nvkm_wr32(%struct.nvkm_device* %44, i32 4352, i32 272)
  br label %46

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @nvkm_mask(%struct.nvkm_device* %53, i32 4416, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %49, %46
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
