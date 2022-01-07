; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_xfer_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_conf_xfer_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, i32, i32, i64, i32, i32, i64, %struct.i2c_msg*, %struct.qup_i2c_block }
%struct.i2c_msg = type { i32 }
%struct.qup_i2c_block = type { i32, i32, i32 }

@QUP_I2C_MX_CONFIG_DURING_RUN = common dso_local global i32 0, align 4
@QUP_RUN_STATE = common dso_local global i32 0, align 4
@QUP_I2C_CLK_CTL = common dso_local global i64 0, align 8
@QUP_PAUSE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*, i32, i32, i32)* @qup_i2c_conf_xfer_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_conf_xfer_v2(%struct.qup_i2c_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qup_i2c_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qup_i2c_block*, align 8
  %11 = alloca %struct.i2c_msg*, align 8
  %12 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %14 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %13, i32 0, i32 8
  store %struct.qup_i2c_block* %14, %struct.qup_i2c_block** %10, align 8
  %15 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %16 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %15, i32 0, i32 7
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %16, align 8
  store %struct.i2c_msg* %17, %struct.i2c_msg** %11, align 8
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %19 = call i64 @qup_i2c_check_msg_len(%struct.i2c_msg* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %23 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %10, align 8
  %28 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %8, align 4
  br label %32

31:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %26
  br label %33

33:                                               ; preds = %32, %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @QUP_I2C_MX_CONFIG_DURING_RUN, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 0, %36 ], [ %38, %37 ]
  %41 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %42 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %10, align 8
  %44 = call i32 @qup_i2c_clear_blk_v2(%struct.qup_i2c_block* %43)
  %45 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %46 = call i32 @qup_i2c_conf_count_v2(%struct.qup_i2c_dev* %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %39
  %50 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %51 = load i32, i32* @QUP_RUN_STATE, align 4
  %52 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %134

57:                                               ; preds = %49
  %58 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %59 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %62 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @QUP_I2C_CLK_CTL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %68 = load i32, i32* @QUP_PAUSE_STATE, align 4
  %69 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %134

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %39
  %76 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %77 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %76, i32 0, i32 2
  %78 = call i32 @reinit_completion(i32* %77)
  %79 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %80 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @enable_irq(i32 %81)
  %83 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %10, align 8
  %84 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %75
  %88 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %89 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %10, align 8
  %92 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %97 = call i32 @qup_i2c_write_rx_tags_v2(%struct.qup_i2c_dev* %96)
  br label %101

98:                                               ; preds = %87
  %99 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %100 = call i32 @qup_i2c_write_tx_fifo_v2(%struct.qup_i2c_dev* %99)
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %75
  %103 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %104 = load i32, i32* @QUP_RUN_STATE, align 4
  %105 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %103, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %128

109:                                              ; preds = %102
  %110 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %111 = load %struct.i2c_msg*, %struct.i2c_msg** %11, align 8
  %112 = call i32 @qup_i2c_wait_for_complete(%struct.qup_i2c_dev* %110, %struct.i2c_msg* %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %128

116:                                              ; preds = %109
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %121 = load i32, i32* @QUP_PAUSE_STATE, align 4
  %122 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %120, i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %128

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %116
  br label %128

128:                                              ; preds = %127, %125, %115, %108
  %129 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %6, align 8
  %130 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @disable_irq(i32 %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %128, %72, %55
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i64 @qup_i2c_check_msg_len(%struct.i2c_msg*) #1

declare dso_local i32 @qup_i2c_clear_blk_v2(%struct.qup_i2c_block*) #1

declare dso_local i32 @qup_i2c_conf_count_v2(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_change_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @qup_i2c_write_rx_tags_v2(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_write_tx_fifo_v2(%struct.qup_i2c_dev*) #1

declare dso_local i32 @qup_i2c_wait_for_complete(%struct.qup_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
