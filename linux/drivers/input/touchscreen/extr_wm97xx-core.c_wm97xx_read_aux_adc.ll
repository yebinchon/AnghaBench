; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_read_aux_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_read_aux_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wm97xx*, i32, i32*)*, {}*, i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)* }

@WM9713_ID2 = common dso_local global i64 0, align 8
@AC97_EXTENDED_MID = common dso_local global i32 0, align 4
@RC_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"timeout reading auxadc %d, disabling digitiser\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm97xx_read_aux_adc(%struct.wm97xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %11 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %14 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WM9713_ID2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %20 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %21 = call i32 @wm97xx_reg_read(%struct.wm97xx* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = and i32 %21, 32768
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  %25 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %26 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 32767
  %29 = call i32 @wm97xx_reg_write(%struct.wm97xx* %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %18, %2
  %31 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %32 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %34, align 8
  %36 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %37 = call i32 %35(%struct.wm97xx* %36)
  %38 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %39 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %50, %30
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @RC_VALID, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = icmp slt i32 %45, 5
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %52 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.wm97xx*, i32, i32*)*, i32 (%struct.wm97xx*, i32, i32*)** %54, align 8
  %56 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 %55(%struct.wm97xx* %56, i32 %57, i32* %6)
  store i32 %58, i32* %8, align 4
  br label %40

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %64 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, 32768
  %67 = call i32 @wm97xx_reg_write(%struct.wm97xx* %63, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %70 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %72, align 8
  %74 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %75 = call i32 %73(%struct.wm97xx* %74)
  %76 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %77 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = icmp sge i32 %78, 5
  br i1 %79, label %80, label %94

80:                                               ; preds = %68
  %81 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %82 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %87 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = bitcast {}** %89 to i32 (%struct.wm97xx*, i32)**
  %91 = load i32 (%struct.wm97xx*, i32)*, i32 (%struct.wm97xx*, i32)** %90, align 8
  %92 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %93 = call i32 %91(%struct.wm97xx* %92, i32 0)
  br label %94

94:                                               ; preds = %80, %68
  %95 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %96 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %95, i32 0, i32 2
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @RC_VALID, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 4095
  br label %107

104:                                              ; preds = %94
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi i32 [ %103, %101 ], [ %106, %104 ]
  ret i32 %108
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
