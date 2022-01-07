; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dcb.c_dcb_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_dcb.c_dcb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64 }

@NV_04 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"DCB table not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DCB version 0x%02x unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DEV_REC\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DCB contains no useful data\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DCB header validation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nvkm_subdev*, align 8
  %13 = alloca %struct.nvkm_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %17, i32 0, i32 0
  store %struct.nvkm_subdev* %18, %struct.nvkm_subdev** %12, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NV_04, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %29 = call i32 @nvbios_rd16(%struct.nvkm_bios* %28, i32 54)
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %27, %5
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %35 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %135

37:                                               ; preds = %30
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @nvbios_rd08(%struct.nvkm_bios* %38, i32 %39)
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 66
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 0, i32* %6, align 4
  br label %135

50:                                               ; preds = %37
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 6
  %58 = call i32 @nvbios_rd32(%struct.nvkm_bios* %55, i32 %57)
  %59 = icmp eq i32 %58, 1323089355
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @nvbios_rd08(%struct.nvkm_bios* %61, i32 %63)
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 2
  %69 = call i32 @nvbios_rd08(%struct.nvkm_bios* %66, i32 %68)
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 3
  %74 = call i32 @nvbios_rd08(%struct.nvkm_bios* %71, i32 %73)
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %135

77:                                               ; preds = %54
  br label %131

78:                                               ; preds = %50
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %80, 32
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 4
  %86 = call i32 @nvbios_rd32(%struct.nvkm_bios* %83, i32 %85)
  %87 = icmp eq i32 %86, 1323089355
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 2
  %92 = call i32 @nvbios_rd16(%struct.nvkm_bios* %89, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 8, i32* %93, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sdiv i32 %96, 8
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %11, align 8
  store i32 8, i32* %99, align 4
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %135

101:                                              ; preds = %82
  br label %130

102:                                              ; preds = %78
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp sge i32 %104, 21
  br i1 %105, label %106, label %126

106:                                              ; preds = %102
  %107 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %108, 7
  %110 = call i32 @nvbios_memcmp(%struct.nvkm_bios* %107, i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %106
  %113 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 2
  %116 = call i32 @nvbios_rd16(%struct.nvkm_bios* %113, i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32*, i32** %9, align 8
  store i32 4, i32* %117, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sdiv i32 %120, 10
  %122 = load i32*, i32** %10, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32*, i32** %11, align 8
  store i32 10, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %135

125:                                              ; preds = %106
  br label %129

126:                                              ; preds = %102
  %127 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %128 = call i32 @nvkm_debug(%struct.nvkm_subdev* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %135

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %129, %101
  br label %131

131:                                              ; preds = %130, %77
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %12, align 8
  %134 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_warn(%struct.nvkm_subdev* %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %126, %112, %88, %60, %45, %33
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_memcmp(%struct.nvkm_bios*, i32, i8*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
