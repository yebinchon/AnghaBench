; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i16, i32 (%struct.ad714x_chip*, i32, i16*, i32)*, i32 (%struct.ad714x_chip*, i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, i32* }

@STAGE_NUM = common dso_local global i32 0, align 4
@AD714X_STAGECFG_REG = common dso_local global i32 0, align 4
@STAGE_CFGREG_NUM = common dso_local global i32 0, align 4
@SYS_CFGREG_NUM = common dso_local global i32 0, align 4
@AD714X_SYSCFG_REG = common dso_local global i32 0, align 4
@AD714X_STG_CAL_EN_REG = common dso_local global i32 0, align 4
@STG_LOW_INT_STA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*)* @ad714x_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_hw_init(%struct.ad714x_chip* %0) #0 {
  %2 = alloca %struct.ad714x_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %49, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @STAGE_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %7
  %12 = load i32, i32* @AD714X_STAGECFG_REG, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @STAGE_CFGREG_NUM, align 4
  %15 = mul nsw i32 %13, %14
  %16 = add nsw i32 %12, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %45, %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @STAGE_CFGREG_NUM, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %24 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %23, i32 0, i32 2
  %25 = load i32 (%struct.ad714x_chip*, i32, i32)*, i32 (%struct.ad714x_chip*, i32, i32)** %24, align 8
  %26 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %32 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %25(%struct.ad714x_chip* %26, i32 %30, i32 %43)
  br label %45

45:                                               ; preds = %22
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %18

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %7

52:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SYS_CFGREG_NUM, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %59 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %58, i32 0, i32 2
  %60 = load i32 (%struct.ad714x_chip*, i32, i32)*, i32 (%struct.ad714x_chip*, i32, i32)** %59, align 8
  %61 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %62 = load i32, i32* @AD714X_SYSCFG_REG, align 4
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %62, %63
  %65 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %66 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %60(%struct.ad714x_chip* %61, i32 %64, i32 %73)
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %53

78:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %92, %78
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @SYS_CFGREG_NUM, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %85 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %84, i32 0, i32 1
  %86 = load i32 (%struct.ad714x_chip*, i32, i16*, i32)*, i32 (%struct.ad714x_chip*, i32, i16*, i32)** %85, align 8
  %87 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %88 = load i32, i32* @AD714X_SYSCFG_REG, align 4
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 %86(%struct.ad714x_chip* %87, i32 %90, i16* %6, i32 1)
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %79

95:                                               ; preds = %79
  %96 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %97 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %96, i32 0, i32 2
  %98 = load i32 (%struct.ad714x_chip*, i32, i32)*, i32 (%struct.ad714x_chip*, i32, i32)** %97, align 8
  %99 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %100 = load i32, i32* @AD714X_STG_CAL_EN_REG, align 4
  %101 = call i32 %98(%struct.ad714x_chip* %99, i32 %100, i32 4095)
  %102 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %103 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %102, i32 0, i32 1
  %104 = load i32 (%struct.ad714x_chip*, i32, i16*, i32)*, i32 (%struct.ad714x_chip*, i32, i16*, i32)** %103, align 8
  %105 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %106 = load i32, i32* @STG_LOW_INT_STA_REG, align 4
  %107 = load %struct.ad714x_chip*, %struct.ad714x_chip** %2, align 8
  %108 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %107, i32 0, i32 0
  %109 = call i32 %104(%struct.ad714x_chip* %105, i32 %106, i16* %108, i32 3)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
