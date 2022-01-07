; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"wait for idle timeout (en: %d, ctxsw: %d, busy: %d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_gr_wait_idle(%struct.gf100_gr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  %10 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %11 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %4, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %5, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = call i64 @msecs_to_jiffies(i32 2000)
  %19 = add i64 %17, %18
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %42, %1
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 4196096)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 512)
  %25 = and i32 %24, 4096
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 9792)
  %28 = and i32 %27, 32768
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %29, i32 4195852)
  %31 = and i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %20
  store i32 0, i32* %2, align 4
  br label %55

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @time_before(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %20, label %47

47:                                               ; preds = %42
  %48 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @nvkm_error(%struct.nvkm_subdev* %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %40
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
