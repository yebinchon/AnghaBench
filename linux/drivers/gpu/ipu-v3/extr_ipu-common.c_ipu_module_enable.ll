; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_module_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_module_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { i32 }

@IPU_DISP_GEN = common dso_local global i32 0, align 4
@IPU_CONF_DI0_EN = common dso_local global i32 0, align 4
@IPU_DI0_COUNTER_RELEASE = common dso_local global i32 0, align 4
@IPU_CONF_DI1_EN = common dso_local global i32 0, align 4
@IPU_DI1_COUNTER_RELEASE = common dso_local global i32 0, align 4
@IPU_CONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_module_enable(%struct.ipu_soc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_soc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipu_soc* %0, %struct.ipu_soc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %8 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %12 = load i32, i32* @IPU_DISP_GEN, align 4
  %13 = call i32 @ipu_cm_read(%struct.ipu_soc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IPU_CONF_DI0_EN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @IPU_DI0_COUNTER_RELEASE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IPU_CONF_DI1_EN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @IPU_DI1_COUNTER_RELEASE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @IPU_DISP_GEN, align 4
  %35 = call i32 @ipu_cm_write(%struct.ipu_soc* %32, i32 %33, i32 %34)
  %36 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %37 = load i32, i32* @IPU_CONF, align 4
  %38 = call i32 @ipu_cm_read(%struct.ipu_soc* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @IPU_CONF, align 4
  %45 = call i32 @ipu_cm_write(%struct.ipu_soc* %42, i32 %43, i32 %44)
  %46 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %47 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_cm_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @ipu_cm_write(%struct.ipu_soc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
