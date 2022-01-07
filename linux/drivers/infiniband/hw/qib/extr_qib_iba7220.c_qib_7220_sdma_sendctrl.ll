; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_sdma_sendctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_sdma_sendctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32 }

@QIB_SDMA_SENDCTRL_OP_ENABLE = common dso_local global i32 0, align 4
@SendCtrl = common dso_local global i32 0, align 4
@SDmaEnable = common dso_local global i32 0, align 4
@QIB_SDMA_SENDCTRL_OP_INTENABLE = common dso_local global i32 0, align 4
@SDmaIntEnable = common dso_local global i32 0, align 4
@QIB_SDMA_SENDCTRL_OP_HALT = common dso_local global i32 0, align 4
@SDmaHalt = common dso_local global i32 0, align 4
@kr_sendctrl = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32)* @qib_7220_sdma_sendctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7220_sdma_sendctrl(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 0
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  store %struct.qib_devdata* %10, %struct.qib_devdata** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @QIB_SDMA_SENDCTRL_OP_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @SendCtrl, align 4
  %17 = load i32, i32* @SDmaEnable, align 4
  %18 = call i32 @SYM_MASK(i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @SendCtrl, align 4
  %23 = load i32, i32* @SDmaEnable, align 4
  %24 = call i32 @SYM_MASK(i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @QIB_SDMA_SENDCTRL_OP_INTENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @SendCtrl, align 4
  %34 = load i32, i32* @SDmaIntEnable, align 4
  %35 = call i32 @SYM_MASK(i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %44

38:                                               ; preds = %27
  %39 = load i32, i32* @SendCtrl, align 4
  %40 = load i32, i32* @SDmaIntEnable, align 4
  %41 = call i32 @SYM_MASK(i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @QIB_SDMA_SENDCTRL_OP_HALT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @SendCtrl, align 4
  %51 = load i32, i32* @SDmaHalt, align 4
  %52 = call i32 @SYM_MASK(i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load i32, i32* @SendCtrl, align 4
  %57 = load i32, i32* @SDmaHalt, align 4
  %58 = call i32 @SYM_MASK(i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %7, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %73 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %77 = load i32, i32* @kr_sendctrl, align 4
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @qib_write_kreg(%struct.qib_devdata* %76, i32 %77, i32 %80)
  %82 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %83 = load i32, i32* @kr_scratch, align 4
  %84 = call i32 @qib_write_kreg(%struct.qib_devdata* %82, i32 %83, i32 0)
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %86 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  ret void
}

declare dso_local i32 @SYM_MASK(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
