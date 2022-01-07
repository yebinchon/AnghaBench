; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_send_caps_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_send_caps_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.vbva_caps = type { i64, i32 }

@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_INFO_CAPS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VERR_NOT_IMPLEMENTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgsmi_send_caps_info(%struct.gen_pool* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gen_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbva_caps*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %8 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %9 = load i32, i32* @VBVA_INFO_CAPS, align 4
  %10 = call %struct.vbva_caps* @hgsmi_buffer_alloc(%struct.gen_pool* %7, i32 16, i32 %8, i32 %9)
  store %struct.vbva_caps* %10, %struct.vbva_caps** %6, align 8
  %11 = load %struct.vbva_caps*, %struct.vbva_caps** %6, align 8
  %12 = icmp ne %struct.vbva_caps* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load i64, i64* @VERR_NOT_IMPLEMENTED, align 8
  %18 = load %struct.vbva_caps*, %struct.vbva_caps** %6, align 8
  %19 = getelementptr inbounds %struct.vbva_caps, %struct.vbva_caps* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.vbva_caps*, %struct.vbva_caps** %6, align 8
  %22 = getelementptr inbounds %struct.vbva_caps, %struct.vbva_caps* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %24 = load %struct.vbva_caps*, %struct.vbva_caps** %6, align 8
  %25 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %23, %struct.vbva_caps* %24)
  %26 = load %struct.vbva_caps*, %struct.vbva_caps** %6, align 8
  %27 = getelementptr inbounds %struct.vbva_caps, %struct.vbva_caps* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON_ONCE(i32 %30)
  %32 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %33 = load %struct.vbva_caps*, %struct.vbva_caps** %6, align 8
  %34 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %32, %struct.vbva_caps* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.vbva_caps* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_caps*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_caps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
