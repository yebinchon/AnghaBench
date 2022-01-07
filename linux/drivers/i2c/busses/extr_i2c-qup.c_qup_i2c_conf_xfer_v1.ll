; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_xfer_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_xfer_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, i32, i32, i32, i64, i32, %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i32, i32 }

@QUP_RUN_STATE = common dso_local global i32 0, align 4
@QUP_I2C_CLK_CTL = common dso_local global i64 0, align 8
@QUP_PAUSE_STATE = common dso_local global i32 0, align 4
@ONE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*, i32)* @qup_i2c_conf_xfer_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_conf_xfer_v1(%struct.qup_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qup_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qup_i2c_block*, align 8
  %7 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %9 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %8, i32 0, i32 6
  store %struct.qup_i2c_block* %9, %struct.qup_i2c_block** %6, align 8
  %10 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %6, align 8
  %11 = call i32 @qup_i2c_clear_blk_v1(%struct.qup_i2c_block* %10)
  %12 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %13 = call i32 @qup_i2c_conf_v1(%struct.qup_i2c_dev* %12)
  %14 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %15 = load i32, i32* @QUP_RUN_STATE, align 4
  %16 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %91

21:                                               ; preds = %2
  %22 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %23 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %26 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QUP_I2C_CLK_CTL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %32 = load i32, i32* @QUP_PAUSE_STATE, align 4
  %33 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %91

38:                                               ; preds = %21
  %39 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %40 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %39, i32 0, i32 3
  %41 = call i32 @reinit_completion(i32* %40)
  %42 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %43 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @enable_irq(i32 %44)
  %46 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %6, align 8
  %47 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %38
  %51 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %52 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %6, align 8
  %55 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %60 = call i32 @qup_i2c_write_rx_tags_v1(%struct.qup_i2c_dev* %59)
  br label %64

61:                                               ; preds = %50
  %62 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %63 = call i32 @qup_i2c_write_tx_fifo_v1(%struct.qup_i2c_dev* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %67 = load i32, i32* @QUP_RUN_STATE, align 4
  %68 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %85

72:                                               ; preds = %65
  %73 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %74 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %75 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @qup_i2c_wait_for_complete(%struct.qup_i2c_dev* %73, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %85

81:                                               ; preds = %72
  %82 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %83 = load i32, i32* @ONE_BYTE, align 4
  %84 = call i32 @qup_i2c_bus_active(%struct.qup_i2c_dev* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %80, %71
  %86 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %87 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @disable_irq(i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %36, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @qup_i2c_clear_blk_v1(%struct.qup_i2c_block*) #1

declare dso_local i32 @qup_i2c_conf_v1(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_change_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @qup_i2c_write_rx_tags_v1(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_write_tx_fifo_v1(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_wait_for_complete(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @qup_i2c_bus_active(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
