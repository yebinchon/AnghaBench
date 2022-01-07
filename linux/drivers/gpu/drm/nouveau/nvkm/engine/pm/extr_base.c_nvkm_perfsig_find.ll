; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfsig_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfsig_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_perfsig = type { i32 }
%struct.nvkm_pm = type { i32 }
%struct.nvkm_perfdom = type { %struct.nvkm_perfsig* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_perfsig* (%struct.nvkm_pm*, i64, i64, %struct.nvkm_perfdom**)* @nvkm_perfsig_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_perfsig* @nvkm_perfsig_find(%struct.nvkm_pm* %0, i64 %1, i64 %2, %struct.nvkm_perfdom** %3) #0 {
  %5 = alloca %struct.nvkm_perfsig*, align 8
  %6 = alloca %struct.nvkm_pm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_perfdom**, align 8
  %10 = alloca %struct.nvkm_perfdom*, align 8
  store %struct.nvkm_pm* %0, %struct.nvkm_pm** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.nvkm_perfdom** %3, %struct.nvkm_perfdom*** %9, align 8
  %11 = load %struct.nvkm_perfdom**, %struct.nvkm_perfdom*** %9, align 8
  %12 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %11, align 8
  store %struct.nvkm_perfdom* %12, %struct.nvkm_perfdom** %10, align 8
  %13 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %10, align 8
  %14 = icmp eq %struct.nvkm_perfdom* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load %struct.nvkm_pm*, %struct.nvkm_pm** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.nvkm_perfdom* @nvkm_perfdom_find(%struct.nvkm_pm* %16, i64 %17)
  store %struct.nvkm_perfdom* %18, %struct.nvkm_perfdom** %10, align 8
  %19 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %10, align 8
  %20 = icmp eq %struct.nvkm_perfdom* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.nvkm_perfsig* null, %struct.nvkm_perfsig** %5, align 8
  br label %41

22:                                               ; preds = %15
  %23 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %10, align 8
  %24 = load %struct.nvkm_perfdom**, %struct.nvkm_perfdom*** %9, align 8
  store %struct.nvkm_perfdom* %23, %struct.nvkm_perfdom** %24, align 8
  br label %25

25:                                               ; preds = %22, %4
  %26 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %10, align 8
  %27 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %26, i32 0, i32 0
  %28 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.nvkm_perfsig, %struct.nvkm_perfsig* %28, i64 %29
  %31 = getelementptr inbounds %struct.nvkm_perfsig, %struct.nvkm_perfsig* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store %struct.nvkm_perfsig* null, %struct.nvkm_perfsig** %5, align 8
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %10, align 8
  %37 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %36, i32 0, i32 0
  %38 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.nvkm_perfsig, %struct.nvkm_perfsig* %38, i64 %39
  store %struct.nvkm_perfsig* %40, %struct.nvkm_perfsig** %5, align 8
  br label %41

41:                                               ; preds = %35, %34, %21
  %42 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %5, align 8
  ret %struct.nvkm_perfsig* %42
}

declare dso_local %struct.nvkm_perfdom* @nvkm_perfdom_find(%struct.nvkm_pm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
