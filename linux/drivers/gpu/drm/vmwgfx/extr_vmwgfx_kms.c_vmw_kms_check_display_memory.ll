; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_check_display_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_check_display_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_rect = type { i64, i32, i32 }
%struct.vmw_private = type { i64, i64, i64, i32, i32 }

@vmw_du_screen_target = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Screen size not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Combined output size too large.\0A\00", align 1
@SVGA_CAP_NO_BB_RESTRICTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Topology is beyond supported limits.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.drm_rect*)* @vmw_kms_check_display_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_kms_check_display_memory(%struct.drm_device* %0, i32 %1, %struct.drm_rect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_rect*, align 8
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca %struct.drm_rect, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_rect* %2, %struct.drm_rect** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %14)
  store %struct.vmw_private* %15, %struct.vmw_private** %8, align 8
  %16 = bitcast %struct.drm_rect* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %103, %3
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %106

21:                                               ; preds = %17
  %22 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %23 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @vmw_du_screen_target, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i64 %30
  %32 = call i64 @drm_rect_width(%struct.drm_rect* %31)
  %33 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %34 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %27
  %38 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %38, i64 %40
  %42 = call i64 @drm_rect_height(%struct.drm_rect* %41)
  %43 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %44 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37, %27
  %48 = call i32 @VMW_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %150

51:                                               ; preds = %37, %21
  %52 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %52, i64 %54
  %56 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %62, i64 %64
  %66 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %61, %51
  %70 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %70, i64 %72
  %74 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %80, i64 %82
  %84 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  br label %87

87:                                               ; preds = %79, %69
  %88 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %88, i64 %90
  %92 = call i64 @drm_rect_width(%struct.drm_rect* %91)
  %93 = trunc i64 %92 to i32
  %94 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %94, i64 %96
  %98 = call i64 @drm_rect_height(%struct.drm_rect* %97)
  %99 = trunc i64 %98 to i32
  %100 = mul nsw i32 %93, %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %17

106:                                              ; preds = %17
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 %107, 4
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %111 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = call i32 @VMW_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %150

118:                                              ; preds = %106
  %119 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %120 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @vmw_du_screen_target, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %118
  %125 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %126 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SVGA_CAP_NO_BB_RESTRICTION, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %149, label %131

131:                                              ; preds = %124, %118
  %132 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %9, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %134, %136
  %138 = mul nsw i32 %137, 4
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %141 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp sgt i32 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %131
  %145 = call i32 @VMW_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %150

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %124
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %144, %114, %47
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i64 @drm_rect_height(%struct.drm_rect*) #1

declare dso_local i32 @VMW_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
