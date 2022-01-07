; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_module_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_module_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { i32 }

@IPU_CONF = common dso_local global i32 0, align 4
@IPU_DISP_GEN = common dso_local global i32 0, align 4
@IPU_CONF_DI0_EN = common dso_local global i32 0, align 4
@IPU_DI0_COUNTER_RELEASE = common dso_local global i32 0, align 4
@IPU_CONF_DI1_EN = common dso_local global i32 0, align 4
@IPU_DI1_COUNTER_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_module_disable(%struct.ipu_soc* %0, i32 %1) #0 {
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
  %12 = load i32, i32* @IPU_CONF, align 4
  %13 = call i32 @ipu_cm_read(%struct.ipu_soc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IPU_CONF, align 4
  %21 = call i32 @ipu_cm_write(%struct.ipu_soc* %18, i32 %19, i32 %20)
  %22 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %23 = load i32, i32* @IPU_DISP_GEN, align 4
  %24 = call i32 @ipu_cm_read(%struct.ipu_soc* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IPU_CONF_DI0_EN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @IPU_DI0_COUNTER_RELEASE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IPU_CONF_DI1_EN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @IPU_DI1_COUNTER_RELEASE, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @IPU_DISP_GEN, align 4
  %48 = call i32 @ipu_cm_write(%struct.ipu_soc* %45, i32 %46, i32 %47)
  %49 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %50 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
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
