; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mtk-pmic-keys.c_mtk_pmic_keys_irq_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mtk-pmic-keys.c_mtk_pmic_keys_irq_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pmic_keys_info = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"(%s) key =%d using PMIC\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_pmic_keys_irq_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pmic_keys_irq_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtk_pmic_keys_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mtk_pmic_keys_info*
  store %struct.mtk_pmic_keys_info* %9, %struct.mtk_pmic_keys_info** %5, align 8
  %10 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %16 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %14, i32 %19, i32* %6)
  %21 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %33 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %38 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @input_report_key(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %43 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @input_sync(i32 %46)
  %48 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %49 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %57 = load %struct.mtk_pmic_keys_info*, %struct.mtk_pmic_keys_info** %5, align 8
  %58 = getelementptr inbounds %struct.mtk_pmic_keys_info, %struct.mtk_pmic_keys_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
