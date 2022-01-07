; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_kms_framebuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_kms_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.vmw_fb_par* }
%struct.fb_var_screeninfo = type { i32, i64, i32 }
%struct.vmw_fb_par = type { i64, %struct.drm_framebuffer*, i32, i32 }
%struct.drm_framebuffer = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.drm_mode_fb_cmd2 = type { i32, i64, i32*, i64 }
%struct.vmw_framebuffer = type { %struct.drm_framebuffer }

@.str = private unnamed_addr constant [44 x i8] c"Failed creating a buffer object for fbdev.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @vmw_fb_kms_framebuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fb_kms_framebuffer(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.drm_mode_fb_cmd2, align 8
  %5 = alloca %struct.vmw_fb_par*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.vmw_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 1
  %14 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %13, align 8
  store %struct.vmw_fb_par* %14, %struct.vmw_fb_par** %5, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  store %struct.fb_var_screeninfo* %16, %struct.fb_var_screeninfo** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %18 = call i32 @vmw_fb_compute_depth(%struct.fb_var_screeninfo* %17, i32* %10)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %2, align 4
  br label %160

23:                                               ; preds = %1
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 7
  %36 = sdiv i32 %35, 8
  %37 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %36, %38
  %40 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @drm_mode_legacy_fb_format(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 3
  store i64 %47, i64* %48, align 8
  %49 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %50 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %49, i32 0, i32 1
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %50, align 8
  store %struct.drm_framebuffer* %51, %struct.drm_framebuffer** %7, align 8
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %53 = icmp ne %struct.drm_framebuffer* %52, null
  br i1 %53, label %54, label %89

54:                                               ; preds = %23
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %56 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %54
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %63 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %61
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %70 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %68
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %79 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %160

89:                                               ; preds = %77, %68, %61, %54, %23
  %90 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %4, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = mul i64 %94, %96
  store i64 %97, i64* %11, align 8
  %98 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %99 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %100 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %89
  %105 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %106 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = mul i64 2, %108
  %110 = icmp ugt i64 %107, %109
  br label %111

111:                                              ; preds = %104, %89
  %112 = phi i1 [ true, %89 ], [ %110, %104 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @vmw_fb_kms_detach(%struct.vmw_fb_par* %98, i32 %113, i32 1)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %2, align 4
  br label %160

119:                                              ; preds = %111
  %120 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %121 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %119
  %125 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %126 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %11, align 8
  %129 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %130 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %129, i32 0, i32 2
  %131 = call i32 @vmw_fb_create_bo(i32 %127, i64 %128, i32* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %2, align 4
  br label %160

137:                                              ; preds = %124
  %138 = load i64, i64* %11, align 8
  %139 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %140 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %119
  %142 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %143 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %146 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.vmw_framebuffer* @vmw_kms_new_framebuffer(i32 %144, i32 %147, i32* null, i32 1, %struct.drm_mode_fb_cmd2* %4)
  store %struct.vmw_framebuffer* %148, %struct.vmw_framebuffer** %8, align 8
  %149 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %8, align 8
  %150 = call i64 @IS_ERR(%struct.vmw_framebuffer* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %141
  %153 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %8, align 8
  %154 = call i32 @PTR_ERR(%struct.vmw_framebuffer* %153)
  store i32 %154, i32* %2, align 4
  br label %160

155:                                              ; preds = %141
  %156 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %8, align 8
  %157 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %156, i32 0, i32 0
  %158 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %5, align 8
  %159 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %158, i32 0, i32 1
  store %struct.drm_framebuffer* %157, %struct.drm_framebuffer** %159, align 8
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %155, %152, %134, %117, %88, %21
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @vmw_fb_compute_depth(%struct.fb_var_screeninfo*, i32*) #1

declare dso_local i64 @drm_mode_legacy_fb_format(i32, i32) #1

declare dso_local i32 @vmw_fb_kms_detach(%struct.vmw_fb_par*, i32, i32) #1

declare dso_local i32 @vmw_fb_create_bo(i32, i64, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.vmw_framebuffer* @vmw_kms_new_framebuffer(i32, i32, i32*, i32, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i64 @IS_ERR(%struct.vmw_framebuffer*) #1

declare dso_local i32 @PTR_ERR(%struct.vmw_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
