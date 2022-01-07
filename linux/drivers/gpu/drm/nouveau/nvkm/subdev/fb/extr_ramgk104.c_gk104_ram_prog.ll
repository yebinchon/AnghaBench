; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32 }
%struct.gk104_ram = type { %struct.TYPE_6__, %struct.gk104_ramfuc }
%struct.TYPE_6__ = type { %struct.nvkm_ram_data, %struct.nvkm_ram_data*, %struct.TYPE_5__* }
%struct.nvkm_ram_data = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gk104_ramfuc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"NvMemExec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk104_ram_prog(%struct.nvkm_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_ram*, align 8
  %4 = alloca %struct.gk104_ram*, align 8
  %5 = alloca %struct.gk104_ramfuc*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_ram_data*, align 8
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %3, align 8
  %8 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %9 = call %struct.gk104_ram* @gk104_ram(%struct.nvkm_ram* %8)
  store %struct.gk104_ram* %9, %struct.gk104_ram** %4, align 8
  %10 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %11 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %10, i32 0, i32 1
  store %struct.gk104_ramfuc* %11, %struct.gk104_ramfuc** %5, align 8
  %12 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %13 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %6, align 8
  %19 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %20 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %21, align 8
  store %struct.nvkm_ram_data* %22, %struct.nvkm_ram_data** %7, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nvkm_boolopt(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %1
  %29 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %30 = call i32 @ram_exec(%struct.gk104_ramfuc* %29, i32 0)
  %31 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %32 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %33, align 8
  %35 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %36 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = icmp eq %struct.nvkm_ram_data* %34, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %1
  %41 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %42 = call i32 @gk104_ram_prog_0(%struct.gk104_ram* %41, i32 1000)
  %43 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %44 = call i32 @ram_exec(%struct.gk104_ramfuc* %43, i32 1)
  %45 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %46 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %7, align 8
  %47 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gk104_ram_prog_0(%struct.gk104_ram* %45, i32 %48)
  %50 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %51 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %52, align 8
  %54 = load %struct.gk104_ram*, %struct.gk104_ram** %4, align 8
  %55 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = icmp eq %struct.nvkm_ram_data* %53, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %40, %28
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.gk104_ram* @gk104_ram(%struct.nvkm_ram*) #1

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #1

declare dso_local i32 @ram_exec(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @gk104_ram_prog_0(%struct.gk104_ram*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
