; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io_restrict_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io_restrict_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [67 x i8] c"IO_RESTRICT_PROG\09R[0x%06x] = ((0x%04x[0x%02x] & 0x%02x) >> %d) [{\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\090x%08x *\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\090x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"}]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_io_restrict_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_io_restrict_prog(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %13 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %14 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %18, align 8
  store %struct.nvkm_bios* %19, %struct.nvkm_bios** %3, align 8
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @nvbios_rd16(%struct.nvkm_bios* %20, i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %27 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %28 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 3
  %31 = call i32 @nvbios_rd08(%struct.nvkm_bios* %26, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 4
  %37 = call i32 @nvbios_rd08(%struct.nvkm_bios* %32, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %39 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %40 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 5
  %43 = call i32 @nvbios_rd08(%struct.nvkm_bios* %38, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %45 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %46 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 6
  %49 = call i32 @nvbios_rd08(%struct.nvkm_bios* %44, i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %51 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %52 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 7
  %55 = call i32 @nvbios_rd32(%struct.nvkm_bios* %50, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 11
  store i64 %65, i64* %63, align 8
  %66 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @init_rdvgai(%struct.nvbios_init* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %102, %1
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %80 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %81 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @nvbios_rd32(%struct.nvkm_bios* %79, i64 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %78
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @init_wr32(%struct.nvbios_init* %90, i32 %91, i32 %92)
  br label %97

94:                                               ; preds = %78
  %95 = load i32, i32* %12, align 4
  %96 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %99 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 4
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %74

105:                                              ; preds = %74
  %106 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
