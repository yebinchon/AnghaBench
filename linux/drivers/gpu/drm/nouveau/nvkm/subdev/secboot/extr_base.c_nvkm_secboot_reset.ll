; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_base.c_nvkm_secboot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_base.c_nvkm_secboot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_secboot = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.nvkm_secboot*, i64)* }

@.str = private unnamed_addr constant [32 x i8] c"cannot reset unmanaged falcon!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_secboot_reset(%struct.nvkm_secboot* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_secboot*, align 8
  %5 = alloca i64, align 8
  store %struct.nvkm_secboot* %0, %struct.nvkm_secboot** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %8 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = or i64 %6, %11
  %13 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %21 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %20, i32 0, i32 1
  %22 = call i32 @nvkm_error(i32* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_4__*, %struct.nvkm_secboot*, i64)*, i32 (%struct.TYPE_4__*, %struct.nvkm_secboot*, i64)** %31, align 8
  %33 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %34 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 %32(%struct.TYPE_4__* %35, %struct.nvkm_secboot* %36, i64 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %25, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @nvkm_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
