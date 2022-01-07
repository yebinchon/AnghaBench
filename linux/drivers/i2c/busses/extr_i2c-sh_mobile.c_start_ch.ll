; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_start_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_start_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, i32, i32, i64, %struct.i2c_msg*, i64 }
%struct.i2c_msg = type { i32 }

@ICCR = common dso_local global i32 0, align 4
@ICCR_SCP = common dso_local global i32 0, align 4
@ICCR_ICE = common dso_local global i32 0, align 4
@ICCL = common dso_local global i32 0, align 4
@ICCH = common dso_local global i32 0, align 4
@ICIC = common dso_local global i32 0, align 4
@ICIC_DTEE = common dso_local global i32 0, align 4
@ICIC_WAITE = common dso_local global i32 0, align 4
@ICIC_ALE = common dso_local global i32 0, align 4
@ICIC_TACKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_i2c_data*, %struct.i2c_msg*, i32)* @start_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_ch(%struct.sh_mobile_i2c_data* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.sh_mobile_i2c_data*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %11 = load i32, i32* @ICCR, align 4
  %12 = load i32, i32* @ICCR_SCP, align 4
  %13 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %10, i32 %11, i32 %12)
  %14 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %15 = load i32, i32* @ICCR, align 4
  %16 = load i32, i32* @ICCR_ICE, align 4
  %17 = load i32, i32* @ICCR_SCP, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %14, i32 %15, i32 %18)
  %20 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %21 = load i32, i32* @ICCL, align 4
  %22 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %23 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 255
  %26 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %20, i32 %21, i32 %25)
  %27 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %28 = load i32, i32* @ICCH, align 4
  %29 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %30 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %27, i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %9, %3
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %36 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %37 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %36, i32 0, i32 4
  store %struct.i2c_msg* %35, %struct.i2c_msg** %37, align 8
  %38 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %39 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 8
  %40 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %41 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %43 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %42, i32 0, i32 4
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %43, align 8
  %45 = call i64 @i2c_get_dma_safe_msg_buf(%struct.i2c_msg* %44, i32 8)
  %46 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %47 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %49 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %54 = call i32 @sh_mobile_i2c_xfer_dma(%struct.sh_mobile_i2c_data* %53)
  br label %55

55:                                               ; preds = %52, %34
  %56 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %57 = load i32, i32* @ICIC, align 4
  %58 = load i32, i32* @ICIC_DTEE, align 4
  %59 = load i32, i32* @ICIC_WAITE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ICIC_ALE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ICIC_TACKE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @iic_wr(%struct.sh_mobile_i2c_data* %56, i32 %57, i32 %64)
  ret void
}

declare dso_local i32 @iic_wr(%struct.sh_mobile_i2c_data*, i32, i32) #1

declare dso_local i64 @i2c_get_dma_safe_msg_buf(%struct.i2c_msg*, i32) #1

declare dso_local i32 @sh_mobile_i2c_xfer_dma(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
