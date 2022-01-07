; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.gf100_ram = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"NvMemExec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ram_prog(%struct.nvkm_ram* %0) #0 {
  %2 = alloca %struct.nvkm_ram*, align 8
  %3 = alloca %struct.gf100_ram*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %2, align 8
  %5 = load %struct.nvkm_ram*, %struct.nvkm_ram** %2, align 8
  %6 = call %struct.gf100_ram* @gf100_ram(%struct.nvkm_ram* %5)
  store %struct.gf100_ram* %6, %struct.gf100_ram** %3, align 8
  %7 = load %struct.gf100_ram*, %struct.gf100_ram** %3, align 8
  %8 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.gf100_ram*, %struct.gf100_ram** %3, align 8
  %15 = getelementptr inbounds %struct.gf100_ram, %struct.gf100_ram* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nvkm_boolopt(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1)
  %20 = call i32 @ram_exec(i32* %15, i32 %19)
  ret i32 0
}

declare dso_local %struct.gf100_ram* @gf100_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @ram_exec(i32*, i32) #1

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
