; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sc27xx-vibra.c_sc27xx_vibra_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sc27xx-vibra.c_sc27xx_vibra_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vibra_info = type { i32, i32, i32 }

@LDO_VIBR_PD = common dso_local global i32 0, align 4
@SLP_LDOVIBR_PD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vibra_info*, i32)* @sc27xx_vibra_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc27xx_vibra_set(%struct.vibra_info* %0, i32 %1) #0 {
  %3 = alloca %struct.vibra_info*, align 8
  %4 = alloca i32, align 4
  store %struct.vibra_info* %0, %struct.vibra_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %9 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %12 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LDO_VIBR_PD, align 4
  %15 = call i32 @regmap_update_bits(i32 %10, i32 %13, i32 %14, i32 0)
  %16 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %17 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %20 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SLP_LDOVIBR_PD_EN, align 4
  %23 = call i32 @regmap_update_bits(i32 %18, i32 %21, i32 %22, i32 0)
  %24 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %25 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %28 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %31 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LDO_VIBR_PD, align 4
  %34 = load i32, i32* @LDO_VIBR_PD, align 4
  %35 = call i32 @regmap_update_bits(i32 %29, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %37 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %40 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SLP_LDOVIBR_PD_EN, align 4
  %43 = load i32, i32* @SLP_LDOVIBR_PD_EN, align 4
  %44 = call i32 @regmap_update_bits(i32 %38, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.vibra_info*, %struct.vibra_info** %3, align 8
  %46 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
