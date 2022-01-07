; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_tmds_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_tmds_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"TMDS_ZM_GROUP\09T[0x%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\09[0x%02x] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_zm_tmds_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zm_tmds_group(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %9 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %10 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %14, align 8
  store %struct.nvkm_bios* %15, %struct.nvkm_bios** %3, align 8
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %17 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %18 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @nvbios_rd08(%struct.nvkm_bios* %16, i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %24 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 2
  %27 = call i32 @nvbios_rd08(%struct.nvkm_bios* %22, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @init_tmds_reg(%struct.nvbios_init* %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 3
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %41, %1
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %44 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 0
  %47 = call i32 @nvbios_rd08(%struct.nvkm_bios* %42, i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %49 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %50 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @nvbios_rd08(%struct.nvkm_bios* %48, i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %58 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 2
  store i64 %60, i64* %58, align 8
  %61 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %62, 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @init_wr32(%struct.nvbios_init* %61, i64 %63, i32 %64)
  %66 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 0
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @init_wr32(%struct.nvbios_init* %66, i64 %68, i32 %69)
  br label %37

71:                                               ; preds = %37
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @init_tmds_reg(%struct.nvbios_init*, i32) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
