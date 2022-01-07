; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic-csc.c_calc_csc_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic-csc.c_calc_csc_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic_csc_params = type { i32 }
%struct.ipu_ic_csc = type { %struct.ipu_ic_csc_params, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@IPUV3_COLORSPACE_YUV = common dso_local global i64 0, align 8
@yuv2yuv = common dso_local global %struct.ipu_ic_csc_params** null, align 8
@rgb2rgb = common dso_local global %struct.ipu_ic_csc_params** null, align 8
@yuv2rgb_601 = common dso_local global %struct.ipu_ic_csc_params** null, align 8
@rgb2yuv_601 = common dso_local global %struct.ipu_ic_csc_params** null, align 8
@yuv2rgb_709 = common dso_local global %struct.ipu_ic_csc_params** null, align 8
@rgb2yuv_709 = common dso_local global %struct.ipu_ic_csc_params** null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_ic_csc*)* @calc_csc_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_csc_coeffs(%struct.ipu_ic_csc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_ic_csc*, align 8
  %4 = alloca %struct.ipu_ic_csc_params**, align 8
  %5 = alloca i32, align 4
  store %struct.ipu_ic_csc* %0, %struct.ipu_ic_csc** %3, align 8
  %6 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %7 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @QUANT_MAP(i32 %9)
  %11 = shl i32 %10, 1
  %12 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %13 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @QUANT_MAP(i32 %15)
  %17 = or i32 %11, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %19 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %23 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %1
  %28 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %29 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %28, i32 0, i32 0
  %30 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %31 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPUV3_COLORSPACE_YUV, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.ipu_ic_csc_params**, %struct.ipu_ic_csc_params*** @yuv2yuv, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ipu_ic_csc_params*, %struct.ipu_ic_csc_params** %37, i64 %39
  %41 = load %struct.ipu_ic_csc_params*, %struct.ipu_ic_csc_params** %40, align 8
  %42 = bitcast %struct.ipu_ic_csc_params* %29 to i8*
  %43 = bitcast %struct.ipu_ic_csc_params* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 4, i1 false)
  br label %52

44:                                               ; preds = %27
  %45 = load %struct.ipu_ic_csc_params**, %struct.ipu_ic_csc_params*** @rgb2rgb, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ipu_ic_csc_params*, %struct.ipu_ic_csc_params** %45, i64 %47
  %49 = load %struct.ipu_ic_csc_params*, %struct.ipu_ic_csc_params** %48, align 8
  %50 = bitcast %struct.ipu_ic_csc_params* %29 to i8*
  %51 = bitcast %struct.ipu_ic_csc_params* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 4 %51, i64 4, i1 false)
  br label %52

52:                                               ; preds = %44, %36
  store i32 0, i32* %2, align 4
  br label %97

53:                                               ; preds = %1
  %54 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %55 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %84 [
    i32 129, label %58
    i32 128, label %71
  ]

58:                                               ; preds = %53
  %59 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %60 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IPUV3_COLORSPACE_YUV, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load %struct.ipu_ic_csc_params**, %struct.ipu_ic_csc_params*** @yuv2rgb_601, align 8
  br label %69

67:                                               ; preds = %58
  %68 = load %struct.ipu_ic_csc_params**, %struct.ipu_ic_csc_params*** @rgb2yuv_601, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi %struct.ipu_ic_csc_params** [ %66, %65 ], [ %68, %67 ]
  store %struct.ipu_ic_csc_params** %70, %struct.ipu_ic_csc_params*** %4, align 8
  br label %87

71:                                               ; preds = %53
  %72 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %73 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IPUV3_COLORSPACE_YUV, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load %struct.ipu_ic_csc_params**, %struct.ipu_ic_csc_params*** @yuv2rgb_709, align 8
  br label %82

80:                                               ; preds = %71
  %81 = load %struct.ipu_ic_csc_params**, %struct.ipu_ic_csc_params*** @rgb2yuv_709, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi %struct.ipu_ic_csc_params** [ %79, %78 ], [ %81, %80 ]
  store %struct.ipu_ic_csc_params** %83, %struct.ipu_ic_csc_params*** %4, align 8
  br label %87

84:                                               ; preds = %53
  %85 = load i32, i32* @ENOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %97

87:                                               ; preds = %82, %69
  %88 = load %struct.ipu_ic_csc*, %struct.ipu_ic_csc** %3, align 8
  %89 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %88, i32 0, i32 0
  %90 = load %struct.ipu_ic_csc_params**, %struct.ipu_ic_csc_params*** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ipu_ic_csc_params*, %struct.ipu_ic_csc_params** %90, i64 %92
  %94 = load %struct.ipu_ic_csc_params*, %struct.ipu_ic_csc_params** %93, align 8
  %95 = bitcast %struct.ipu_ic_csc_params* %89 to i8*
  %96 = bitcast %struct.ipu_ic_csc_params* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 4 %96, i64 4, i1 false)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %87, %84, %52
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @QUANT_MAP(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
