; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_yuv_planar_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_yuv_planar_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32 }

@IPU_FIELD_SLUV = common dso_local global i32 0, align 4
@IPU_FIELD_UBO = common dso_local global i32 0, align 4
@IPU_FIELD_VBO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_cpmem_set_yuv_planar_full(%struct.ipuv3_channel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipuv3_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = and i32 %9, 7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 7
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %12, %4
  %17 = phi i1 [ true, %4 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %5, align 8
  %21 = load i32, i32* @IPU_FIELD_SLUV, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 %22, 1
  %24 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %20, i32 %21, i32 %23)
  %25 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %5, align 8
  %26 = load i32, i32* @IPU_FIELD_UBO, align 4
  %27 = load i32, i32* %7, align 4
  %28 = udiv i32 %27, 8
  %29 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %25, i32 %26, i32 %28)
  %30 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %5, align 8
  %31 = load i32, i32* @IPU_FIELD_VBO, align 4
  %32 = load i32, i32* %8, align 4
  %33 = udiv i32 %32, 8
  %34 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %30, i32 %31, i32 %33)
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
