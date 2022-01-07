; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_set_medianoc_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_set_medianoc_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ade_hw_ctx = type { %struct.regmap* }
%struct.regmap = type { i32 }

@ADE0_QOSGENERATOR_MODE = common dso_local global i32 0, align 4
@QOSGENERATOR_MODE_MASK = common dso_local global i32 0, align 4
@BYPASS_MODE = common dso_local global i32 0, align 4
@ADE0_QOSGENERATOR_EXTCONTROL = common dso_local global i32 0, align 4
@SOCKET_QOS_EN = common dso_local global i32 0, align 4
@ADE1_QOSGENERATOR_MODE = common dso_local global i32 0, align 4
@ADE1_QOSGENERATOR_EXTCONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ade_hw_ctx*)* @ade_set_medianoc_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ade_set_medianoc_qos(%struct.ade_hw_ctx* %0) #0 {
  %2 = alloca %struct.ade_hw_ctx*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.ade_hw_ctx* %0, %struct.ade_hw_ctx** %2, align 8
  %4 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ade_hw_ctx, %struct.ade_hw_ctx* %4, i32 0, i32 0
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @ADE0_QOSGENERATOR_MODE, align 4
  %9 = load i32, i32* @QOSGENERATOR_MODE_MASK, align 4
  %10 = load i32, i32* @BYPASS_MODE, align 4
  %11 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = load i32, i32* @ADE0_QOSGENERATOR_EXTCONTROL, align 4
  %14 = load i32, i32* @SOCKET_QOS_EN, align 4
  %15 = load i32, i32* @SOCKET_QOS_EN, align 4
  %16 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.regmap*, %struct.regmap** %3, align 8
  %18 = load i32, i32* @ADE1_QOSGENERATOR_MODE, align 4
  %19 = load i32, i32* @QOSGENERATOR_MODE_MASK, align 4
  %20 = load i32, i32* @BYPASS_MODE, align 4
  %21 = call i32 @regmap_update_bits(%struct.regmap* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.regmap*, %struct.regmap** %3, align 8
  %23 = load i32, i32* @ADE1_QOSGENERATOR_EXTCONTROL, align 4
  %24 = load i32, i32* @SOCKET_QOS_EN, align 4
  %25 = load i32, i32* @SOCKET_QOS_EN, align 4
  %26 = call i32 @regmap_update_bits(%struct.regmap* %22, i32 %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
