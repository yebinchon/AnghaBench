; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_master_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.rcar_i2c_priv = type { i64, i32, i32, i64, i32, %struct.i2c_msg*, i32 }
%struct.device = type { i32 }

@I2C_RCAR_GEN3 = common dso_local global i64 0, align 8
@ID_P_NO_RXDMA = common dso_local global i32 0, align 4
@ID_P_MASK = common dso_local global i32 0, align 4
@ID_FIRST_MSG = common dso_local global i32 0, align 4
@ID_DONE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@ID_NACK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ID_ARBLOST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"error %d : %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @rcar_i2c_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_i2c_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rcar_i2c_priv*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %13 = call %struct.rcar_i2c_priv* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.rcar_i2c_priv* %13, %struct.rcar_i2c_priv** %7, align 8
  %14 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %15 = call %struct.device* @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv* %14)
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call i32 @pm_runtime_get_sync(%struct.device* %16)
  %18 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %19 = call i32 @rcar_i2c_bus_barrier(%struct.rcar_i2c_priv* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %148

23:                                               ; preds = %3
  %24 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %25 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @I2C_RCAR_GEN3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load i32, i32* @ID_P_NO_RXDMA, align 4
  %31 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %32 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %36 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @IS_ERR(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %29
  %41 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %42 = call i32 @rcar_i2c_do_reset(%struct.rcar_i2c_priv* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @ID_P_NO_RXDMA, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %49 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %40
  br label %53

53:                                               ; preds = %52, %29
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %56 = call i32 @rcar_i2c_init(%struct.rcar_i2c_priv* %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %68, %54
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 %65
  %67 = call i32 @rcar_i2c_request_dma(%struct.rcar_i2c_priv* %62, %struct.i2c_msg* %66)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %73 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %74 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %73, i32 0, i32 5
  store %struct.i2c_msg* %72, %struct.i2c_msg** %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %77 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %79 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ID_P_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @ID_FIRST_MSG, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %86 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %88 = call i32 @rcar_i2c_prepare_msg(%struct.rcar_i2c_priv* %87)
  %89 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %90 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %93 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ID_DONE, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = call i64 @wait_event_timeout(i32 %91, i32 %96, i32 %101)
  store i64 %102, i64* %11, align 8
  %103 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %104 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DMA_NONE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %71
  %109 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %110 = call i32 @rcar_i2c_cleanup_dma(%struct.rcar_i2c_priv* %109)
  br label %111

111:                                              ; preds = %108, %71
  %112 = load i64, i64* %11, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %116 = call i32 @rcar_i2c_init(%struct.rcar_i2c_priv* %115)
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %147

119:                                              ; preds = %111
  %120 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %121 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ID_NACK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* @ENXIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %146

129:                                              ; preds = %119
  %130 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %131 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ID_ARBLOST, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load i32, i32* @EAGAIN, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %10, align 4
  br label %145

139:                                              ; preds = %129
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %142 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %140, %143
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %139, %136
  br label %146

146:                                              ; preds = %145, %126
  br label %147

147:                                              ; preds = %146, %114
  br label %148

148:                                              ; preds = %147, %22
  %149 = load %struct.device*, %struct.device** %8, align 8
  %150 = call i32 @pm_runtime_put(%struct.device* %149)
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @ENXIO, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.device*, %struct.device** %8, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %7, align 8
  %162 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @dev_err(%struct.device* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %158, %153, %148
  %166 = load i32, i32* %10, align 4
  ret i32 %166
}

declare dso_local %struct.rcar_i2c_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local %struct.device* @rcar_i2c_priv_to_dev(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @rcar_i2c_bus_barrier(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @rcar_i2c_do_reset(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @rcar_i2c_init(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @rcar_i2c_request_dma(%struct.rcar_i2c_priv*, %struct.i2c_msg*) #1

declare dso_local i32 @rcar_i2c_prepare_msg(%struct.rcar_i2c_priv*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @rcar_i2c_cleanup_dma(%struct.rcar_i2c_priv*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
