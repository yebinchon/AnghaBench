; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_nuts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_nuts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_ram = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.ramfuc }
%struct.ramfuc = type { i32 }
%struct.TYPE_4__ = type { %struct.nvkm_fb* }
%struct.nvkm_fb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.ramfuc_reg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_ram*, %struct.ramfuc_reg*, i32, i32, i32)* @gk104_ram_nuts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_ram_nuts(%struct.gk104_ram* %0, %struct.ramfuc_reg* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gk104_ram*, align 8
  %7 = alloca %struct.ramfuc_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_fb*, align 8
  %12 = alloca %struct.ramfuc*, align 8
  %13 = alloca %struct.nvkm_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.gk104_ram* %0, %struct.gk104_ram** %6, align 8
  store %struct.ramfuc_reg* %1, %struct.ramfuc_reg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %21 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_fb*, %struct.nvkm_fb** %22, align 8
  store %struct.nvkm_fb* %23, %struct.nvkm_fb** %11, align 8
  %24 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %25 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store %struct.ramfuc* %26, %struct.ramfuc** %12, align 8
  %27 = load %struct.nvkm_fb*, %struct.nvkm_fb** %11, align 8
  %28 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %29, align 8
  store %struct.nvkm_device* %30, %struct.nvkm_device** %13, align 8
  %31 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %7, align 8
  %32 = getelementptr inbounds %struct.ramfuc_reg, %struct.ramfuc_reg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 4095
  %35 = add nsw i32 1114112, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.ramfuc_reg*, %struct.ramfuc_reg** %7, align 8
  %43 = getelementptr inbounds %struct.ramfuc_reg, %struct.ramfuc_reg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %41, %46
  store i32 %47, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %76, %5
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load %struct.gk104_ram*, %struct.gk104_ram** %6, align 8
  %53 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @nvkm_rd32(%struct.nvkm_device* %60, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %15, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* %16, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %19, align 4
  %69 = load %struct.ramfuc*, %struct.ramfuc** %12, align 8
  %70 = getelementptr inbounds %struct.ramfuc, %struct.ramfuc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @nvkm_memx_wr32(i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %59, %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 4096
  store i32 %80, i32* %14, align 4
  br label %48

81:                                               ; preds = %48
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_memx_wr32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
