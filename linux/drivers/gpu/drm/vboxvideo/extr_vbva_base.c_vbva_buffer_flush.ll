; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_buffer_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbva_base.c_vbva_buffer_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.vbva_flush = type { i64 }

@HGSMI_CH_VBVA = common dso_local global i32 0, align 4
@VBVA_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_pool*)* @vbva_buffer_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vbva_buffer_flush(%struct.gen_pool* %0) #0 {
  %2 = alloca %struct.gen_pool*, align 8
  %3 = alloca %struct.vbva_flush*, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %2, align 8
  %4 = load %struct.gen_pool*, %struct.gen_pool** %2, align 8
  %5 = load i32, i32* @HGSMI_CH_VBVA, align 4
  %6 = load i32, i32* @VBVA_FLUSH, align 4
  %7 = call %struct.vbva_flush* @hgsmi_buffer_alloc(%struct.gen_pool* %4, i32 8, i32 %5, i32 %6)
  store %struct.vbva_flush* %7, %struct.vbva_flush** %3, align 8
  %8 = load %struct.vbva_flush*, %struct.vbva_flush** %3, align 8
  %9 = icmp ne %struct.vbva_flush* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.vbva_flush*, %struct.vbva_flush** %3, align 8
  %13 = getelementptr inbounds %struct.vbva_flush, %struct.vbva_flush* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.gen_pool*, %struct.gen_pool** %2, align 8
  %15 = load %struct.vbva_flush*, %struct.vbva_flush** %3, align 8
  %16 = call i32 @hgsmi_buffer_submit(%struct.gen_pool* %14, %struct.vbva_flush* %15)
  %17 = load %struct.gen_pool*, %struct.gen_pool** %2, align 8
  %18 = load %struct.vbva_flush*, %struct.vbva_flush** %3, align 8
  %19 = call i32 @hgsmi_buffer_free(%struct.gen_pool* %17, %struct.vbva_flush* %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.vbva_flush* @hgsmi_buffer_alloc(%struct.gen_pool*, i32, i32, i32) #1

declare dso_local i32 @hgsmi_buffer_submit(%struct.gen_pool*, %struct.vbva_flush*) #1

declare dso_local i32 @hgsmi_buffer_free(%struct.gen_pool*, %struct.vbva_flush*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
