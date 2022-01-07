; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-efm32.c_efm32_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-efm32.c_efm32_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.efm32_i2c_ddata = type { i32, i32, i32, i32, %struct.TYPE_2__, i64, %struct.i2c_msg* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"state: %08x, status: %08x\0A\00", align 1
@REG_STATE = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @efm32_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.efm32_i2c_ddata*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = call %struct.efm32_i2c_ddata* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.efm32_i2c_ddata* %11, %struct.efm32_i2c_ddata** %8, align 8
  %12 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %13 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %12, i32 0, i32 6
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %15 = icmp ne %struct.i2c_msg* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %22 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %21, i32 0, i32 6
  store %struct.i2c_msg* %20, %struct.i2c_msg** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %25 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %27 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %29 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %33 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %35 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %34, i32 0, i32 3
  %36 = call i32 @reinit_completion(i32* %35)
  %37 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %38 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %41 = load i32, i32* @REG_STATE, align 4
  %42 = call i32 @efm32_i2c_read32(%struct.efm32_i2c_ddata* %40, i32 %41)
  %43 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %44 = load i32, i32* @REG_STATUS, align 4
  %45 = call i32 @efm32_i2c_read32(%struct.efm32_i2c_ddata* %43, i32 %44)
  %46 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %48 = call i32 @efm32_i2c_send_next_msg(%struct.efm32_i2c_ddata* %47)
  %49 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %50 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %49, i32 0, i32 3
  %51 = call i32 @wait_for_completion(i32* %50)
  %52 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %53 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %56 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %19
  %60 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %61 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %19
  %64 = load %struct.efm32_i2c_ddata*, %struct.efm32_i2c_ddata** %8, align 8
  %65 = getelementptr inbounds %struct.efm32_i2c_ddata, %struct.efm32_i2c_ddata* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.efm32_i2c_ddata* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @efm32_i2c_read32(%struct.efm32_i2c_ddata*, i32) #1

declare dso_local i32 @efm32_i2c_send_next_msg(%struct.efm32_i2c_ddata*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
