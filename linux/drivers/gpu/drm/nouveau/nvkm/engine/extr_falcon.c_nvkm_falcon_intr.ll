; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_falcon.c_nvkm_falcon_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/extr_falcon.c_nvkm_falcon_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_falcon = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_falcon*, %struct.nvkm_fifo_chan*)* }
%struct.nvkm_fifo_chan = type { i32 }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ucode halted\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_engine*)* @nvkm_falcon_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_falcon_intr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_falcon*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_fifo_chan*, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %12 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %13 = call %struct.nvkm_falcon* @nvkm_falcon(%struct.nvkm_engine* %12)
  store %struct.nvkm_falcon* %13, %struct.nvkm_falcon** %3, align 8
  %14 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %4, align 8
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %5, align 8
  %20 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 28
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 8
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %27, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 16
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 80
  %40 = call i32 @nvkm_rd32(%struct.nvkm_device* %37, i32 %39)
  %41 = and i32 %40, 1073741823
  store i32 %41, i32* %9, align 4
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %43 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %45, 12
  %47 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(i32 %44, i32 %46, i64* %11)
  store %struct.nvkm_fifo_chan* %47, %struct.nvkm_fifo_chan** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 64
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %1
  %52 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %53 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.nvkm_falcon*, %struct.nvkm_fifo_chan*)*, i32 (%struct.nvkm_falcon*, %struct.nvkm_fifo_chan*)** %55, align 8
  %57 = icmp ne i32 (%struct.nvkm_falcon*, %struct.nvkm_fifo_chan*)* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %60 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.nvkm_falcon*, %struct.nvkm_fifo_chan*)*, i32 (%struct.nvkm_falcon*, %struct.nvkm_fifo_chan*)** %62, align 8
  %64 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %65 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %10, align 8
  %66 = call i32 %63(%struct.nvkm_falcon* %64, %struct.nvkm_fifo_chan* %65)
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 4
  %70 = call i32 @nvkm_wr32(%struct.nvkm_device* %67, i32 %69, i32 64)
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, -65
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %58, %51
  br label %74

74:                                               ; preds = %73, %1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 16
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %80 = call i32 @nvkm_debug(%struct.nvkm_subdev* %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 4
  %84 = call i32 @nvkm_wr32(%struct.nvkm_device* %81, i32 %83, i32 16)
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, -17
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %78, %74
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @nvkm_error(%struct.nvkm_subdev* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @nvkm_wr32(%struct.nvkm_device* %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %87
  %100 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %101 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @nvkm_fifo_chan_put(i32 %102, i64 %103, %struct.nvkm_fifo_chan** %10)
  ret void
}

declare dso_local %struct.nvkm_falcon* @nvkm_falcon(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(i32, i32, i64*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_fifo_chan_put(i32, i64, %struct.nvkm_fifo_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
