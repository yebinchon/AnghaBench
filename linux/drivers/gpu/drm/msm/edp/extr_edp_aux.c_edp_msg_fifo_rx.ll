; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_aux.c_edp_msg_fifo_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_aux.c_edp_msg_fifo_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_aux = type { i64 }
%struct.drm_dp_aux_msg = type { i32, i64* }

@REG_EDP_AUX_DATA = common dso_local global i64 0, align 8
@EDP_AUX_DATA_INDEX_WRITE = common dso_local global i32 0, align 4
@EDP_AUX_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edp_aux*, %struct.drm_dp_aux_msg*)* @edp_msg_fifo_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edp_msg_fifo_rx(%struct.edp_aux* %0, %struct.drm_dp_aux_msg* %1) #0 {
  %3 = alloca %struct.edp_aux*, align 8
  %4 = alloca %struct.drm_dp_aux_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.edp_aux* %0, %struct.edp_aux** %3, align 8
  store %struct.drm_dp_aux_msg* %1, %struct.drm_dp_aux_msg** %4, align 8
  %9 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %4, align 8
  %10 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.edp_aux*, %struct.edp_aux** %3, align 8
  %13 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_EDP_AUX_DATA, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* @EDP_AUX_DATA_INDEX_WRITE, align 4
  %18 = load i32, i32* @EDP_AUX_DATA_READ, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @edp_write(i64 %16, i32 %19)
  %21 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %4, align 8
  %22 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %6, align 8
  %24 = load %struct.edp_aux*, %struct.edp_aux** %3, align 8
  %25 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG_EDP_AUX_DATA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @edp_read(i64 %28)
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %49, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load %struct.edp_aux*, %struct.edp_aux** %3, align 8
  %36 = getelementptr inbounds %struct.edp_aux, %struct.edp_aux* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_EDP_AUX_DATA, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @edp_read(i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %30

52:                                               ; preds = %30
  ret i32 0
}

declare dso_local i32 @edp_write(i64, i32) #1

declare dso_local i32 @edp_read(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
