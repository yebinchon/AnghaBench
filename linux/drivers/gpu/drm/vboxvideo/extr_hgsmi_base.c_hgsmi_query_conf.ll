; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_query_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_query_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.vbva_conf32 = type { i32, i32 }

@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_QUERY_CONF32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgsmi_query_conf(%struct.gen_pool* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gen_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vbva_conf32*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %10 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %11 = load i32, i32* @VBVA_QUERY_CONF32, align 4
  %12 = call %struct.vbva_conf32* @hgsmi_buffer_alloc(%struct.gen_pool* %9, i32 8, i32 %10, i32 %11)
  store %struct.vbva_conf32* %12, %struct.vbva_conf32** %8, align 8
  %13 = load %struct.vbva_conf32*, %struct.vbva_conf32** %8, align 8
  %14 = icmp ne %struct.vbva_conf32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.vbva_conf32*, %struct.vbva_conf32** %8, align 8
  %21 = getelementptr inbounds %struct.vbva_conf32, %struct.vbva_conf32* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @U32_MAX, align 4
  %23 = load %struct.vbva_conf32*, %struct.vbva_conf32** %8, align 8
  %24 = getelementptr inbounds %struct.vbva_conf32, %struct.vbva_conf32* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %26 = load %struct.vbva_conf32*, %struct.vbva_conf32** %8, align 8
  %27 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %25, %struct.vbva_conf32* %26)
  %28 = load %struct.vbva_conf32*, %struct.vbva_conf32** %8, align 8
  %29 = getelementptr inbounds %struct.vbva_conf32, %struct.vbva_conf32* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %33 = load %struct.vbva_conf32*, %struct.vbva_conf32** %8, align 8
  %34 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %32, %struct.vbva_conf32* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %18, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.vbva_conf32* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_conf32*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_conf32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
