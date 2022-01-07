; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_graphics_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_graphics_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { i64, i32, %struct.TYPE_2__*, i32, %struct.ipu_ic_colorspace, %struct.ipu_ic_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ipu_ic_colorspace = type { i32 }
%struct.ipu_ic_priv = type { i32 }
%struct.ipu_ic_csc = type { i32, %struct.ipu_ic_colorspace }

@IC_TASK_ENCODER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IC_CONF = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_601 = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_RGB = common dso_local global i32 0, align 4
@IC_CONF_IC_GLB_LOC_A = common dso_local global i32 0, align 4
@IC_CMBP_1 = common dso_local global i32 0, align 4
@IC_CONF_KEY_COLOR_EN = common dso_local global i32 0, align 4
@IC_CMBP_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_ic_task_graphics_init(%struct.ipu_ic* %0, %struct.ipu_ic_colorspace* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipu_ic*, align 8
  %9 = alloca %struct.ipu_ic_colorspace*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipu_ic_priv*, align 8
  %15 = alloca %struct.ipu_ic_csc, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ipu_ic_csc, align 4
  store %struct.ipu_ic* %0, %struct.ipu_ic** %8, align 8
  store %struct.ipu_ic_colorspace* %1, %struct.ipu_ic_colorspace** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %22 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %21, i32 0, i32 5
  %23 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %22, align 8
  store %struct.ipu_ic_priv* %23, %struct.ipu_ic_priv** %14, align 8
  store i32 0, i32* %19, align 4
  %24 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %25 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IC_TASK_ENCODER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %157

32:                                               ; preds = %6
  %33 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %14, align 8
  %34 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %16, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %38 = load i32, i32* @IC_CONF, align 4
  %39 = call i32 @ipu_ic_read(%struct.ipu_ic* %37, i32 %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %42 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @V4L2_YCBCR_ENC_601, align 4
  %50 = load i32, i32* @V4L2_QUANTIZATION_FULL_RANGE, align 4
  %51 = load i32, i32* @IPUV3_COLORSPACE_RGB, align 4
  %52 = load i32, i32* @V4L2_YCBCR_ENC_601, align 4
  %53 = load i32, i32* @V4L2_QUANTIZATION_FULL_RANGE, align 4
  %54 = load i32, i32* @IPUV3_COLORSPACE_RGB, align 4
  %55 = call i32 @ipu_ic_calc_csc(%struct.ipu_ic_csc* %20, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %151

59:                                               ; preds = %48
  %60 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %61 = call i32 @init_csc(%struct.ipu_ic* %60, %struct.ipu_ic_csc* %20, i32 0)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %151

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %68 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %67, i32 0, i32 4
  %69 = load %struct.ipu_ic_colorspace*, %struct.ipu_ic_colorspace** %9, align 8
  %70 = bitcast %struct.ipu_ic_colorspace* %68 to i8*
  %71 = bitcast %struct.ipu_ic_colorspace* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %15, i32 0, i32 1
  %73 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %74 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %73, i32 0, i32 4
  %75 = bitcast %struct.ipu_ic_colorspace* %72 to i8*
  %76 = bitcast %struct.ipu_ic_colorspace* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 4, i1 false)
  %77 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %78 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.ipu_ic_csc, %struct.ipu_ic_csc* %15, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = call i32 @__ipu_ic_calc_csc(%struct.ipu_ic_csc* %15)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %66
  br label %151

85:                                               ; preds = %66
  %86 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %87 = call i32 @init_csc(%struct.ipu_ic* %86, %struct.ipu_ic_csc* %15, i32 1)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %151

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %91
  %95 = load i32, i32* @IC_CONF_IC_GLB_LOC_A, align 4
  %96 = load i32, i32* %18, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %18, align 4
  %98 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %99 = load i32, i32* @IC_CMBP_1, align 4
  %100 = call i32 @ipu_ic_read(%struct.ipu_ic* %98, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %102 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 255, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %17, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %112 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %110, %115
  %117 = load i32, i32* %17, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %17, align 4
  %119 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @IC_CMBP_1, align 4
  %122 = call i32 @ipu_ic_write(%struct.ipu_ic* %119, i32 %120, i32 %121)
  br label %128

123:                                              ; preds = %91
  %124 = load i32, i32* @IC_CONF_IC_GLB_LOC_A, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %18, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %123, %94
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* @IC_CONF_KEY_COLOR_EN, align 4
  %133 = load i32, i32* %18, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %18, align 4
  %135 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @IC_CMBP_2, align 4
  %138 = call i32 @ipu_ic_write(%struct.ipu_ic* %135, i32 %136, i32 %137)
  br label %144

139:                                              ; preds = %128
  %140 = load i32, i32* @IC_CONF_KEY_COLOR_EN, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %18, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %139, %131
  %145 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* @IC_CONF, align 4
  %148 = call i32 @ipu_ic_write(%struct.ipu_ic* %145, i32 %146, i32 %147)
  %149 = load %struct.ipu_ic*, %struct.ipu_ic** %8, align 8
  %150 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %149, i32 0, i32 1
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %144, %90, %84, %64, %58
  %152 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %14, align 8
  %153 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %152, i32 0, i32 0
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  %156 = load i32, i32* %19, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %151, %29
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_ic_read(%struct.ipu_ic*, i32) #1

declare dso_local i32 @ipu_ic_calc_csc(%struct.ipu_ic_csc*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_csc(%struct.ipu_ic*, %struct.ipu_ic_csc*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__ipu_ic_calc_csc(%struct.ipu_ic_csc*) #1

declare dso_local i32 @ipu_ic_write(%struct.ipu_ic*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
