; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_condition_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_condition_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"CONDITION_TIME\090x%02x 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_condition_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_condition_time(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %7 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %12, align 8
  store %struct.nvkm_bios* %13, %struct.nvkm_bios** %3, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i64 @nvbios_rd08(%struct.nvkm_bios* %14, i64 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 2
  %25 = call i64 @nvbios_rd08(%struct.nvkm_bios* %20, i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = mul nsw i32 %27, 50
  %29 = call i64 @min(i32 %28, i32 100)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 3
  store i64 %36, i64* %34, align 8
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = call i32 @init_exec(%struct.nvbios_init* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %1
  br label %57

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %6, align 8
  %45 = icmp ne i64 %43, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @init_condition_met(%struct.nvbios_init* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  %53 = call i32 @mdelay(i32 20)
  br label %42

54:                                               ; preds = %42
  %55 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %56 = call i32 @init_exec_set(%struct.nvbios_init* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %51, %40
  ret void
}

declare dso_local i64 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @trace(i8*, i64, i64) #1

declare dso_local i32 @init_exec(%struct.nvbios_init*) #1

declare dso_local i64 @init_condition_met(%struct.nvbios_init*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @init_exec_set(%struct.nvbios_init*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
