; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32 }

@IPU_FIELD_EBA1 = common dso_local global i32 0, align 4
@IPU_FIELD_EBA0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_cpmem_set_buffer(%struct.ipuv3_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipuv3_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 7
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %14 = load i32, i32* @IPU_FIELD_EBA1, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 3
  %17 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %13, i32 %14, i32 %16)
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %20 = load i32, i32* @IPU_FIELD_EBA0, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 3
  %23 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %19, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ipu_ch_param_write_field(%struct.ipuv3_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
