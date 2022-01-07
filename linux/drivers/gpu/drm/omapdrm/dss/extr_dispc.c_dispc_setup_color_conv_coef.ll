; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_setup_color_conv_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_setup_color_conv_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csc_coef_yuv2rgb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csc_coef_rgb2yuv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@__const.dispc_setup_color_conv_coef.coefs_yuv2rgb_bt601_lim = private unnamed_addr constant %struct.csc_coef_yuv2rgb { i32 298, i32 0, i32 409, i32 298, i32 -100, i32 -208, i32 298, i32 516, i32 0, i32 0 }, align 4
@__const.dispc_setup_color_conv_coef.coefs_rgb2yuv_bt601_lim = private unnamed_addr constant %struct.csc_coef_rgb2yuv { i32 66, i32 129, i32 25, i32 -38, i32 -74, i32 112, i32 112, i32 -94, i32 -18, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*)* @dispc_setup_color_conv_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_setup_color_conv_coef(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.csc_coef_yuv2rgb, align 4
  %6 = alloca %struct.csc_coef_rgb2yuv, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %7 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %8 = call i32 @dispc_get_num_ovls(%struct.dispc_device* %7)
  store i32 %8, i32* %4, align 4
  %9 = bitcast %struct.csc_coef_yuv2rgb* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.csc_coef_yuv2rgb* @__const.dispc_setup_color_conv_coef.coefs_yuv2rgb_bt601_lim to i8*), i64 40, i1 false)
  %10 = bitcast %struct.csc_coef_rgb2yuv* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.csc_coef_rgb2yuv* @__const.dispc_setup_color_conv_coef.coefs_rgb2yuv_bt601_lim to i8*), i64 40, i1 false)
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dispc_ovl_write_color_conv_coef(%struct.dispc_device* %16, i32 %17, %struct.csc_coef_yuv2rgb* %5)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %24 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %31 = call i32 @dispc_wb_write_color_conv_coef(%struct.dispc_device* %30, %struct.csc_coef_rgb2yuv* %6)
  br label %32

32:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @dispc_get_num_ovls(%struct.dispc_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dispc_ovl_write_color_conv_coef(%struct.dispc_device*, i32, %struct.csc_coef_yuv2rgb*) #1

declare dso_local i32 @dispc_wb_write_color_conv_coef(%struct.dispc_device*, %struct.csc_coef_rgb2yuv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
