; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_ram_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgt215.c_gt215_ram_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.gt215_ram = type { %struct.TYPE_6__, %struct.gt215_ramfuc }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gt215_ramfuc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"NvMemExec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*)* @gt215_ram_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt215_ram_prog(%struct.nvkm_ram* %0) #0 {
  %2 = alloca %struct.nvkm_ram*, align 8
  %3 = alloca %struct.gt215_ram*, align 8
  %4 = alloca %struct.gt215_ramfuc*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %2, align 8
  %7 = load %struct.nvkm_ram*, %struct.nvkm_ram** %2, align 8
  %8 = call %struct.gt215_ram* @gt215_ram(%struct.nvkm_ram* %7)
  store %struct.gt215_ram* %8, %struct.gt215_ram** %3, align 8
  %9 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %10 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %9, i32 0, i32 1
  store %struct.gt215_ramfuc* %10, %struct.gt215_ramfuc** %4, align 8
  %11 = load %struct.gt215_ram*, %struct.gt215_ram** %3, align 8
  %12 = getelementptr inbounds %struct.gt215_ram, %struct.gt215_ram* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %5, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nvkm_boolopt(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = call i32 @nvkm_mask(%struct.nvkm_device* %25, i32 5428, i32 2, i32 2)
  %27 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %4, align 8
  %28 = call i32 @ram_exec(%struct.gt215_ramfuc* %27, i32 1)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = call i32 @nvkm_mask(%struct.nvkm_device* %29, i32 9476, i32 1, i32 0)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = call i32 @nvkm_mask(%struct.nvkm_device* %31, i32 5428, i32 2, i32 0)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = call i32 @nvkm_mask(%struct.nvkm_device* %33, i32 6382344, i32 16, i32 16)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %36 = call i32 @nvkm_mask(%struct.nvkm_device* %35, i32 6384392, i32 16, i32 16)
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.gt215_ramfuc*, %struct.gt215_ramfuc** %4, align 8
  %39 = call i32 @ram_exec(%struct.gt215_ramfuc* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %24
  ret i32 0
}

declare dso_local %struct.gt215_ram* @gt215_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @ram_exec(%struct.gt215_ramfuc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
