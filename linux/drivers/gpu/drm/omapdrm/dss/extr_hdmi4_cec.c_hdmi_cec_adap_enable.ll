; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.hdmi_core_data = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@HDMI_CEC_INT_ENABLE_0 = common dso_local global i32 0, align 4
@HDMI_CEC_INT_ENABLE_1 = common dso_local global i32 0, align 4
@HDMI_CORE_SYS_INTR_UNMASK4 = common dso_local global i32 0, align 4
@HDMI_IRQ_CORE = common dso_local global i32 0, align 4
@HDMI_WP_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cec-%s: could not clear TX FIFO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cec-%s: could not clear RX FIFO\0A\00", align 1
@HDMI_CEC_INT_STATUS_1 = common dso_local global i32 0, align 4
@HDMI_CEC_INT_STATUS_0 = common dso_local global i32 0, align 4
@HDMI_CEC_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @hdmi_cec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_cec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdmi_core_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %10 = call %struct.hdmi_core_data* @cec_get_drvdata(%struct.cec_adapter* %9)
  store %struct.hdmi_core_data* %10, %struct.hdmi_core_data** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %2
  %14 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %15 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HDMI_CEC_INT_ENABLE_0, align 4
  %18 = call i32 @hdmi_write_reg(i32 %16, i32 %17, i32 0)
  %19 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %20 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HDMI_CEC_INT_ENABLE_1, align 4
  %23 = call i32 @hdmi_write_reg(i32 %21, i32 %22, i32 0)
  %24 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %25 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HDMI_CORE_SYS_INTR_UNMASK4, align 4
  %28 = call i32 @REG_FLD_MOD(i32 %26, i32 %27, i32 0, i32 3, i32 3)
  %29 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %30 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* @HDMI_IRQ_CORE, align 4
  %33 = call i32 @hdmi_wp_clear_irqenable(%struct.TYPE_4__* %31, i32 %32)
  %34 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %35 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* @HDMI_IRQ_CORE, align 4
  %38 = call i32 @hdmi_wp_set_irqstatus(%struct.TYPE_4__* %36, i32 %37)
  %39 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %40 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HDMI_WP_CLK, align 4
  %45 = call i32 @REG_FLD_MOD(i32 %43, i32 %44, i32 0, i32 5, i32 0)
  %46 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %47 = call i32 @hdmi4_core_disable(%struct.hdmi_core_data* %46)
  store i32 0, i32* %3, align 4
  br label %177

48:                                               ; preds = %2
  %49 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %50 = call i32 @hdmi4_core_enable(%struct.hdmi_core_data* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %177

55:                                               ; preds = %48
  %56 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %57 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HDMI_WP_CLK, align 4
  %62 = call i32 @REG_FLD_MOD(i32 %60, i32 %61, i32 24, i32 5, i32 0)
  %63 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %64 = call i32 @hdmi_cec_clear_tx_fifo(%struct.cec_adapter* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %55
  %67 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %166

73:                                               ; preds = %55
  %74 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %75 = call i32 @hdmi_cec_clear_rx_fifo(%struct.cec_adapter* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %166

84:                                               ; preds = %73
  %85 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %86 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @HDMI_CEC_INT_STATUS_1, align 4
  %89 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %90 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @HDMI_CEC_INT_STATUS_1, align 4
  %93 = call i32 @hdmi_read_reg(i32 %91, i32 %92)
  %94 = call i32 @hdmi_write_reg(i32 %87, i32 %88, i32 %93)
  %95 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %96 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @HDMI_CEC_INT_STATUS_0, align 4
  %99 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %100 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @HDMI_CEC_INT_STATUS_0, align 4
  %103 = call i32 @hdmi_read_reg(i32 %101, i32 %102)
  %104 = call i32 @hdmi_write_reg(i32 %97, i32 %98, i32 %103)
  %105 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %106 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* @HDMI_IRQ_CORE, align 4
  %109 = call i32 @hdmi_wp_set_irqenable(%struct.TYPE_4__* %107, i32 %108)
  %110 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %111 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @HDMI_CORE_SYS_INTR_UNMASK4, align 4
  %114 = call i32 @REG_FLD_MOD(i32 %112, i32 %113, i32 1, i32 3, i32 3)
  %115 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %116 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @HDMI_CEC_INT_ENABLE_0, align 4
  %119 = call i32 @hdmi_write_reg(i32 %117, i32 %118, i32 34)
  %120 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %121 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @HDMI_CEC_INT_ENABLE_1, align 4
  %124 = call i32 @hdmi_write_reg(i32 %122, i32 %123, i32 2)
  %125 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %126 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @HDMI_CEC_SETUP, align 4
  %129 = call i32 @hdmi_write_reg(i32 %127, i32 %128, i32 3)
  %130 = call i32 @msleep(i32 20)
  %131 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %132 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @HDMI_CEC_SETUP, align 4
  %135 = call i32 @hdmi_write_reg(i32 %133, i32 %134, i32 4)
  %136 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %137 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @HDMI_CEC_SETUP, align 4
  %140 = call i32 @hdmi_read_reg(i32 %138, i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i64 @FLD_GET(i32 %141, i32 4, i32 4)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %84
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @FLD_MOD(i32 %145, i32 0, i32 4, i32 4)
  store i32 %146, i32* %7, align 4
  %147 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %148 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @HDMI_CEC_SETUP, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @hdmi_write_reg(i32 %149, i32 %150, i32 %151)
  %153 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %154 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @HDMI_CEC_INT_STATUS_1, align 4
  %157 = call i32 @hdmi_read_reg(i32 %155, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = call i32 @FLD_MOD(i32 0, i32 5, i32 2, i32 0)
  store i32 %158, i32* %7, align 4
  %159 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %160 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @HDMI_CEC_INT_STATUS_1, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @hdmi_write_reg(i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %144, %84
  store i32 0, i32* %3, align 4
  br label %177

166:                                              ; preds = %77, %66
  %167 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %168 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @HDMI_WP_CLK, align 4
  %173 = call i32 @REG_FLD_MOD(i32 %171, i32 %172, i32 0, i32 5, i32 0)
  %174 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %6, align 8
  %175 = call i32 @hdmi4_core_disable(%struct.hdmi_core_data* %174)
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %166, %165, %53, %13
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.hdmi_core_data* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_wp_clear_irqenable(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @hdmi_wp_set_irqstatus(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @hdmi4_core_disable(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi4_core_enable(%struct.hdmi_core_data*) #1

declare dso_local i32 @hdmi_cec_clear_tx_fifo(%struct.cec_adapter*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @hdmi_cec_clear_rx_fifo(%struct.cec_adapter*) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @hdmi_wp_set_irqenable(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
