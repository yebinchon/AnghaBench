; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt_func = type { i32 }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_volt = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.nvkm_volt_func* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvbios_vmap = type { i32, i32, i32 }

@nvkm_volt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"min: %iuv max: %iuv\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"VID %02x: %duv\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_volt_ctor(%struct.nvkm_volt_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_volt* %3) #0 {
  %5 = alloca %struct.nvkm_volt_func*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_volt*, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvbios_vmap, align 4
  store %struct.nvkm_volt_func* %0, %struct.nvkm_volt_func** %5, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_volt* %3, %struct.nvkm_volt** %8, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 0
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %17, align 8
  store %struct.nvkm_bios* %18, %struct.nvkm_bios** %9, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %21, i32 0, i32 5
  %23 = call i32 @nvkm_subdev_ctor(i32* @nvkm_volt, %struct.nvkm_device* %19, i32 %20, i32* %22)
  %24 = load %struct.nvkm_volt_func*, %struct.nvkm_volt_func** %5, align 8
  %25 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %25, i32 0, i32 8
  store %struct.nvkm_volt_func* %24, %struct.nvkm_volt_func** %26, align 8
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %28 = icmp ne %struct.nvkm_bios* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %4
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %31 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %32 = call i32 @nvkm_volt_parse_bios(%struct.nvkm_bios* %30, %struct.nvkm_volt* %31)
  %33 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %34 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %33, i32 0, i32 5
  %35 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %36 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %39 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nvkm_debug(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %43 = call i64 @nvbios_vmap_parse(%struct.nvkm_bios* %42, i32* %11, i32* %12, i32* %13, i32* %14, %struct.nvbios_vmap* %15)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %49 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %15, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %53 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.nvbios_vmap, %struct.nvbios_vmap* %15, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %57 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %65

58:                                               ; preds = %29
  %59 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %60 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %59, i32 0, i32 0
  store i32 255, i32* %60, align 8
  %61 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %62 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %61, i32 0, i32 1
  store i32 255, i32* %62, align 4
  %63 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %64 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %63, i32 0, i32 2
  store i32 255, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %45
  br label %66

66:                                               ; preds = %65, %4
  %67 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %68 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %75 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %80 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %79, i32 0, i32 5
  %81 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %82 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nvkm_volt*, %struct.nvkm_volt** %8, align 8
  %90 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nvkm_debug(i32* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %96)
  br label %98

98:                                               ; preds = %78
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %72

101:                                              ; preds = %72
  br label %102

102:                                              ; preds = %101, %66
  ret void
}

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i32 @nvkm_volt_parse_bios(%struct.nvkm_bios*, %struct.nvkm_volt*) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, i32, i32) #1

declare dso_local i64 @nvbios_vmap_parse(%struct.nvkm_bios*, i32*, i32*, i32*, i32*, %struct.nvbios_vmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
