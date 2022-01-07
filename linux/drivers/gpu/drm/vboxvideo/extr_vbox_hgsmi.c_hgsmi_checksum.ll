; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_hgsmi.c_hgsmi_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_hgsmi.c_hgsmi_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hgsmi_buffer_header = type { i32 }
%struct.hgsmi_buffer_tail = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.hgsmi_buffer_header*, %struct.hgsmi_buffer_tail*)* @hgsmi_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hgsmi_checksum(i64 %0, %struct.hgsmi_buffer_header* %1, %struct.hgsmi_buffer_tail* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hgsmi_buffer_header*, align 8
  %6 = alloca %struct.hgsmi_buffer_tail*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.hgsmi_buffer_header* %1, %struct.hgsmi_buffer_header** %5, align 8
  store %struct.hgsmi_buffer_tail* %2, %struct.hgsmi_buffer_tail** %6, align 8
  %8 = bitcast i64* %4 to i32*
  %9 = call i64 @hgsmi_hash_process(i64 0, i32* %8, i32 8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.hgsmi_buffer_header*, %struct.hgsmi_buffer_header** %5, align 8
  %12 = bitcast %struct.hgsmi_buffer_header* %11 to i32*
  %13 = call i64 @hgsmi_hash_process(i64 %10, i32* %12, i32 4)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.hgsmi_buffer_tail*, %struct.hgsmi_buffer_tail** %6, align 8
  %16 = bitcast %struct.hgsmi_buffer_tail* %15 to i32*
  %17 = call i64 @hgsmi_hash_process(i64 %14, i32* %16, i32 4)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @hgsmi_hash_end(i64 %18)
  ret i64 %19
}

declare dso_local i64 @hgsmi_hash_process(i64, i32*, i32) #1

declare dso_local i64 @hgsmi_hash_end(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
