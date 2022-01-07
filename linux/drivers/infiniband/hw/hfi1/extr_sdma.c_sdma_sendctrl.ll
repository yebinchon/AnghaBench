; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_sendctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_sendctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, i32, i32 }

@SDMA_SENDCTRL_OP_ENABLE = common dso_local global i32 0, align 4
@CTRL_SDMA_ENABLE_SMASK = common dso_local global i32 0, align 4
@SDMA_SENDCTRL_OP_INTENABLE = common dso_local global i32 0, align 4
@CTRL_SDMA_INT_ENABLE_SMASK = common dso_local global i32 0, align 4
@SDMA_SENDCTRL_OP_HALT = common dso_local global i32 0, align 4
@CTRL_SDMA_HALT_SMASK = common dso_local global i32 0, align 4
@SDMA_SENDCTRL_OP_CLEANUP = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@CTRL_SDMA_CLEANUP_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*, i32)* @sdma_sendctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_sendctrl(%struct.sdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SDMA_SENDCTRL_OP_ENABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @CTRL_SDMA_ENABLE_SMASK, align 4
  %14 = call i32 @SD(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @CTRL_SDMA_ENABLE_SMASK, align 4
  %19 = call i32 @SD(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SDMA_SENDCTRL_OP_INTENABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @CTRL_SDMA_INT_ENABLE_SMASK, align 4
  %29 = call i32 @SD(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %22
  %33 = load i32, i32* @CTRL_SDMA_INT_ENABLE_SMASK, align 4
  %34 = call i32 @SD(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SDMA_SENDCTRL_OP_HALT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @CTRL_SDMA_HALT_SMASK, align 4
  %44 = call i32 @SD(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %37
  %48 = load i32, i32* @CTRL_SDMA_HALT_SMASK, align 4
  %49 = call i32 @SD(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %54 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %53, i32 0, i32 1
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %59 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %6, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %65 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SDMA_SENDCTRL_OP_CLEANUP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %52
  %73 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %74 = load i32, i32* @CTRL, align 4
  %75 = call i32 @SD(i32 %74)
  %76 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %77 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CTRL_SDMA_CLEANUP_SMASK, align 4
  %80 = call i32 @SD(i32 %79)
  %81 = or i32 %78, %80
  %82 = call i32 @write_sde_csr(%struct.sdma_engine* %73, i32 %75, i32 %81)
  br label %91

83:                                               ; preds = %52
  %84 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %85 = load i32, i32* @CTRL, align 4
  %86 = call i32 @SD(i32 %85)
  %87 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %88 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @write_sde_csr(%struct.sdma_engine* %84, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %83, %72
  %92 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %93 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %92, i32 0, i32 1
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  ret void
}

declare dso_local i32 @SD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_sde_csr(%struct.sdma_engine*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
