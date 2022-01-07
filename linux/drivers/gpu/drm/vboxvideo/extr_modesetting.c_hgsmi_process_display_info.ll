; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_modesetting.c_hgsmi_process_display_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_modesetting.c_hgsmi_process_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.vbva_infoscreen = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_INFO_SCREEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hgsmi_process_display_info(%struct.gen_pool* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca %struct.gen_pool*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.vbva_infoscreen*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %22 = load %struct.gen_pool*, %struct.gen_pool** %11, align 8
  %23 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %24 = load i32, i32* @VBVA_INFO_SCREEN, align 4
  %25 = call %struct.vbva_infoscreen* @hgsmi_buffer_alloc(%struct.gen_pool* %22, i32 72, i32 %23, i32 %24)
  store %struct.vbva_infoscreen* %25, %struct.vbva_infoscreen** %21, align 8
  %26 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %27 = icmp ne %struct.vbva_infoscreen* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  br label %63

29:                                               ; preds = %10
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %32 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %35 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %38 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %41 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %44 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %47 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %50 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %53 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %20, align 8
  %55 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %56 = getelementptr inbounds %struct.vbva_infoscreen, %struct.vbva_infoscreen* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.gen_pool*, %struct.gen_pool** %11, align 8
  %58 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %59 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %57, %struct.vbva_infoscreen* %58)
  %60 = load %struct.gen_pool*, %struct.gen_pool** %11, align 8
  %61 = load %struct.vbva_infoscreen*, %struct.vbva_infoscreen** %21, align 8
  %62 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %60, %struct.vbva_infoscreen* %61)
  br label %63

63:                                               ; preds = %29, %28
  ret void
}

declare dso_local %struct.vbva_infoscreen* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_infoscreen*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_infoscreen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
