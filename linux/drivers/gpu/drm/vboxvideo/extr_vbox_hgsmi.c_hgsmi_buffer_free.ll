; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_hgsmi.c_hgsmi_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_hgsmi.c_hgsmi_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }
%struct.hgsmi_buffer_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hgsmi_buffer_free(%struct.gen_pool* %0, i8* %1) #0 {
  %3 = alloca %struct.gen_pool*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hgsmi_buffer_header*, align 8
  %6 = alloca i64, align 8
  store %struct.gen_pool* %0, %struct.gen_pool** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = getelementptr inbounds i32, i32* %8, i64 -4
  %10 = bitcast i32* %9 to %struct.hgsmi_buffer_header*
  store %struct.hgsmi_buffer_header* %10, %struct.hgsmi_buffer_header** %5, align 8
  %11 = load %struct.hgsmi_buffer_header*, %struct.hgsmi_buffer_header** %5, align 8
  %12 = getelementptr inbounds %struct.hgsmi_buffer_header, %struct.hgsmi_buffer_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 4
  %16 = add i64 %15, 4
  store i64 %16, i64* %6, align 8
  %17 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  %18 = load %struct.hgsmi_buffer_header*, %struct.hgsmi_buffer_header** %5, align 8
  %19 = ptrtoint %struct.hgsmi_buffer_header* %18 to i64
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @gen_pool_free(%struct.gen_pool* %17, i64 %19, i64 %20)
  ret void
}

declare dso_local i32 @gen_pool_free(%struct.gen_pool*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
