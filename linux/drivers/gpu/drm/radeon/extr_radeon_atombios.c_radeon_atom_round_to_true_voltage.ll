; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_round_to_true_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_round_to_true_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_round_to_true_voltage(%struct.radeon_device* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @radeon_atom_get_max_voltage(%struct.radeon_device* %13, i32 %14, i64* %11)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %63

20:                                               ; preds = %4
  %21 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @radeon_atom_get_min_voltage(%struct.radeon_device* %21, i32 %22, i64* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %63

28:                                               ; preds = %20
  %29 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @radeon_atom_get_voltage_step(%struct.radeon_device* %29, i32 %30, i64* %12)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %63

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  br label %62

43:                                               ; preds = %36
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  br label %61

50:                                               ; preds = %43
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64, i64* %12, align 8
  %56 = sdiv i64 %54, %55
  %57 = load i64, i64* %12, align 8
  %58 = mul nsw i64 %56, %57
  %59 = add nsw i64 %51, %58
  %60 = load i64*, i64** %9, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %47
  br label %62

62:                                               ; preds = %61, %40
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %33, %25, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @radeon_atom_get_max_voltage(%struct.radeon_device*, i32, i64*) #1

declare dso_local i64 @radeon_atom_get_min_voltage(%struct.radeon_device*, i32, i64*) #1

declare dso_local i64 @radeon_atom_get_voltage_step(%struct.radeon_device*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
