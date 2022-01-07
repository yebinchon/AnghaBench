; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mtk-pmic-keys.c_mtk_pmic_key_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mtk-pmic-keys.c_mtk_pmic_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pmic_keys = type { i32, i32, i32 }
%struct.mtk_pmic_keys_info = type { i32, i32, %struct.TYPE_2__*, %struct.mtk_pmic_keys* }
%struct.TYPE_2__ = type { i32, i32 }

@mtk_pmic_keys_irq_handler_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mtk-pmic-keys\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to request IRQ: %d: %d\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_pmic_keys*, %struct.mtk_pmic_keys_info*)* @mtk_pmic_key_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pmic_key_setup(%struct.mtk_pmic_keys* %0, %struct.mtk_pmic_keys_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_pmic_keys*, align 8
  %5 = alloca %struct.mtk_pmic_keys_info*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_pmic_keys* %0, %struct.mtk_pmic_keys** %4, align 8
  store %struct.mtk_pmic_keys_info* %1, %struct.mtk_pmic_keys_info** %5, align 8
  %7 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %4, align 8
  %8 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %9 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %8, i32 0, i32 3
  store %struct.mtk_pmic_keys* %7, %struct.mtk_pmic_keys** %9, align 8
  %10 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %14 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %19 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %24 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_update_bits(i32 %12, i32 %17, i32 %22, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %67

33:                                               ; preds = %2
  %34 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %38 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @mtk_pmic_keys_irq_handler_thread, align 4
  %41 = load i32, i32* @IRQF_ONESHOT, align 4
  %42 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %45 = call i32 @devm_request_threaded_irq(i32 %36, i32 %39, i32* null, i32 %40, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.mtk_pmic_keys_info* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %33
  %49 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %4, align 8
  %50 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %53 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %67

58:                                               ; preds = %33
  %59 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EV_KEY, align 4
  %63 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %64 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @input_set_capability(i32 %61, i32 %62, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %58, %48, %31
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.mtk_pmic_keys_info*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @input_set_capability(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
