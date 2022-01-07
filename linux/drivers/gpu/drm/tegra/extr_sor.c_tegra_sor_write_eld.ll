; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_write_eld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_write_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@SOR_AUDIO_HDA_ELD_BUFWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_sor*)* @tegra_sor_write_eld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sor_write_eld(%struct.tegra_sor* %0) #0 {
  %2 = alloca %struct.tegra_sor*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.tegra_sor* %0, %struct.tegra_sor** %2, align 8
  %5 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = call i64 @drm_eld_size(i64* %9)
  store i64 %10, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %17 = load i64, i64* %4, align 8
  %18 = shl i64 %17, 8
  %19 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %20 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %18, %26
  %28 = load i32, i32* @SOR_AUDIO_HDA_ELD_BUFWR, align 4
  %29 = call i32 @tegra_sor_writel(%struct.tegra_sor* %16, i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %15
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %11

33:                                               ; preds = %11
  %34 = load i64, i64* %3, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %44, %33
  %36 = load i64, i64* %4, align 8
  %37 = icmp ult i64 %36, 96
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %40 = load i64, i64* %4, align 8
  %41 = shl i64 %40, 8
  %42 = load i32, i32* @SOR_AUDIO_HDA_ELD_BUFWR, align 4
  %43 = call i32 @tegra_sor_writel(%struct.tegra_sor* %39, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %4, align 8
  br label %35

47:                                               ; preds = %35
  ret void
}

declare dso_local i64 @drm_eld_size(i64*) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
