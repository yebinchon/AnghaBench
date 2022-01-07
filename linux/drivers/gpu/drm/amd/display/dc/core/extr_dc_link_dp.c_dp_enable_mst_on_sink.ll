; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_enable_mst_on_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_enable_mst_on_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }

@DP_MSTM_CTRL = common dso_local global i32 0, align 4
@DP_MST_EN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_enable_mst_on_sink(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %7 = load i32, i32* @DP_MSTM_CTRL, align 4
  %8 = call i32 @core_link_read_dpcd(%struct.dc_link* %6, i32 %7, i8* %5, i32 1)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i8, i8* @DP_MST_EN, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  br label %26

18:                                               ; preds = %2
  %19 = load i8, i8* @DP_MST_EN, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %5, align 1
  br label %26

26:                                               ; preds = %18, %11
  %27 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %28 = load i32, i32* @DP_MSTM_CTRL, align 4
  %29 = call i32 @core_link_write_dpcd(%struct.dc_link* %27, i32 %28, i8* %5, i32 1)
  ret void
}

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i8*, i32) #1

declare dso_local i32 @core_link_write_dpcd(%struct.dc_link*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
