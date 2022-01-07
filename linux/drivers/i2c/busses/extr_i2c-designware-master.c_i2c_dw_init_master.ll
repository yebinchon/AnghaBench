; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_init_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-master.c_i2c_dw_init_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i64, i64, i64, i64, i64, i64, i64 }

@DW_IC_SS_SCL_HCNT = common dso_local global i32 0, align 4
@DW_IC_SS_SCL_LCNT = common dso_local global i32 0, align 4
@DW_IC_FS_SCL_HCNT = common dso_local global i32 0, align 4
@DW_IC_FS_SCL_LCNT = common dso_local global i32 0, align 4
@DW_IC_HS_SCL_HCNT = common dso_local global i32 0, align 4
@DW_IC_HS_SCL_LCNT = common dso_local global i32 0, align 4
@DW_IC_SDA_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_i2c_dev*)* @i2c_dw_init_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_init_master(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %5 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %6 = call i32 @i2c_dw_acquire_lock(%struct.dw_i2c_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %77

11:                                               ; preds = %1
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %13 = call i32 @__i2c_dw_disable(%struct.dw_i2c_dev* %12)
  %14 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @DW_IC_SS_SCL_HCNT, align 4
  %19 = call i32 @dw_writel(%struct.dw_i2c_dev* %14, i64 %17, i32 %18)
  %20 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %21 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %22 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @DW_IC_SS_SCL_LCNT, align 4
  %25 = call i32 @dw_writel(%struct.dw_i2c_dev* %20, i64 %23, i32 %24)
  %26 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %27 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %28 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @DW_IC_FS_SCL_HCNT, align 4
  %31 = call i32 @dw_writel(%struct.dw_i2c_dev* %26, i64 %29, i32 %30)
  %32 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %33 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @DW_IC_FS_SCL_LCNT, align 4
  %37 = call i32 @dw_writel(%struct.dw_i2c_dev* %32, i64 %35, i32 %36)
  %38 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %39 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %11
  %43 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %44 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %49 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %50 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @DW_IC_HS_SCL_HCNT, align 4
  %53 = call i32 @dw_writel(%struct.dw_i2c_dev* %48, i64 %51, i32 %52)
  %54 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %55 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %56 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @DW_IC_HS_SCL_LCNT, align 4
  %59 = call i32 @dw_writel(%struct.dw_i2c_dev* %54, i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %47, %42, %11
  %61 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %62 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %67 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %68 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @DW_IC_SDA_HOLD, align 4
  %71 = call i32 @dw_writel(%struct.dw_i2c_dev* %66, i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %74 = call i32 @i2c_dw_configure_fifo_master(%struct.dw_i2c_dev* %73)
  %75 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %76 = call i32 @i2c_dw_release_lock(%struct.dw_i2c_dev* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %9
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @i2c_dw_acquire_lock(%struct.dw_i2c_dev*) #1

declare dso_local i32 @__i2c_dw_disable(%struct.dw_i2c_dev*) #1

declare dso_local i32 @dw_writel(%struct.dw_i2c_dev*, i64, i32) #1

declare dso_local i32 @i2c_dw_configure_fifo_master(%struct.dw_i2c_dev*) #1

declare dso_local i32 @i2c_dw_release_lock(%struct.dw_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
