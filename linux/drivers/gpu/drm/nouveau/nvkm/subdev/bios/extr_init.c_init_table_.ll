; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_table_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_table_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s pointer invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"init data too short for %s pointer\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"init data not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvbios_init*, i64, i8*)* @init_table_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_table_(%struct.nvbios_init* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nvbios_init*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %16, align 8
  store %struct.nvkm_bios* %17, %struct.nvkm_bios** %8, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %19 = call i64 @init_table(%struct.nvkm_bios* %18, i64* %9)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %24, 2
  %26 = icmp sge i64 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @nvbios_rd16(%struct.nvkm_bios* %28, i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %4, align 8
  br label %45

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i64 0, i64* %4, align 8
  br label %45

40:                                               ; preds = %22
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i64 0, i64* %4, align 8
  br label %45

43:                                               ; preds = %3
  %44 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %45

45:                                               ; preds = %43, %40, %37, %35
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i64 @init_table(%struct.nvkm_bios*, i64*) #1

declare dso_local i64 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
