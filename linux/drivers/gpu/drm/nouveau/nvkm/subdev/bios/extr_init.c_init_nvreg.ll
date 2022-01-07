; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_nvreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_nvreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.nvkm_devinit* }
%struct.nvkm_devinit = type { i32 }

@NV_50 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"unknown bits in register 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32)* @init_nvreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_nvreg(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca %struct.nvbios_init*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_devinit*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %11, align 8
  store %struct.nvkm_devinit* %12, %struct.nvkm_devinit** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, -4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NV_50, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, -2147483648
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %30 = call i32 @init_head(%struct.nvbios_init* %29)
  %31 = mul nsw i32 %30, 2048
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 2147483647
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %24
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 1073741824
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %42 = call i32 @init_or(%struct.nvbios_init* %41)
  %43 = mul nsw i32 %42, 2048
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, -1073741825
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 536870912
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %53 = call i32 @init_link(%struct.nvbios_init* %52)
  %54 = mul nsw i32 %53, 128
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, -536870913
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %51, %40
  br label %60

60:                                               ; preds = %59, %36
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, -16777213
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @nvkm_devinit_mmio(%struct.nvkm_devinit* %69, i32 %70)
  ret i32 %71
}

declare dso_local i32 @init_head(%struct.nvbios_init*) #1

declare dso_local i32 @init_or(%struct.nvbios_init*) #1

declare dso_local i32 @init_link(%struct.nvbios_init*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @nvkm_devinit_mmio(%struct.nvkm_devinit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
