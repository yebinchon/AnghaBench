; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_map_clkf_to_ibias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_map_clkf_to_ibias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_map_clkf_to_ibias(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 10000
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 500000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 198, i32* %3, align 4
  br label %56

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 400000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 157, i32* %3, align 4
  br label %56

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 330000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 108, i32* %3, align 4
  br label %56

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 250000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 43, i32* %3, align 4
  br label %56

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 160000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 91, i32* %3, align 4
  br label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 120000
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 10, i32* %3, align 4
  br label %56

42:                                               ; preds = %38
  store i32 75, i32* %3, align 4
  br label %56

43:                                               ; preds = %2
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 250000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 139, i32* %3, align 4
  br label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 200000
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 204, i32* %3, align 4
  br label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %52, 150000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 155, i32* %3, align 4
  br label %56

55:                                               ; preds = %51
  store i32 107, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %50, %46, %42, %41, %37, %33, %29, %25, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
