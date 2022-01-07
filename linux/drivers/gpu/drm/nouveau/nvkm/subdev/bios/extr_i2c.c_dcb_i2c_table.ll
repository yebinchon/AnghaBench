; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_i2c.c_dcb_i2c_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_i2c.c_dcb_i2c_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ccb %02x not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_i2c_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @dcb_table(%struct.nvkm_bios* %14, i32* %15, i32* %16, i32* %17, i32* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 21
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, 2
  %30 = call i32 @nvbios_rd16(%struct.nvkm_bios* %27, i32 %29)
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 48
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 4
  %39 = call i32 @nvbios_rd16(%struct.nvkm_bios* %36, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %35, %31
  br label %41

41:                                               ; preds = %40, %5
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 66
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %50 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %49, i32 0, i32 0
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nvkm_warn(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %6, align 4
  br label %91

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %59, 48
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 0
  %65 = call i32 @nvbios_rd08(%struct.nvkm_bios* %62, i32 %64)
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @nvbios_rd08(%struct.nvkm_bios* %67, i32 %69)
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 2
  %75 = call i32 @nvbios_rd08(%struct.nvkm_bios* %72, i32 %74)
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 3
  %80 = call i32 @nvbios_rd08(%struct.nvkm_bios* %77, i32 %79)
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  br label %89

82:                                               ; preds = %57, %54
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 0, i32* %86, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 16, i32* %87, align 4
  %88 = load i32*, i32** %11, align 8
  store i32 4, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %61
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %48
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @dcb_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_warn(i32*, i8*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
