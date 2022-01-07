; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fb.c_vmw_fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64, i32, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.vmw_fb_par* }
%struct.vmw_fb_par = type { i64, i64, %struct.vmw_private* }
%struct.vmw_private = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Bad bpp %u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Bad depth %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Requested geom can not fit in framebuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @vmw_fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_fb_par*, align 8
  %8 = alloca %struct.vmw_private*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %13, align 8
  store %struct.vmw_fb_par* %14, %struct.vmw_fb_par** %7, align 8
  %15 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %7, align 8
  %16 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %15, i32 0, i32 2
  %17 = load %struct.vmw_private*, %struct.vmw_private** %16, align 8
  store %struct.vmw_private* %17, %struct.vmw_private** %8, align 8
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %29 [
    i32 32, label %21
  ]

21:                                               ; preds = %2
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 32, i32 24
  store i32 %28, i32* %6, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %146

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %88 [
    i32 24, label %38
    i32 32, label %63
  ]

38:                                               ; preds = %36
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 16, i32* %41, align 8
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 8, i32* %44, align 8
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 8, i32* %50, align 4
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 8, i32* %53, align 4
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 8, i32* %56, align 8
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %93

63:                                               ; preds = %36
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 16, i32* %66, align 8
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 8, i32* %69, align 8
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 8, i32* %75, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 8, i32* %78, align 4
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 8, i32* %81, align 8
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 8, i32* %84, align 8
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 24, i32* %87, align 4
  br label %93

88:                                               ; preds = %36
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %146

93:                                               ; preds = %63, %38
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %96, %100
  %102 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %7, align 8
  %103 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %118, label %106

106:                                              ; preds = %93
  %107 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %108 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.vmw_fb_par*, %struct.vmw_fb_par** %7, align 8
  %115 = getelementptr inbounds %struct.vmw_fb_par, %struct.vmw_fb_par* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %106, %93
  %119 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %146

122:                                              ; preds = %106
  %123 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = sdiv i32 %130, 8
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = call i32 @vmw_kms_validate_mode_vram(%struct.vmw_private* %123, i32 %131, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %122
  %142 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %141, %118, %88, %29
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @vmw_kms_validate_mode_vram(%struct.vmw_private*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
