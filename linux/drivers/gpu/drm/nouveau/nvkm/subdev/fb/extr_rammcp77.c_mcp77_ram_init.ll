; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_rammcp77.c_mcp77_ram_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_rammcp77.c_mcp77_ram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.mcp77_ram = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*)* @mcp77_ram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp77_ram_init(%struct.nvkm_ram* %0) #0 {
  %2 = alloca %struct.nvkm_ram*, align 8
  %3 = alloca %struct.mcp77_ram*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %2, align 8
  %8 = load %struct.nvkm_ram*, %struct.nvkm_ram** %2, align 8
  %9 = call %struct.mcp77_ram* @mcp77_ram(%struct.nvkm_ram* %8)
  store %struct.mcp77_ram* %9, %struct.mcp77_ram** %3, align 8
  %10 = load %struct.mcp77_ram*, %struct.mcp77_ram** %3, align 8
  %11 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %4, align 8
  %17 = load %struct.mcp77_ram*, %struct.mcp77_ram** %3, align 8
  %18 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mcp77_ram*, %struct.mcp77_ram** %3, align 8
  %22 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 0
  %25 = sub nsw i32 %20, %24
  %26 = ashr i32 %25, 5
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load %struct.mcp77_ram*, %struct.mcp77_ram** %3, align 8
  %29 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mcp77_ram*, %struct.mcp77_ram** %3, align 8
  %33 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 32
  %36 = sub nsw i32 %31, %35
  %37 = ashr i32 %36, 5
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load %struct.mcp77_ram*, %struct.mcp77_ram** %3, align 8
  %40 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mcp77_ram*, %struct.mcp77_ram** %3, align 8
  %44 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 64
  %47 = sub nsw i32 %42, %46
  %48 = ashr i32 %47, 5
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %50, i32 1051672, i32 %51)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %54 = call i32 @nvkm_mask(%struct.nvkm_device* %53, i32 1051668, i32 0, i32 1)
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @nvkm_wr32(%struct.nvkm_device* %55, i32 1051676, i32 %56)
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %59 = call i32 @nvkm_mask(%struct.nvkm_device* %58, i32 1051668, i32 0, i32 2)
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i32 1051684, i32 %61)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %64 = call i32 @nvkm_mask(%struct.nvkm_device* %63, i32 1051668, i32 0, i32 65536)
  ret i32 0
}

declare dso_local %struct.mcp77_ram* @mcp77_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
