; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io_flag_condition_met.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io_flag_condition_met.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32)* @init_io_flag_condition_met to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_io_flag_condition_met(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvbios_init*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %21, align 8
  store %struct.nvkm_bios* %22, %struct.nvkm_bios** %6, align 8
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %24 = call i32 @init_io_flag_condition_table(%struct.nvbios_init* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %95

27:                                               ; preds = %2
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 9
  %32 = add nsw i32 %29, %31
  %33 = add nsw i32 %32, 0
  %34 = call i32 @nvbios_rd16(%struct.nvkm_bios* %28, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 9
  %39 = add nsw i32 %36, %38
  %40 = add nsw i32 %39, 2
  %41 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 9
  %46 = add nsw i32 %43, %45
  %47 = add nsw i32 %46, 3
  %48 = call i32 @nvbios_rd08(%struct.nvkm_bios* %42, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 %51, 9
  %53 = add nsw i32 %50, %52
  %54 = add nsw i32 %53, 4
  %55 = call i32 @nvbios_rd08(%struct.nvkm_bios* %49, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 %58, 9
  %60 = add nsw i32 %57, %59
  %61 = add nsw i32 %60, 5
  %62 = call i32 @nvbios_rd16(%struct.nvkm_bios* %56, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 9
  %67 = add nsw i32 %64, %66
  %68 = add nsw i32 %67, 7
  %69 = call i32 @nvbios_rd08(%struct.nvkm_bios* %63, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 %72, 9
  %74 = add nsw i32 %71, %73
  %75 = add nsw i32 %74, 8
  %76 = call i32 @nvbios_rd08(%struct.nvkm_bios* %70, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.nvbios_init*, %struct.nvbios_init** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @init_rdvgai(%struct.nvbios_init* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = ashr i32 %82, %83
  store i32 %84, i32* %15, align 4
  %85 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32 @nvbios_rd08(%struct.nvkm_bios* %85, i32 %88)
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %14, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %27
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @init_io_flag_condition_table(%struct.nvbios_init*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
