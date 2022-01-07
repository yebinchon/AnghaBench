; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_sita_reserve_2d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_sita_reserve_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm = type { i64, i32, i32, i32 }
%struct.tcm_area = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm*, i8*, i8*, i8*, i32, i8*, %struct.tcm_area*)* @sita_reserve_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sita_reserve_2d(%struct.tcm* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, %struct.tcm_area* %6) #0 {
  %8 = alloca %struct.tcm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tcm_area*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.tcm* %0, %struct.tcm** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.tcm_area* %6, %struct.tcm_area** %14, align 8
  %17 = load %struct.tcm*, %struct.tcm** %8, align 8
  %18 = getelementptr inbounds %struct.tcm, %struct.tcm* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = load %struct.tcm*, %struct.tcm** %8, align 8
  %26 = getelementptr inbounds %struct.tcm, %struct.tcm* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tcm*, %struct.tcm** %8, align 8
  %29 = getelementptr inbounds %struct.tcm, %struct.tcm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tcm*, %struct.tcm** %8, align 8
  %32 = getelementptr inbounds %struct.tcm, %struct.tcm* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @l2r_t2b(i8* %20, i8* %21, i8* %22, i32 %23, i64* %15, i8* %24, i32 %27, i32 %30, i64 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %7
  %38 = load i64, i64* %15, align 8
  %39 = load %struct.tcm*, %struct.tcm** %8, align 8
  %40 = getelementptr inbounds %struct.tcm, %struct.tcm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = urem i64 %38, %41
  %43 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %44 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load %struct.tcm*, %struct.tcm** %8, align 8
  %48 = getelementptr inbounds %struct.tcm, %struct.tcm* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = udiv i64 %46, %49
  %51 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %52 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %55 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr i8, i8* %58, i64 %57
  %60 = getelementptr i8, i8* %59, i64 -1
  %61 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %62 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %65 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr i8, i8* %68, i64 %67
  %70 = getelementptr i8, i8* %69, i64 -1
  %71 = load %struct.tcm_area*, %struct.tcm_area** %14, align 8
  %72 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  br label %74

74:                                               ; preds = %37, %7
  %75 = load %struct.tcm*, %struct.tcm** %8, align 8
  %76 = getelementptr inbounds %struct.tcm, %struct.tcm* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load i32, i32* %16, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @l2r_t2b(i8*, i8*, i8*, i32, i64*, i8*, i32, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
