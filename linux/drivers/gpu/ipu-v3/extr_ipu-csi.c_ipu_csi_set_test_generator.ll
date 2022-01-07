; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_test_generator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_test_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { i32, i32 }

@CSI_TST_CTRL = common dso_local global i32 0, align 4
@CSI_TEST_GEN_MODE_EN = common dso_local global i32 0, align 4
@CSI_TEST_GEN_R_MASK = common dso_local global i32 0, align 4
@CSI_TEST_GEN_G_MASK = common dso_local global i32 0, align 4
@CSI_TEST_GEN_B_MASK = common dso_local global i32 0, align 4
@CSI_TEST_GEN_R_SHIFT = common dso_local global i32 0, align 4
@CSI_TEST_GEN_G_SHIFT = common dso_local global i32 0, align 4
@CSI_TEST_GEN_B_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_csi_set_test_generator(%struct.ipu_csi* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ipu_csi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ipu_csi* %0, %struct.ipu_csi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %17 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_get_rate(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %21 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %20, i32 0, i32 0
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %25 = load i32, i32* @CSI_TST_CTRL, align 4
  %26 = call i32 @ipu_csi_read(%struct.ipu_csi* %24, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @CSI_TEST_GEN_MODE_EN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %15, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %15, align 4
  %34 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @CSI_TST_CTRL, align 4
  %37 = call i32 @ipu_csi_write(%struct.ipu_csi* %34, i32 %35, i32 %36)
  br label %71

38:                                               ; preds = %6
  %39 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @ipu_csi_set_testgen_mclk(%struct.ipu_csi* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @CSI_TEST_GEN_R_MASK, align 4
  %44 = load i32, i32* @CSI_TEST_GEN_G_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CSI_TEST_GEN_B_MASK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %15, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @CSI_TEST_GEN_MODE_EN, align 4
  %52 = load i32, i32* %15, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @CSI_TEST_GEN_R_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @CSI_TEST_GEN_G_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @CSI_TEST_GEN_B_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %15, align 4
  %67 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @CSI_TST_CTRL, align 4
  %70 = call i32 @ipu_csi_write(%struct.ipu_csi* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %38, %29
  %72 = load %struct.ipu_csi*, %struct.ipu_csi** %7, align 8
  %73 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %72, i32 0, i32 0
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_csi_read(%struct.ipu_csi*, i32) #1

declare dso_local i32 @ipu_csi_write(%struct.ipu_csi*, i32, i32) #1

declare dso_local i32 @ipu_csi_set_testgen_mclk(%struct.ipu_csi*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
