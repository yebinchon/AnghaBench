; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_nvbios_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_nvbios_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.nvbios_init*)* }
%struct.nvbios_init = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@init_opcode = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"unknown opcode 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_exec(%struct.nvbios_init* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvbios_init*, align 8
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %3, align 8
  %6 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  store %struct.nvkm_bios* %12, %struct.nvkm_bios** %4, align 8
  %13 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %14 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  br label %17

17:                                               ; preds = %44, %1
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @nvbios_rd08(%struct.nvkm_bios* %23, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @init_opcode, align 8
  %30 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %29)
  %31 = icmp uge i64 %28, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @init_opcode, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32 (%struct.nvbios_init*)*, i32 (%struct.nvbios_init*)** %36, align 8
  %38 = icmp ne i32 (%struct.nvbios_init*)* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32, %22
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %57

44:                                               ; preds = %32
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @init_opcode, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32 (%struct.nvbios_init*)*, i32 (%struct.nvbios_init*)** %48, align 8
  %50 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %51 = call i32 %49(%struct.nvbios_init* %50)
  br label %17

52:                                               ; preds = %17
  %53 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %54 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %39
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
