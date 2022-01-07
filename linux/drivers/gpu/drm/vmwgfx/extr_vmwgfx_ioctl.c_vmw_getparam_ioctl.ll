; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ioctl.c_vmw_getparam_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ioctl.c_vmw_getparam_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.vmw_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vmw_fifo_state, i32* }
%struct.vmw_fifo_state = type { i32 }
%struct.drm_vmw_getparam_arg = type { i32, i32 }
%struct.vmw_fpriv = type { i32 }

@SVGA_CAP_GBOBJECTS = common dso_local global i32 0, align 4
@SVGA3D_HWVERSION_WS8_B1 = common dso_local global i32 0, align 4
@SVGA_FIFO_CAP_3D_HWVERSION_REVISED = common dso_local global i32 0, align 4
@SVGA_FIFO_3D_HWVERSION_REVISED = common dso_local global i32 0, align 4
@SVGA_FIFO_3D_HWVERSION = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SVGA3D_DEVCAP_MAX = common dso_local global i32 0, align 4
@SVGA_FIFO_3D_CAPS_LAST = common dso_local global i64 0, align 8
@SVGA_FIFO_3D_CAPS = common dso_local global i64 0, align 8
@vmw_du_screen_target = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_getparam_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca %struct.drm_vmw_getparam_arg*, align 8
  %10 = alloca %struct.vmw_fpriv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vmw_fifo_state*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %13)
  store %struct.vmw_private* %14, %struct.vmw_private** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_vmw_getparam_arg*
  store %struct.drm_vmw_getparam_arg* %16, %struct.drm_vmw_getparam_arg** %9, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = call %struct.vmw_fpriv* @vmw_fpriv(%struct.drm_file* %17)
  store %struct.vmw_fpriv* %18, %struct.vmw_fpriv** %10, align 8
  %19 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %20 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %205 [
    i32 130, label %22
    i32 131, label %27
    i32 142, label %32
    i32 137, label %40
    i32 136, label %46
    i32 139, label %52
    i32 135, label %59
    i32 138, label %65
    i32 132, label %100
    i32 141, label %128
    i32 134, label %168
    i32 133, label %178
    i32 129, label %184
    i32 140, label %193
    i32 128, label %199
  ]

22:                                               ; preds = %3
  %23 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %24 = call i32 @vmw_overlay_num_overlays(%struct.vmw_private* %23)
  %25 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %26 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %208

27:                                               ; preds = %3
  %28 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %29 = call i32 @vmw_overlay_num_free_overlays(%struct.vmw_private* %28)
  %30 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %31 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %208

32:                                               ; preds = %3
  %33 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %34 = call i32 @vmw_fifo_have_3d(%struct.vmw_private* %33)
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %39 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %208

40:                                               ; preds = %3
  %41 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %42 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %45 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %208

46:                                               ; preds = %3
  %47 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %48 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %51 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %208

52:                                               ; preds = %3
  %53 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %54 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %58 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %208

59:                                               ; preds = %3
  %60 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %61 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %64 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %208

65:                                               ; preds = %3
  %66 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %67 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %66, i32 0, i32 10
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %11, align 8
  %69 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %70 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %69, i32 0, i32 9
  store %struct.vmw_fifo_state* %70, %struct.vmw_fifo_state** %12, align 8
  %71 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %72 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SVGA_CAP_GBOBJECTS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i32, i32* @SVGA3D_HWVERSION_WS8_B1, align 4
  %79 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %80 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %208

81:                                               ; preds = %65
  %82 = load i32*, i32** %11, align 8
  %83 = load %struct.vmw_fifo_state*, %struct.vmw_fifo_state** %12, align 8
  %84 = getelementptr inbounds %struct.vmw_fifo_state, %struct.vmw_fifo_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SVGA_FIFO_CAP_3D_HWVERSION_REVISED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @SVGA_FIFO_3D_HWVERSION_REVISED, align 4
  br label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @SVGA_FIFO_3D_HWVERSION, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %82, i64 %95
  %97 = call i32 @vmw_mmio_read(i32* %96)
  %98 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %99 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %208

100:                                              ; preds = %3
  %101 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %102 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SVGA_CAP_GBOBJECTS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.vmw_fpriv*, %struct.vmw_fpriv** %10, align 8
  %109 = getelementptr inbounds %struct.vmw_fpriv, %struct.vmw_fpriv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %114 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sdiv i32 %117, 2
  %119 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %120 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %127

121:                                              ; preds = %107, %100
  %122 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %123 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %126 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %121, %112
  br label %208

128:                                              ; preds = %3
  %129 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %130 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SVGA_CAP_GBOBJECTS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load %struct.vmw_fpriv*, %struct.vmw_fpriv** %10, align 8
  %137 = getelementptr inbounds %struct.vmw_fpriv, %struct.vmw_fpriv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* @SVGA3D_DEVCAP_MAX, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %146 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %167

147:                                              ; preds = %135, %128
  %148 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %149 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SVGA_CAP_GBOBJECTS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %156 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %155, i32 0, i32 1
  store i32 8, i32* %156, align 4
  br label %166

157:                                              ; preds = %147
  %158 = load i64, i64* @SVGA_FIFO_3D_CAPS_LAST, align 8
  %159 = load i64, i64* @SVGA_FIFO_3D_CAPS, align 8
  %160 = sub nsw i64 %158, %159
  %161 = add nsw i64 %160, 1
  %162 = mul i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %165 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %157, %154
  br label %167

167:                                              ; preds = %166, %140
  br label %208

168:                                              ; preds = %3
  %169 = load %struct.vmw_fpriv*, %struct.vmw_fpriv** %10, align 8
  %170 = getelementptr inbounds %struct.vmw_fpriv, %struct.vmw_fpriv* %169, i32 0, i32 0
  store i32 1, i32* %170, align 4
  %171 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %172 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @PAGE_SIZE, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %177 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %208

178:                                              ; preds = %3
  %179 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %180 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %183 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  br label %208

184:                                              ; preds = %3
  %185 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %186 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @vmw_du_screen_target, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %192 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  br label %208

193:                                              ; preds = %3
  %194 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %195 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %198 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %208

199:                                              ; preds = %3
  %200 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %201 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.drm_vmw_getparam_arg*, %struct.drm_vmw_getparam_arg** %9, align 8
  %204 = getelementptr inbounds %struct.drm_vmw_getparam_arg, %struct.drm_vmw_getparam_arg* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %208

205:                                              ; preds = %3
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %4, align 4
  br label %209

208:                                              ; preds = %199, %193, %184, %178, %168, %167, %127, %93, %77, %59, %52, %46, %40, %32, %27, %22
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

declare dso_local %struct.vmw_fpriv* @vmw_fpriv(%struct.drm_file*) #1

declare dso_local i32 @vmw_overlay_num_overlays(%struct.vmw_private*) #1

declare dso_local i32 @vmw_overlay_num_free_overlays(%struct.vmw_private*) #1

declare dso_local i32 @vmw_fifo_have_3d(%struct.vmw_private*) #1

declare dso_local i32 @vmw_mmio_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
