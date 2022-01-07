; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_wrvgai.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_wrvgai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*, i32, i32, i32)* @init_wrvgai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_wrvgai(%struct.nvbios_init* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvbios_init*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %9, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NV_50, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 980
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 68
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %24, %21
  br label %31

31:                                               ; preds = %30, %4
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %33 = call i64 @init_exec(%struct.nvbios_init* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35
  %42 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %43 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = phi i32 [ 0, %40 ], [ %44, %41 ]
  store i32 %46, i32* %10, align 4
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @nvkm_wrvgai(%struct.nvkm_device* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %31
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %55 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NV_50, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 980
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 68
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %70 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %65, %62, %59
  br label %72

72:                                               ; preds = %71, %53
  ret void
}

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i32 @nvkm_wrvgai(%struct.nvkm_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
