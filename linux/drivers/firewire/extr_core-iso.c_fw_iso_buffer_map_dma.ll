; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_buffer_map_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_buffer_map_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_buffer = type { i32, i32, i32, i32* }
%struct.fw_card = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_buffer_map_dma(%struct.fw_iso_buffer* %0, %struct.fw_card* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_iso_buffer*, align 8
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fw_iso_buffer* %0, %struct.fw_iso_buffer** %5, align 8
  store %struct.fw_card* %1, %struct.fw_card** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %50, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %21 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dma_map_page(i32 %22, i32 %29, i32 0, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %34 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @dma_mapping_error(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %53

40:                                               ; preds = %19
  %41 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @set_page_private(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %13

53:                                               ; preds = %39, %13
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @set_page_private(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
