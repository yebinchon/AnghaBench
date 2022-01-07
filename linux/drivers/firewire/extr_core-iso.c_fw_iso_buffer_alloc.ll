; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_buffer = type { i32, i32**, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_buffer_alloc(%struct.fw_iso_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_iso_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_iso_buffer* %0, %struct.fw_iso_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32** @kmalloc_array(i32 %11, i32 8, i32 %12)
  %14 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %14, i32 0, i32 1
  store i32** %13, i32*** %15, align 8
  %16 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = icmp eq i32** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* @GFP_DMA32, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @__GFP_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i32* @alloc_page(i32 %33)
  %35 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* %34, i32** %40, align 8
  %41 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %54

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %24

54:                                               ; preds = %49, %24
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %4, align 8
  %63 = call i32 @fw_iso_buffer_destroy(%struct.fw_iso_buffer* %62, i32* null)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %61, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @fw_iso_buffer_destroy(%struct.fw_iso_buffer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
