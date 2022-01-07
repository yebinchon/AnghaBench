; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8xxx-vibrator.c_pm8xxx_vib_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8xxx-vibrator.c_pm8xxx_vib_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8xxx_vib = type { i32, i32, i32, %struct.pm8xxx_regs* }
%struct.pm8xxx_regs = type { i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8xxx_vib*, i32)* @pm8xxx_vib_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_vib_set(%struct.pm8xxx_vib* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8xxx_vib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pm8xxx_regs*, align 8
  store %struct.pm8xxx_vib* %0, %struct.pm8xxx_vib** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %10 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %13 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %12, i32 0, i32 3
  %14 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %13, align 8
  store %struct.pm8xxx_regs* %14, %struct.pm8xxx_regs** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %19 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %22 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %20, %23
  %25 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %26 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %33 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %17
  %39 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %40 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %43 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @regmap_write(i32 %41, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %79

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %54 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %56 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %51
  %60 = load %struct.pm8xxx_vib*, %struct.pm8xxx_vib** %4, align 8
  %61 = getelementptr inbounds %struct.pm8xxx_vib, %struct.pm8xxx_vib* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %64 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.pm8xxx_regs*, %struct.pm8xxx_regs** %8, align 8
  %70 = getelementptr inbounds %struct.pm8xxx_regs, %struct.pm8xxx_regs* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i64 [ %71, %68 ], [ 0, %72 ]
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @regmap_update_bits(i32 %62, i32 %65, i64 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %51
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %49
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
