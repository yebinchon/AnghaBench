; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_gen_sym_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_gen_sym_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b_cr_slice_channel_hash = type { i32, i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b_cr_slice_channel_hash*)* @gen_sym_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_sym_mask(%struct.b_cr_slice_channel_hash* %0) #0 {
  %2 = alloca %struct.b_cr_slice_channel_hash*, align 8
  %3 = alloca i32, align 4
  store %struct.b_cr_slice_channel_hash* %0, %struct.b_cr_slice_channel_hash** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %2, align 8
  %5 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %2, align 8
  %10 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %2, align 8
  %16 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %2, align 8
  %21 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 2
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %2, align 8
  %28 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %2, align 8
  %33 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 5
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
