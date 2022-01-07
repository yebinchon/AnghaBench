; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_wheel_cal_flt_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_wheel_cal_flt_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ad714x_wheel_drv* }
%struct.ad714x_wheel_drv = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.ad714x_wheel_plat* }
%struct.ad714x_wheel_plat = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32)* @ad714x_wheel_cal_flt_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_wheel_cal_flt_pos(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_wheel_plat*, align 8
  %6 = alloca %struct.ad714x_wheel_drv*, align 8
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %8 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %11, i64 %13
  store %struct.ad714x_wheel_plat* %14, %struct.ad714x_wheel_plat** %5, align 8
  %15 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %16 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %19, i64 %21
  store %struct.ad714x_wheel_drv* %22, %struct.ad714x_wheel_drv** %6, align 8
  %23 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %24 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %27 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %32 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %35 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %30, %2
  %39 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %40 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %43 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %38
  %47 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %48 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %51 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46, %30
  %55 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %56 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %59 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %73

60:                                               ; preds = %46, %38
  %61 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %62 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 30
  %65 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %66 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 71
  %69 = add nsw i32 %64, %68
  %70 = sdiv i32 %69, 100
  %71 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %72 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %60, %54
  %74 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %75 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %78 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %83 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %86 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %81, %73
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
