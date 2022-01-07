; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_do_modeset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_do_modeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { %struct.vbox_private* }
%struct.vbox_private = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.vbox_crtc = type { i32, i32, i32, i32, i32, i32, i64, i32, i64 }

@VBE_DISPI_INDEX_XRES = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_YRES = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_VIRT_WIDTH = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_BPP = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_ENABLE = common dso_local global i32 0, align 4
@VBE_DISPI_ENABLED = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_X_OFFSET = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_Y_OFFSET = common dso_local global i32 0, align 4
@VBVA_SCREEN_F_ACTIVE = common dso_local global i32 0, align 4
@VBVA_SCREEN_F_BLANK = common dso_local global i32 0, align 4
@VBVA_SCREEN_F_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @vbox_do_modeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbox_do_modeset(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca %struct.vbox_crtc*, align 8
  %5 = alloca %struct.vbox_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %18, align 8
  store %struct.drm_framebuffer* %19, %struct.drm_framebuffer** %3, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %21 = call %struct.vbox_crtc* @to_vbox_crtc(%struct.drm_crtc* %20)
  store %struct.vbox_crtc* %21, %struct.vbox_crtc** %4, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.vbox_private*, %struct.vbox_private** %25, align 8
  store %struct.vbox_private* %26, %struct.vbox_private** %5, align 8
  %27 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %28 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %33 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %36

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 640, %35 ]
  store i32 %37, i32* %6, align 4
  %38 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %39 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %44 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %47

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 480, %46 ]
  store i32 %48, i32* %7, align 4
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %50 = icmp ne %struct.drm_framebuffer* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 8
  br label %61

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %51
  %62 = phi i32 [ %59, %51 ], [ 32, %60 ]
  store i32 %62, i32* %8, align 4
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %64 = icmp ne %struct.drm_framebuffer* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %67 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  br label %76

71:                                               ; preds = %61
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sdiv i32 %74, 8
  br label %76

76:                                               ; preds = %71, %65
  %77 = phi i32 [ %70, %65 ], [ %75, %71 ]
  store i32 %77, i32* %9, align 4
  %78 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %79 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %84 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  br label %90

86:                                               ; preds = %76
  %87 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %88 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32 [ %85, %82 ], [ %89, %86 ]
  store i32 %91, i32* %11, align 4
  %92 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %93 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %98 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  br label %104

100:                                              ; preds = %90
  %101 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %102 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %99, %96 ], [ %103, %100 ]
  store i32 %105, i32* %12, align 4
  %106 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %107 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %176

110:                                              ; preds = %104
  %111 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %112 = icmp ne %struct.drm_framebuffer* %111, null
  br i1 %112, label %113, label %176

113:                                              ; preds = %110
  %114 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %115 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sdiv i32 %116, %117
  %119 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %120 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 65535, %121
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %176

124:                                              ; preds = %113
  %125 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %126 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sdiv i32 %128, 8
  %130 = srem i32 %127, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %176

132:                                              ; preds = %124
  %133 = load i32, i32* @VBE_DISPI_INDEX_XRES, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @vbox_write_ioport(i32 %133, i32 %134)
  %136 = load i32, i32* @VBE_DISPI_INDEX_YRES, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @vbox_write_ioport(i32 %136, i32 %137)
  %139 = load i32, i32* @VBE_DISPI_INDEX_VIRT_WIDTH, align 4
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 %140, 8
  %142 = load i32, i32* %8, align 4
  %143 = sdiv i32 %141, %142
  %144 = call i32 @vbox_write_ioport(i32 %139, i32 %143)
  %145 = load i32, i32* @VBE_DISPI_INDEX_BPP, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @vbox_write_ioport(i32 %145, i32 %146)
  %148 = load i32, i32* @VBE_DISPI_INDEX_ENABLE, align 4
  %149 = load i32, i32* @VBE_DISPI_ENABLED, align 4
  %150 = call i32 @vbox_write_ioport(i32 %148, i32 %149)
  %151 = load i32, i32* @VBE_DISPI_INDEX_X_OFFSET, align 4
  %152 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %153 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = srem i32 %154, %155
  %157 = load i32, i32* %8, align 4
  %158 = sdiv i32 %156, %157
  %159 = mul nsw i32 %158, 8
  %160 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %161 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %159, %162
  %164 = call i32 @vbox_write_ioport(i32 %151, i32 %163)
  %165 = load i32, i32* @VBE_DISPI_INDEX_Y_OFFSET, align 4
  %166 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %167 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sdiv i32 %168, %169
  %171 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %172 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %170, %173
  %175 = call i32 @vbox_write_ioport(i32 %165, i32 %174)
  br label %176

176:                                              ; preds = %132, %124, %113, %110, %104
  %177 = load i32, i32* @VBVA_SCREEN_F_ACTIVE, align 4
  store i32 %177, i32* %10, align 4
  %178 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %179 = icmp ne %struct.drm_framebuffer* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %182 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %181, i32 0, i32 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %190

188:                                              ; preds = %180, %176
  %189 = load i32, i32* @VBVA_SCREEN_F_BLANK, align 4
  br label %190

190:                                              ; preds = %188, %187
  %191 = phi i32 [ 0, %187 ], [ %189, %188 ]
  %192 = load i32, i32* %10, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %10, align 4
  %194 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %195 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %194, i32 0, i32 8
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* @VBVA_SCREEN_F_DISABLED, align 4
  br label %201

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i32 [ %199, %198 ], [ 0, %200 ]
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %10, align 4
  %205 = load %struct.vbox_private*, %struct.vbox_private** %5, align 8
  %206 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %209 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %214 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = mul nsw i32 %215, %216
  %218 = sdiv i32 %217, 8
  %219 = load %struct.vbox_crtc*, %struct.vbox_crtc** %4, align 8
  %220 = getelementptr inbounds %struct.vbox_crtc, %struct.vbox_crtc* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %218, %223
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @hgsmi_process_display_info(i32 %207, i64 %210, i32 %211, i32 %212, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229)
  ret void
}

declare dso_local %struct.vbox_crtc* @to_vbox_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @vbox_write_ioport(i32, i32) #1

declare dso_local i32 @hgsmi_process_display_info(i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
