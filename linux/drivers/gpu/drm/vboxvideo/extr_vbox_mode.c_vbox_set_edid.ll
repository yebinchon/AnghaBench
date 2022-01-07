; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_set_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_vbox_set_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }

@__const.vbox_set_edid.edid = private unnamed_addr constant [128 x i8] c"\00\FF\FF\FF\FF\FF\FF\00XX\00\00\00\00\00\00\01\00\01\03\80\00\00x\EE\EE\91\A3TL\99&\0FPT\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\06\00\00\06\00\02\02\02\02\00\00\00\00\00\00\00\00\00\FD\00\00\C8\00\C8d\00\0A      \00\00\00\FC\00VBOX monitor\0A\00\00\00\10\00\0A            \00\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32, i32)* @vbox_set_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbox_set_edid(%struct.drm_connector* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = bitcast [128 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([128 x i8], [128 x i8]* @__const.vbox_set_edid.edid, i32 0, i32 0), i64 128, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 6
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 6
  %16 = mul nsw i32 %13, %15
  %17 = mul nsw i32 %16, 60
  %18 = sdiv i32 %17, 10000
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 12
  store i8 %21, i8* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 13
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 14
  store i8 %29, i8* %30, align 2
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 8
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 15
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 54
  store i8 %37, i8* %38, align 2
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 55
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 56
  store i8 %45, i8* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 4
  %49 = and i32 %48, 240
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 58
  store i8 %50, i8* %51, align 2
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 59
  store i8 %54, i8* %55, align 1
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 4
  %58 = and i32 %57, 240
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 61
  store i8 %59, i8* %60, align 1
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %72, %3
  %62 = load i32, i32* %9, align 4
  %63 = icmp ult i32 %62, 127
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 255
  %78 = sub i32 256, %77
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 127
  store i8 %80, i8* %81, align 1
  %82 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %84 = bitcast i8* %83 to %struct.edid*
  %85 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %82, %struct.edid* %84)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
