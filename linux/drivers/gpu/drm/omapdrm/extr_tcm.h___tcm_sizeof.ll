; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h___tcm_sizeof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm.h___tcm_sizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_area = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm_area*)* @__tcm_sizeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcm_sizeof(%struct.tcm_area* %0) #0 {
  %2 = alloca %struct.tcm_area*, align 8
  store %struct.tcm_area* %0, %struct.tcm_area** %2, align 8
  %3 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %4 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %9 = call i32 @__tcm_area_width(%struct.tcm_area* %8)
  %10 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %11 = call i32 @__tcm_area_height(%struct.tcm_area* %10)
  %12 = mul nsw i32 %9, %11
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %15 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %19 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %17, %21
  %23 = add nsw i32 %22, 1
  %24 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %25 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %29 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %27, %31
  %33 = load %struct.tcm_area*, %struct.tcm_area** %2, align 8
  %34 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %32, %37
  %39 = add nsw i32 %23, %38
  br label %40

40:                                               ; preds = %13, %7
  %41 = phi i32 [ %12, %7 ], [ %39, %13 ]
  ret i32 %41
}

declare dso_local i32 @__tcm_area_width(%struct.tcm_area*) #1

declare dso_local i32 @__tcm_area_height(%struct.tcm_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
