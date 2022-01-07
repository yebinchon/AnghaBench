; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_sub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"SUB\090x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"error parsing sub-table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sub(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
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
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr i8, i8* %17, i64 1
  %19 = call i32 @nvbios_rd08(%struct.nvkm_bios* %14, i8* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @init_script(%struct.nvkm_bios* %22, i32 %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %1
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = call i64 @init_exec(%struct.nvbios_init* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %39 = call i64 @nvbios_exec(%struct.nvbios_init* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %52

43:                                               ; preds = %31
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %46 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %43, %27, %1
  %48 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %49 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr i8, i8* %50, i64 2
  store i8* %51, i8** %49, align 8
  br label %52

52:                                               ; preds = %47, %41
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i8*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i8* @init_script(%struct.nvkm_bios*, i32) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i64 @nvbios_exec(%struct.nvbios_init*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
