; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_mxm.c_mxm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_mxm.c_mxm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.bit_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"BIT 'x' table not present\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"BIT 'x' table %d/%d unknown\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxm_table(%struct.nvkm_bios* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_bios*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.bit_entry, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %8, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %5, align 8
  %13 = call i64 @bit_entry(%struct.nvkm_bios* %12, i8 signext 120, %struct.bit_entry* %9)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %17 = call i32 @nvkm_debug(%struct.nvkm_subdev* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %9, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %18
  %33 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nvkm_warn(%struct.nvkm_subdev* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37)
  store i32 0, i32* %4, align 4
  br label %42

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %9, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %32, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @bit_entry(%struct.nvkm_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
