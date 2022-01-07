; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_idmac_unlink(%struct.ipuv3_channel* %0, %struct.ipuv3_channel* %1) #0 {
  %3 = alloca %struct.ipuv3_channel*, align 8
  %4 = alloca %struct.ipuv3_channel*, align 8
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %3, align 8
  store %struct.ipuv3_channel* %1, %struct.ipuv3_channel** %4, align 8
  %5 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %6 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %12 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ipu_fsu_unlink(i32 %7, i32 %10, i32 %13)
  ret i32 %14
}

declare dso_local i32 @ipu_fsu_unlink(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
