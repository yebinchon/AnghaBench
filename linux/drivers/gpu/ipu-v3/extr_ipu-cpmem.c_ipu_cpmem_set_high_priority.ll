; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_high_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_high_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32, %struct.ipu_soc* }
%struct.ipu_soc = type { i64 }

@IPUV3EX = common dso_local global i64 0, align 8
@IPU_FIELD_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_cpmem_set_high_priority(%struct.ipuv3_channel* %0) #0 {
  %2 = alloca %struct.ipuv3_channel*, align 8
  %3 = alloca %struct.ipu_soc*, align 8
  %4 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %2, align 8
  %5 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %5, i32 0, i32 1
  %7 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  store %struct.ipu_soc* %7, %struct.ipu_soc** %3, align 8
  %8 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %9 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPUV3EX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %15 = load i32, i32* @IPU_FIELD_ID, align 4
  %16 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %14, i32 %15, i32 1)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %19 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %20 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @IDMAC_CHA_PRI(i32 %21)
  %23 = call i32 @ipu_idmac_read(%struct.ipu_soc* %18, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %25 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, 32
  %28 = shl i32 1, %27
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %34 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IDMAC_CHA_PRI(i32 %35)
  %37 = call i32 @ipu_idmac_write(%struct.ipu_soc* %31, i32 %32, i32 %36)
  ret void
}

declare dso_local i32 @ipu_ch_param_write_field(%struct.ipuv3_channel*, i32, i32) #1

declare dso_local i32 @ipu_idmac_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @IDMAC_CHA_PRI(i32) #1

declare dso_local i32 @ipu_idmac_write(%struct.ipu_soc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
