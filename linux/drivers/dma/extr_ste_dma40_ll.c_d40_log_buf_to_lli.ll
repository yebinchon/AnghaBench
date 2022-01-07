; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_log_buf_to_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_log_buf_to_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_log_lli = type { i32 }

@LLI_ADDR_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d40_log_lli* (%struct.d40_log_lli*, i32, i32, i32, i32, i32, i32)* @d40_log_buf_to_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d40_log_lli* @d40_log_buf_to_lli(%struct.d40_log_lli* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.d40_log_lli*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.d40_log_lli*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.d40_log_lli* %0, %struct.d40_log_lli** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @LLI_ADDR_INC, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %15, align 4
  %22 = load %struct.d40_log_lli*, %struct.d40_log_lli** %8, align 8
  store %struct.d40_log_lli* %22, %struct.d40_log_lli** %16, align 8
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %48, %7
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @d40_seg_size(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = load i32, i32* %17, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %17, align 4
  %32 = load %struct.d40_log_lli*, %struct.d40_log_lli** %16, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @d40_log_fill_lli(%struct.d40_log_lli* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %24
  %46 = load %struct.d40_log_lli*, %struct.d40_log_lli** %16, align 8
  %47 = getelementptr inbounds %struct.d40_log_lli, %struct.d40_log_lli* %46, i32 1
  store %struct.d40_log_lli* %47, %struct.d40_log_lli** %16, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %24, label %51

51:                                               ; preds = %48
  %52 = load %struct.d40_log_lli*, %struct.d40_log_lli** %16, align 8
  ret %struct.d40_log_lli* %52
}

declare dso_local i32 @d40_seg_size(i32, i32, i32) #1

declare dso_local i32 @d40_log_fill_lli(%struct.d40_log_lli*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
