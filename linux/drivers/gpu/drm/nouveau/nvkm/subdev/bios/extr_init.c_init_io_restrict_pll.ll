; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io_restrict_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io_restrict_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [89 x i8] c"IO_RESTRICT_PLL\09R[0x%06x] =PLL= ((0x%04x[0x%02x] & 0x%02x) >> 0x%02x) IOFCOND 0x%02x [{\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09%dkHz *\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\09%dkHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"}]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_io_restrict_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_io_restrict_pll(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %14 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %15 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %19, align 8
  store %struct.nvkm_bios* %20, %struct.nvkm_bios** %3, align 8
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %22 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %23 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @nvbios_rd16(%struct.nvkm_bios* %21, i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 3
  %32 = call i8* @nvbios_rd08(%struct.nvkm_bios* %27, i64 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %35 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %36 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 4
  %39 = call i8* @nvbios_rd08(%struct.nvkm_bios* %34, i64 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %42 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %43 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 5
  %46 = call i8* @nvbios_rd08(%struct.nvkm_bios* %41, i64 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %49 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %50 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 6
  %53 = call i8* @nvbios_rd08(%struct.nvkm_bios* %48, i64 %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %8, align 8
  %55 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %56 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %57 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 7
  %60 = call i8* @nvbios_rd08(%struct.nvkm_bios* %55, i64 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %63 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %64 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 8
  %67 = call i32 @nvbios_rd32(%struct.nvkm_bios* %62, i64 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i64 %73)
  %75 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %76 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 12
  store i64 %78, i64* %76, align 8
  %79 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @init_rdvgai(%struct.nvbios_init* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %84, %85
  store i32 %86, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %127, %1
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %87
  %92 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %93 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %94 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @nvbios_rd16(%struct.nvkm_bios* %92, i64 %95)
  %97 = mul nsw i32 %96, 10
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %91
  %102 = load i32, i32* %13, align 4
  %103 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i64, i64* %8, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i64 @init_io_flag_condition_met(%struct.nvbios_init* %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = mul nsw i32 %112, 2
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %111, %106, %101
  %115 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @init_prog_pll(%struct.nvbios_init* %115, i32 %116, i32 %117)
  br label %122

119:                                              ; preds = %91
  %120 = load i32, i32* %13, align 4
  %121 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %124 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 2
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %87

130:                                              ; preds = %87
  %131 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i8* @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i64 @init_io_flag_condition_met(%struct.nvbios_init*, i64) #1

declare dso_local i32 @init_prog_pll(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
