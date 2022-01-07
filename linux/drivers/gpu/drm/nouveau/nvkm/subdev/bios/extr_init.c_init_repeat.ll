; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_repeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"REPEAT\090x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_repeat(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %6 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  store %struct.nvkm_bios* %12, %struct.nvkm_bios** %3, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %14 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %15 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i64 @nvbios_rd08(%struct.nvkm_bios* %13, i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %20 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 2
  store i64 %27, i64* %25, align 8
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %32 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %55, %1
  %39 = load i64, i64* %4, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %4, align 8
  %41 = icmp ne i64 %39, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %44 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %47 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %49 = call i32 @nvbios_exec(%struct.nvbios_init* %48)
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %52, %42
  br label %38

56:                                               ; preds = %38
  %57 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %58 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %61 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %64 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  ret void
}

declare dso_local i64 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i64) #1

declare dso_local i32 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
