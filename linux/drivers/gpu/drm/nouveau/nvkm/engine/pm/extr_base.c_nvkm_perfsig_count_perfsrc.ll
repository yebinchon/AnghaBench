; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfsig_count_perfsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfsig_count_perfsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_perfsig = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_perfsig*)* @nvkm_perfsig_count_perfsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvkm_perfsig_count_perfsrc(%struct.nvkm_perfsig* %0) #0 {
  %2 = alloca %struct.nvkm_perfsig*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.nvkm_perfsig* %0, %struct.nvkm_perfsig** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_perfsig, %struct.nvkm_perfsig* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = call i64 @ARRAY_SIZE(i64* %9)
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_perfsig, %struct.nvkm_perfsig* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %4, align 8
  br label %5

27:                                               ; preds = %5
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
