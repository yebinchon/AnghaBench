; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_separate_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_separate_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32, %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }

@IPU_FIELD_ALU = common dso_local global i32 0, align 4
@IPU_FIELD_ALBM = common dso_local global i32 0, align 4
@IPU_FIELD_CRE = common dso_local global i32 0, align 4
@IDMAC_SEP_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipuv3_channel*)* @ipu_cpmem_set_separate_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_cpmem_set_separate_alpha(%struct.ipuv3_channel* %0) #0 {
  %2 = alloca %struct.ipuv3_channel*, align 8
  %3 = alloca %struct.ipu_soc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %2, align 8
  %6 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %7 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %6, i32 0, i32 1
  %8 = load %struct.ipu_soc*, %struct.ipu_soc** %7, align 8
  store %struct.ipu_soc* %8, %struct.ipu_soc** %3, align 8
  %9 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %10 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ipu_channel_albm(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %18 = load i32, i32* @IPU_FIELD_ALU, align 4
  %19 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %17, i32 %18, i32 1)
  %20 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %21 = load i32, i32* @IPU_FIELD_ALBM, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %20, i32 %21, i32 %22)
  %24 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %25 = load i32, i32* @IPU_FIELD_CRE, align 4
  %26 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %24, i32 %25, i32 1)
  %27 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %28 = load i32, i32* @IDMAC_SEP_ALPHA, align 4
  %29 = call i32 @ipu_idmac_read(%struct.ipu_soc* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %31 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @BIT(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IDMAC_SEP_ALPHA, align 4
  %39 = call i32 @ipu_idmac_write(%struct.ipu_soc* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @ipu_channel_albm(i32) #1

declare dso_local i32 @ipu_ch_param_write_field(%struct.ipuv3_channel*, i32, i32) #1

declare dso_local i32 @ipu_idmac_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ipu_idmac_write(%struct.ipu_soc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
