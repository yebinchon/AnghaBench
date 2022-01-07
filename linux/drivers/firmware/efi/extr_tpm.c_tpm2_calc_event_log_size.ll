; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_tpm.c_tpm2_calc_event_log_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_tpm.c_tpm2_calc_event_log_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcg_pcr_event2_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @tpm2_calc_event_log_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_calc_event_log_size(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tcg_pcr_event2_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %26, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %15, i64 %17
  %19 = bitcast i8* %18 to %struct.tcg_pcr_event2_head*
  store %struct.tcg_pcr_event2_head* %19, %struct.tcg_pcr_event2_head** %8, align 8
  %20 = load %struct.tcg_pcr_event2_head*, %struct.tcg_pcr_event2_head** %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @__calc_tpm2_event_size(%struct.tcg_pcr_event2_head* %20, i8* %21, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %34

26:                                               ; preds = %14
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @__calc_tpm2_event_size(%struct.tcg_pcr_event2_head*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
