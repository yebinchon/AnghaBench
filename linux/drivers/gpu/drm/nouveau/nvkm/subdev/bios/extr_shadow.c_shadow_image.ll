; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadow.c_shadow_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadow.c_shadow_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32*, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.shadow = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32, i32, i32, i64 }
%struct.nvbios_image = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%08x: header fetch failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"image %d invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%08x: type %02x, %d bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%08x: fetch failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%08x: checksum failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, i32, i32, %struct.shadow*)* @shadow_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shadow_image(%struct.nvkm_bios* %0, i32 %1, i32 %2, %struct.shadow* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.shadow*, align 8
  %10 = alloca %struct.nvkm_subdev*, align 8
  %11 = alloca %struct.nvbios_image, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.shadow* %3, %struct.shadow** %9, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %13, i32 0, i32 1
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %10, align 8
  store i32 1, i32* %12, align 4
  %15 = load %struct.shadow*, %struct.shadow** %9, align 8
  %16 = getelementptr inbounds %struct.shadow, %struct.shadow* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.shadow*, %struct.shadow** %9, align 8
  %25 = getelementptr inbounds %struct.shadow, %struct.shadow* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.shadow*, %struct.shadow** %9, align 8
  %30 = getelementptr inbounds %struct.shadow, %struct.shadow* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31)
  %33 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 3
  store i32 1, i32* %34, align 4
  br label %56

35:                                               ; preds = %4
  %36 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %37 = load %struct.shadow*, %struct.shadow** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 4096
  %40 = call i32 @shadow_fetch(%struct.nvkm_bios* %36, %struct.shadow* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 0, i32* %5, align 4
  br label %149

46:                                               ; preds = %35
  %47 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @nvbios_image(%struct.nvkm_bios* %47, i32 %48, %struct.nvbios_image* %11)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %5, align 4
  br label %149

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %58 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61, i32 %63)
  %65 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %66 = load %struct.shadow*, %struct.shadow** %9, align 8
  %67 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @shadow_fetch(%struct.nvkm_bios* %65, %struct.shadow* %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %56
  %72 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %73 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  store i32 0, i32* %5, align 4
  br label %149

76:                                               ; preds = %56
  %77 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %128 [
    i32 0, label %79
  ]

79:                                               ; preds = %76
  %80 = load %struct.shadow*, %struct.shadow** %9, align 8
  %81 = getelementptr inbounds %struct.shadow, %struct.shadow* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %124, label %86

86:                                               ; preds = %79
  %87 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %88 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nvbios_checksum(i32* %93, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %86
  %99 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %100 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.shadow*, %struct.shadow** %9, align 8
  %104 = getelementptr inbounds %struct.shadow, %struct.shadow* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %98
  %110 = load %struct.shadow*, %struct.shadow** %9, align 8
  %111 = getelementptr inbounds %struct.shadow, %struct.shadow* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %116, %109
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %123

122:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %149

123:                                              ; preds = %119
  br label %127

124:                                              ; preds = %86, %79
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 3
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %124, %123
  br label %131

128:                                              ; preds = %76
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 3
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %128, %127
  %132 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %131
  %136 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  %139 = load i32, i32* %8, align 4
  %140 = getelementptr inbounds %struct.nvbios_image, %struct.nvbios_image* %11, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %139, %141
  %143 = load %struct.shadow*, %struct.shadow** %9, align 8
  %144 = call i32 @shadow_image(%struct.nvkm_bios* %136, i32 %138, i32 %142, %struct.shadow* %143)
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %135, %131
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %122, %71, %51, %42
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @shadow_fetch(%struct.nvkm_bios*, %struct.shadow*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, ...) #1

declare dso_local i32 @nvbios_image(%struct.nvkm_bios*, i32, %struct.nvbios_image*) #1

declare dso_local i32 @nvbios_checksum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
