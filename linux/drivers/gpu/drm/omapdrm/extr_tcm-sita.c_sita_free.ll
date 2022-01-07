; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_sita_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_sita_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm = type { i64, i32, i32 }
%struct.tcm_area = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm*, %struct.tcm_area*)* @sita_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sita_free(%struct.tcm* %0, %struct.tcm_area* %1) #0 {
  %3 = alloca %struct.tcm*, align 8
  %4 = alloca %struct.tcm_area*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tcm* %0, %struct.tcm** %3, align 8
  store %struct.tcm_area* %1, %struct.tcm_area** %4, align 8
  %8 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %9 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %13 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tcm*, %struct.tcm** %3, align 8
  %17 = getelementptr inbounds %struct.tcm, %struct.tcm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %15, %18
  %20 = add i64 %11, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %22 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %2
  %26 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %27 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %32 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %30, %34
  %36 = add i64 %35, 1
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %39 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %44 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %42, %46
  %48 = add i64 %47, 1
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %70

50:                                               ; preds = %2
  %51 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %52 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = load %struct.tcm_area*, %struct.tcm_area** %4, align 8
  %57 = getelementptr inbounds %struct.tcm_area, %struct.tcm_area* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.tcm*, %struct.tcm** %3, align 8
  %62 = getelementptr inbounds %struct.tcm, %struct.tcm* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 %60, %63
  %65 = add i64 %55, %64
  %66 = load i64, i64* %5, align 8
  %67 = sub i64 %65, %66
  %68 = add i64 %67, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %50, %25
  %71 = load %struct.tcm*, %struct.tcm** %3, align 8
  %72 = getelementptr inbounds %struct.tcm, %struct.tcm* %71, i32 0, i32 1
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load i64, i64* %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.tcm*, %struct.tcm** %3, align 8
  %78 = getelementptr inbounds %struct.tcm, %struct.tcm* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tcm*, %struct.tcm** %3, align 8
  %81 = getelementptr inbounds %struct.tcm, %struct.tcm* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @free_slots(i64 %74, i32 %75, i32 %76, i32 %79, i64 %82)
  %84 = load %struct.tcm*, %struct.tcm** %3, align 8
  %85 = getelementptr inbounds %struct.tcm, %struct.tcm* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock(i32* %85)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @free_slots(i64, i32, i32, i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
