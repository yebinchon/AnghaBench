; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram_func = type { i32 (%struct.nvkm_ram_func*, %struct.nvkm_device*, i32, i32*)*, i32 }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_fb = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_ram = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%d FBP(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"FBP %d: %4d MiB, %d LTC(s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"FBP %d: disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Lower: %4lld MiB @ %010llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Upper: %4lld MiB @ %010llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Total: %4lld MiB\0A\00", align 1
@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4
@NVKM_RAM_MM_SHIFT = common dso_local global i32 0, align 4
@NVKM_RAM_MM_MIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ram_ctor(%struct.nvkm_ram_func* %0, %struct.nvkm_fb* %1, %struct.nvkm_ram* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_ram_func*, align 8
  %6 = alloca %struct.nvkm_fb*, align 8
  %7 = alloca %struct.nvkm_ram*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca %struct.nvkm_bios*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.nvkm_ram_func* %0, %struct.nvkm_ram_func** %5, align 8
  store %struct.nvkm_fb* %1, %struct.nvkm_fb** %6, align 8
  store %struct.nvkm_ram* %2, %struct.nvkm_ram** %7, align 8
  %25 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %26 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %25, i32 0, i32 0
  store %struct.nvkm_subdev* %26, %struct.nvkm_subdev** %8, align 8
  %27 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %28 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %27, i32 0, i32 0
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %28, align 8
  store %struct.nvkm_device* %29, %struct.nvkm_device** %9, align 8
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %31 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %30, i32 0, i32 0
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %31, align 8
  store %struct.nvkm_bios* %32, %struct.nvkm_bios** %10, align 8
  store i32 262144, i32* %11, align 4
  store i32 1048576, i32* %12, align 4
  %33 = load %struct.nvkm_bios*, %struct.nvkm_bios** %10, align 8
  %34 = call i32 @nvkm_fb_bios_memtype(%struct.nvkm_bios* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %36 = call i32 @nvkm_rd32(%struct.nvkm_device* %35, i32 140344)
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %23, align 4
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %21, align 4
  br label %40

40:                                               ; preds = %78, %3
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %40
  %45 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %46 = getelementptr inbounds %struct.nvkm_ram_func, %struct.nvkm_ram_func* %45, i32 0, i32 0
  %47 = load i32 (%struct.nvkm_ram_func*, %struct.nvkm_device*, i32, i32*)*, i32 (%struct.nvkm_ram_func*, %struct.nvkm_device*, i32, i32*)** %46, align 8
  %48 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %50 = load i32, i32* %21, align 4
  %51 = call i32 %47(%struct.nvkm_ram_func* %48, %struct.nvkm_device* %49, i32 %50, i32* %22)
  store i32 %51, i32* %24, align 4
  %52 = load i32, i32* %24, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %44
  %55 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %24, align 4
  %58 = load i32, i32* %22, align 4
  %59 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %22, align 4
  %63 = sdiv i32 %61, %62
  %64 = shl i32 %63, 20
  %65 = call i32 @min(i32 %60, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %24, align 4
  %67 = shl i32 %66, 20
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* %23, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %23, align 4
  br label %77

73:                                               ; preds = %44
  %74 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %75 = load i32, i32* %21, align 4
  %76 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %54
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %21, align 4
  br label %40

81:                                               ; preds = %40
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %23, align 4
  %84 = mul nsw i32 %82, %83
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %87 = getelementptr inbounds %struct.nvkm_ram_func, %struct.nvkm_ram_func* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %17, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %19, align 4
  %93 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %94 = load i32, i32* %17, align 4
  %95 = ashr i32 %94, 20
  %96 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %95, i64 0)
  %97 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %98 = load i32, i32* %19, align 4
  %99 = ashr i32 %98, 20
  %100 = load i32, i32* %18, align 4
  %101 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %103 = load i32, i32* %15, align 4
  %104 = ashr i32 %103, 20
  %105 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  %106 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %107 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %111 = call i32 @nvkm_ram_ctor(%struct.nvkm_ram_func* %106, %struct.nvkm_fb* %107, i32 %108, i32 %109, %struct.nvkm_ram* %110)
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %81
  %115 = load i32, i32* %20, align 4
  store i32 %115, i32* %4, align 4
  br label %173

116:                                              ; preds = %81
  %117 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %118 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %117, i32 0, i32 0
  %119 = call i32 @nvkm_mm_fini(i32* %118)
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %116
  %124 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %125 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %124, i32 0, i32 0
  %126 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  %127 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %128 = ashr i32 262144, %127
  %129 = load i32, i32* %17, align 4
  %130 = sub nsw i32 %129, 262144
  %131 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %132 = ashr i32 %130, %131
  %133 = call i32 @nvkm_mm_init(i32* %125, i32 %126, i32 %128, i32 %132, i32 1)
  store i32 %133, i32* %20, align 4
  %134 = load i32, i32* %20, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = load i32, i32* %20, align 4
  store i32 %137, i32* %4, align 4
  br label %173

138:                                              ; preds = %123
  %139 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %140 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %139, i32 0, i32 0
  %141 = load i32, i32* @NVKM_RAM_MM_MIXED, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %144 = ashr i32 %142, %143
  %145 = load i32, i32* %19, align 4
  %146 = sub nsw i32 %145, 1048576
  %147 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %148 = ashr i32 %146, %147
  %149 = call i32 @nvkm_mm_init(i32* %140, i32 %141, i32 %144, i32 %148, i32 1)
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %138
  %153 = load i32, i32* %20, align 4
  store i32 %153, i32* %4, align 4
  br label %173

154:                                              ; preds = %138
  br label %172

155:                                              ; preds = %116
  %156 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %157 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %156, i32 0, i32 0
  %158 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  %159 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %160 = ashr i32 262144, %159
  %161 = load i32, i32* %15, align 4
  %162 = sub nsw i32 %161, 262144
  %163 = sub nsw i32 %162, 1048576
  %164 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %165 = ashr i32 %163, %164
  %166 = call i32 @nvkm_mm_init(i32* %157, i32 %158, i32 %160, i32 %165, i32 1)
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %155
  %170 = load i32, i32* %20, align 4
  store i32 %170, i32* %4, align 4
  br label %173

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171, %154
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %172, %169, %152, %136, %114
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @nvkm_fb_bios_memtype(%struct.nvkm_bios*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvkm_ram_ctor(%struct.nvkm_ram_func*, %struct.nvkm_fb*, i32, i32, %struct.nvkm_ram*) #1

declare dso_local i32 @nvkm_mm_fini(i32*) #1

declare dso_local i32 @nvkm_mm_init(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
