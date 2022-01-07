; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_wheel_cal_abs_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_wheel_cal_abs_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ad714x_wheel_drv* }
%struct.ad714x_wheel_drv = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ad714x_wheel_plat* }
%struct.ad714x_wheel_plat = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32)* @ad714x_wheel_cal_abs_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_wheel_cal_abs_pos(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_wheel_plat*, align 8
  %6 = alloca %struct.ad714x_wheel_drv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %14 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %17, i64 %19
  store %struct.ad714x_wheel_plat* %20, %struct.ad714x_wheel_plat** %5, align 8
  %21 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %22 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %25, i64 %27
  store %struct.ad714x_wheel_drv* %28, %struct.ad714x_wheel_drv** %6, align 8
  %29 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %30 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %33 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %38 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %7, align 4
  %44 = srem i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %46 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %49 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %7, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %57 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %65 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = mul nsw i32 %62, %67
  %69 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %70 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %78 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %75, %81
  %83 = add nsw i32 %68, %82
  %84 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %85 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %93 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = add nsw i32 %95, 1
  %97 = mul nsw i32 %90, %96
  %98 = add nsw i32 %83, %97
  store i32 %98, i32* %11, align 4
  %99 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %100 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %107 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %105, %112
  %114 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %115 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %113, %120
  store i32 %121, i32* %12, align 4
  %122 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %123 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %126 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %129 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = sdiv i32 %124, %131
  %133 = load i32, i32* %11, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %12, align 4
  %136 = sdiv i32 %134, %135
  %137 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %138 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %140 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %143 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %2
  %147 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %148 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %151 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %161

152:                                              ; preds = %2
  %153 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %154 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.ad714x_wheel_drv*, %struct.ad714x_wheel_drv** %6, align 8
  %159 = getelementptr inbounds %struct.ad714x_wheel_drv, %struct.ad714x_wheel_drv* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %152
  br label %161

161:                                              ; preds = %160, %146
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
