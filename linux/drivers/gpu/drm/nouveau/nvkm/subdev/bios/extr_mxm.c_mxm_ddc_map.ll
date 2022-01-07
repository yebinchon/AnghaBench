; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_mxm.c_mxm_ddc_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_mxm.c_mxm_ddc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unknown ddc map v%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxm_ddc_map(%struct.nvkm_bios* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %11, i32 0, i32 0
  store %struct.nvkm_subdev* %12, %struct.nvkm_subdev** %6, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %14 = call i32 @mxm_table(%struct.nvkm_bios* %13, i32* %7, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 8
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 6
  %24 = call i32 @nvbios_rd16(%struct.nvkm_bios* %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %20
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @nvbios_rd08(%struct.nvkm_bios* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 3
  %38 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i32 %37)
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @nvbios_rd08(%struct.nvkm_bios* %41, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @nvbios_rd08(%struct.nvkm_bios* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %64

53:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %64

54:                                               ; preds = %27
  %55 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @nvkm_warn(%struct.nvkm_subdev* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %20
  br label %59

59:                                               ; preds = %58, %17, %2
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %53, %40
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @mxm_table(%struct.nvkm_bios*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
