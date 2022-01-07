; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_modesetting.c_hgsmi_update_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_modesetting.c_hgsmi_update_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.vbva_report_input_mapping = type { i8*, i8*, i8*, i8* }

@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_REPORT_INPUT_MAPPING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgsmi_update_input_mapping(%struct.gen_pool* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gen_pool*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vbva_report_input_mapping*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %14 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %15 = load i32, i32* @VBVA_REPORT_INPUT_MAPPING, align 4
  %16 = call %struct.vbva_report_input_mapping* @hgsmi_buffer_alloc(%struct.gen_pool* %13, i32 32, i32 %14, i32 %15)
  store %struct.vbva_report_input_mapping* %16, %struct.vbva_report_input_mapping** %12, align 8
  %17 = load %struct.vbva_report_input_mapping*, %struct.vbva_report_input_mapping** %12, align 8
  %18 = icmp ne %struct.vbva_report_input_mapping* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %41

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.vbva_report_input_mapping*, %struct.vbva_report_input_mapping** %12, align 8
  %25 = getelementptr inbounds %struct.vbva_report_input_mapping, %struct.vbva_report_input_mapping* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.vbva_report_input_mapping*, %struct.vbva_report_input_mapping** %12, align 8
  %28 = getelementptr inbounds %struct.vbva_report_input_mapping, %struct.vbva_report_input_mapping* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.vbva_report_input_mapping*, %struct.vbva_report_input_mapping** %12, align 8
  %31 = getelementptr inbounds %struct.vbva_report_input_mapping, %struct.vbva_report_input_mapping* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.vbva_report_input_mapping*, %struct.vbva_report_input_mapping** %12, align 8
  %34 = getelementptr inbounds %struct.vbva_report_input_mapping, %struct.vbva_report_input_mapping* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %36 = load %struct.vbva_report_input_mapping*, %struct.vbva_report_input_mapping** %12, align 8
  %37 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %35, %struct.vbva_report_input_mapping* %36)
  %38 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %39 = load %struct.vbva_report_input_mapping*, %struct.vbva_report_input_mapping** %12, align 8
  %40 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %38, %struct.vbva_report_input_mapping* %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %22, %19
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local %struct.vbva_report_input_mapping* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_report_input_mapping*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_report_input_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
