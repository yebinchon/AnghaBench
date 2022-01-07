; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_sita_reserve_1d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_sita_reserve_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm = type { i64, i32, i32, i32 }
%struct.tcm_area = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm*, i64, %struct.tcm_area*)* @sita_reserve_1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sita_reserve_1d(%struct.tcm* %0, i64 %1, %struct.tcm_area* %2) #0 {
  %4 = alloca %struct.tcm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcm_area*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tcm* %0, %struct.tcm** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.tcm_area* %2, %struct.tcm_area** %6, align 8
  %9 = load %struct.tcm*, %struct.tcm** %4, align 8
  %10 = getelementptr inbounds %struct.tcm, %struct.tcm* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.tcm*, %struct.tcm** %4, align 8
  %14 = getelementptr inbounds %struct.tcm, %struct.tcm* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tcm*, %struct.tcm** %4, align 8
  %17 = getelementptr inbounds %struct.tcm, %struct.tcm* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @r2l_b2t_1d(i64 %12, i64* %7, i32 %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.tcm*, %struct.tcm** %4, align 8
  %25 = getelementptr inbounds %struct.tcm, %struct.tcm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = urem i64 %23, %26
  %28 = load %struct.tcm_area*, %struct.tcm_area** %6, align 8
  %29 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.tcm*, %struct.tcm** %4, align 8
  %33 = getelementptr inbounds %struct.tcm, %struct.tcm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = udiv i64 %31, %34
  %36 = load %struct.tcm_area*, %struct.tcm_area** %6, align 8
  %37 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %39, %40
  %42 = sub i64 %41, 1
  %43 = load %struct.tcm*, %struct.tcm** %4, align 8
  %44 = getelementptr inbounds %struct.tcm, %struct.tcm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = urem i64 %42, %45
  %47 = load %struct.tcm_area*, %struct.tcm_area** %6, align 8
  %48 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %50, %51
  %53 = sub i64 %52, 1
  %54 = load %struct.tcm*, %struct.tcm** %4, align 8
  %55 = getelementptr inbounds %struct.tcm, %struct.tcm* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = udiv i64 %53, %56
  %58 = load %struct.tcm_area*, %struct.tcm_area** %6, align 8
  %59 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  br label %61

61:                                               ; preds = %22, %3
  %62 = load %struct.tcm*, %struct.tcm** %4, align 8
  %63 = getelementptr inbounds %struct.tcm, %struct.tcm* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @r2l_b2t_1d(i64, i64*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
