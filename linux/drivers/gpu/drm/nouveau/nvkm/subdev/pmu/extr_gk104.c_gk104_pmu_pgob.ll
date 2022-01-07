; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk104.c_gk104_pmu_pgob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/extr_gk104.c_gk104_pmu_pgob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_pmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"War00C800_0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_pmu*, i32)* @gk104_pmu_pgob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_pmu_pgob(%struct.nvkm_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_pmu* %0, %struct.nvkm_pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_pmu*, %struct.nvkm_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_pmu, %struct.nvkm_pmu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %5, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nvkm_fuse_read(i32 %12, i32 796)
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %80

17:                                               ; preds = %2
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %19 = call i32 @nvkm_mask(%struct.nvkm_device* %18, i32 512, i32 4096, i32 0)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 512)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = call i32 @nvkm_mask(%struct.nvkm_device* %22, i32 512, i32 134217728, i32 134217728)
  %24 = call i32 @msleep(i32 50)
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = call i32 @nvkm_mask(%struct.nvkm_device* %25, i32 1091468, i32 2, i32 2)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = call i32 @nvkm_mask(%struct.nvkm_device* %27, i32 1091468, i32 1, i32 1)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = call i32 @nvkm_mask(%struct.nvkm_device* %29, i32 1091468, i32 1, i32 0)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 -1073741824, i32 1073741824
  %36 = call i32 @nvkm_mask(%struct.nvkm_device* %31, i32 131076, i32 -1073741824, i32 %35)
  %37 = call i32 @msleep(i32 50)
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %39 = call i32 @nvkm_mask(%struct.nvkm_device* %38, i32 1091468, i32 2, i32 0)
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %41 = call i32 @nvkm_mask(%struct.nvkm_device* %40, i32 1091468, i32 1, i32 1)
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %43 = call i32 @nvkm_mask(%struct.nvkm_device* %42, i32 1091468, i32 1, i32 0)
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %45 = call i32 @nvkm_mask(%struct.nvkm_device* %44, i32 512, i32 134217728, i32 0)
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %47 = call i32 @nvkm_mask(%struct.nvkm_device* %46, i32 512, i32 4096, i32 4096)
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %49 = call i32 @nvkm_rd32(%struct.nvkm_device* %48, i32 512)
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %51 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nvkm_boolopt(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %17
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %57 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %78 [
    i32 228, label %59
    i32 230, label %68
    i32 231, label %75
  ]

59:                                               ; preds = %55
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = call i32 @magic(%struct.nvkm_device* %60, i32 67108864)
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %63 = call i32 @magic(%struct.nvkm_device* %62, i32 100663296)
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %65 = call i32 @magic(%struct.nvkm_device* %64, i32 201326592)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %67 = call i32 @magic(%struct.nvkm_device* %66, i32 234881024)
  br label %79

68:                                               ; preds = %55
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %70 = call i32 @magic(%struct.nvkm_device* %69, i32 33554432)
  %71 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %72 = call i32 @magic(%struct.nvkm_device* %71, i32 67108864)
  %73 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %74 = call i32 @magic(%struct.nvkm_device* %73, i32 167772160)
  br label %79

75:                                               ; preds = %55
  %76 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %77 = call i32 @magic(%struct.nvkm_device* %76, i32 33554432)
  br label %79

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78, %75, %68, %59
  br label %80

80:                                               ; preds = %16, %79, %17
  ret void
}

declare dso_local i32 @nvkm_fuse_read(i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @nvkm_boolopt(i32, i8*, i32) #1

declare dso_local i32 @magic(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
