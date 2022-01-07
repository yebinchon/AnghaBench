; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_get_valid_inputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_get_valid_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_header = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_header*)* @get_valid_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_valid_inputs(%struct.block_header* %0) #0 {
  %2 = alloca %struct.block_header*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.block_header* %0, %struct.block_header** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.block_header*, %struct.block_header** %2, align 8
  %9 = getelementptr inbounds %struct.block_header, %struct.block_header* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @PIPELINE_INFO_N_VALID_INPUTS(i32 %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %6
  %14 = load %struct.block_header*, %struct.block_header** %2, align 8
  %15 = getelementptr inbounds %struct.block_header, %struct.block_header* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @get_resources_id(i32 %20, i32* null, i32* %4)
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %30

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %24
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @PIPELINE_INFO_N_VALID_INPUTS(i32) #1

declare dso_local i32 @get_resources_id(i32, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
