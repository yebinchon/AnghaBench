; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gf100.c_gf100_volt_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_gf100.c_gf100_volt_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { i64, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"couldn't find speedo value, volting not possible\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_volt_oneinit(%struct.nvkm_volt* %0) #0 {
  %2 = alloca %struct.nvkm_volt*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %2, align 8
  %4 = load %struct.nvkm_volt*, %struct.nvkm_volt** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %4, i32 0, i32 1
  store %struct.nvkm_subdev* %5, %struct.nvkm_subdev** %3, align 8
  %6 = load %struct.nvkm_volt*, %struct.nvkm_volt** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %12 = call i32 @nvkm_error(%struct.nvkm_subdev* %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %1
  ret i32 0
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
