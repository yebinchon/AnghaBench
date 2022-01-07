; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk20a.c_gk20a_volt_set_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gk20a.c_gk20a_volt_set_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { i32 }
%struct.gk20a_volt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.nvkm_subdev }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"prev=%d, target=%d, condition=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_volt*, i64, i32)* @gk20a_volt_set_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_volt_set_id(%struct.nvkm_volt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_volt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gk20a_volt*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %13 = call %struct.gk20a_volt* @gk20a_volt(%struct.nvkm_volt* %12)
  store %struct.gk20a_volt* %13, %struct.gk20a_volt** %7, align 8
  %14 = load %struct.gk20a_volt*, %struct.gk20a_volt** %7, align 8
  %15 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.nvkm_subdev* %16, %struct.nvkm_subdev** %8, align 8
  %17 = load %struct.gk20a_volt*, %struct.gk20a_volt** %7, align 8
  %18 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regulator_get_voltage(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.gk20a_volt*, %struct.gk20a_volt** %7, align 8
  %22 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @nvkm_debug(%struct.nvkm_subdev* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46, %39, %3
  %51 = load %struct.gk20a_volt*, %struct.gk20a_volt** %7, align 8
  %52 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %51, i32 0, i32 0
  %53 = load %struct.gk20a_volt*, %struct.gk20a_volt** %7, align 8
  %54 = getelementptr inbounds %struct.gk20a_volt, %struct.gk20a_volt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gk20a_volt_vid_set(%struct.TYPE_4__* %52, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %63

62:                                               ; preds = %46, %43
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local %struct.gk20a_volt* @gk20a_volt(%struct.nvkm_volt*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32, i32) #1

declare dso_local i32 @gk20a_volt_vid_set(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
