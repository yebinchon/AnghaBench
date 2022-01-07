; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_sub_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_sub_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"SUB_DIRECT\090x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"error parsing sub-table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_sub_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sub_direct(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %6 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  store %struct.nvkm_bios* %12, %struct.nvkm_bios** %3, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %14 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %15 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 1
  %18 = call i8* @nvbios_rd16(%struct.nvkm_bios* %13, i8* %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = call i64 @init_exec(%struct.nvbios_init* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %26 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %32 = call i64 @nvbios_exec(%struct.nvbios_init* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %45

36:                                               ; preds = %24
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %39 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %1
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %42 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr i8, i8* %43, i64 3
  store i8* %44, i8** %42, align 8
  br label %45

45:                                               ; preds = %40, %34
  ret void
}

declare dso_local i8* @nvbios_rd16(%struct.nvkm_bios*, i8*) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i64 @nvbios_exec(%struct.nvbios_init*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
