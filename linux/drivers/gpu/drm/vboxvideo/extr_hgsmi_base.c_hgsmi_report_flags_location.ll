; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_report_flags_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_report_flags_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.hgsmi_buffer_location = type { i32, i32 }

@HGSMI_CH_HGSMI = common dso_local global i32 0, align 4
@HGSMI_CC_HOST_FLAGS_LOCATION = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgsmi_report_flags_location(%struct.gen_pool* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gen_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hgsmi_buffer_location*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %8 = load i32, i32* @HGSMI_CH_HGSMI, align 4
  %9 = load i32, i32* @HGSMI_CC_HOST_FLAGS_LOCATION, align 4
  %10 = call %struct.hgsmi_buffer_location* @hgsmi_buffer_alloc(%struct.gen_pool* %7, i32 8, i32 %8, i32 %9)
  store %struct.hgsmi_buffer_location* %10, %struct.hgsmi_buffer_location** %6, align 8
  %11 = load %struct.hgsmi_buffer_location*, %struct.hgsmi_buffer_location** %6, align 8
  %12 = icmp ne %struct.hgsmi_buffer_location* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hgsmi_buffer_location*, %struct.hgsmi_buffer_location** %6, align 8
  %19 = getelementptr inbounds %struct.hgsmi_buffer_location, %struct.hgsmi_buffer_location* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hgsmi_buffer_location*, %struct.hgsmi_buffer_location** %6, align 8
  %21 = getelementptr inbounds %struct.hgsmi_buffer_location, %struct.hgsmi_buffer_location* %20, i32 0, i32 0
  store i32 4, i32* %21, align 4
  %22 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %23 = load %struct.hgsmi_buffer_location*, %struct.hgsmi_buffer_location** %6, align 8
  %24 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %22, %struct.hgsmi_buffer_location* %23)
  %25 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %26 = load %struct.hgsmi_buffer_location*, %struct.hgsmi_buffer_location** %6, align 8
  %27 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %25, %struct.hgsmi_buffer_location* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.hgsmi_buffer_location* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.hgsmi_buffer_location*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.hgsmi_buffer_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
