; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_set_reg_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_set_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32 }

@DW_IC_COMP_TYPE = common dso_local global i32 0, align 4
@DW_IC_COMP_TYPE_VALUE = common dso_local global i32 0, align 4
@ACCESS_SWAP = common dso_local global i32 0, align 4
@ACCESS_16BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unknown Synopsys component type: 0x%08x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_dw_set_reg_access(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %6 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %7 = call i32 @i2c_dw_acquire_lock(%struct.dw_i2c_dev* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %14 = load i32, i32* @DW_IC_COMP_TYPE, align 4
  %15 = call i32 @dw_readl(%struct.dw_i2c_dev* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %17 = call i32 @i2c_dw_release_lock(%struct.dw_i2c_dev* %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DW_IC_COMP_TYPE_VALUE, align 4
  %20 = call i32 @swab32(i32 %19)
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load i32, i32* @ACCESS_SWAP, align 4
  %24 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %25 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %53

28:                                               ; preds = %12
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @DW_IC_COMP_TYPE_VALUE, align 4
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @ACCESS_16BIT, align 4
  %35 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %36 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %52

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DW_IC_COMP_TYPE_VALUE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %45 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %22
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %43, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @i2c_dw_acquire_lock(%struct.dw_i2c_dev*) #1

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @i2c_dw_release_lock(%struct.dw_i2c_dev*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
