; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_xtensa.c_nvkm_xtensa_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_xtensa.c_nvkm_xtensa_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_xtensa = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Watchdog interrupt, engine hung.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Enabling FIFO_CTRL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_engine*)* @nvkm_xtensa_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_xtensa_intr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_xtensa*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %11 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %12 = call %struct.nvkm_xtensa* @nvkm_xtensa(%struct.nvkm_engine* %11)
  store %struct.nvkm_xtensa* %12, %struct.nvkm_xtensa** %3, align 8
  %13 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %4, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %5, align 8
  %19 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 3332
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 3104
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 3112
  %33 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 3340
  %37 = call i32 @nvkm_rd32(%struct.nvkm_device* %34, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 16
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %43 = call i32 @nvkm_warn(%struct.nvkm_subdev* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %1
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 3104
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %47, i32 %48)
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 3104
  %53 = call i32 @nvkm_rd32(%struct.nvkm_device* %50, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 65537
  br i1 %55, label %56, label %79

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 512
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %62
  %66 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %67 = call i32 @nvkm_debug(%struct.nvkm_subdev* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %69 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %3, align 8
  %70 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 3476
  %73 = load %struct.nvkm_xtensa*, %struct.nvkm_xtensa** %3, align 8
  %74 = getelementptr inbounds %struct.nvkm_xtensa, %struct.nvkm_xtensa* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nvkm_mask(%struct.nvkm_device* %68, i32 %72, i32 0, i32 %77)
  br label %79

79:                                               ; preds = %65, %62, %59, %56, %44
  ret void
}

declare dso_local %struct.nvkm_xtensa* @nvkm_xtensa(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
