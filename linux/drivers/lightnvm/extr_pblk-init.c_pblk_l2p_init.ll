; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_l2p_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_l2p_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, i32 }
%struct.ppa_addr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to allocate L2P (need %zu of memory)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i32)* @pblk_l2p_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_l2p_init(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ppa_addr, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = call i64 @pblk_trans_map_size(%struct.pblk* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load i32, i32* @__GFP_NOWARN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @__GFP_HIGHMEM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PAGE_KERNEL, align 4
  %21 = call i32 @__vmalloc(i64 %12, i32 %19, i32 %20)
  %22 = load %struct.pblk*, %struct.pblk** %4, align 8
  %23 = getelementptr inbounds %struct.pblk, %struct.pblk* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pblk*, %struct.pblk** %4, align 8
  %25 = getelementptr inbounds %struct.pblk, %struct.pblk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.pblk*, %struct.pblk** %4, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @pblk_err(%struct.pblk* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %2
  %35 = call i32 @pblk_ppa_set_empty(%struct.ppa_addr* %7)
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %48, %34
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.pblk*, %struct.pblk** %4, align 8
  %39 = getelementptr inbounds %struct.pblk, %struct.pblk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.pblk*, %struct.pblk** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pblk_trans_map_set(%struct.pblk* %43, i64 %44, i32 %46)
  br label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.pblk*, %struct.pblk** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pblk_l2p_recover(%struct.pblk* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.pblk*, %struct.pblk** %4, align 8
  %59 = getelementptr inbounds %struct.pblk, %struct.pblk* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vfree(i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %28
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @pblk_trans_map_size(%struct.pblk*) #1

declare dso_local i32 @__vmalloc(i64, i32, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i64) #1

declare dso_local i32 @pblk_ppa_set_empty(%struct.ppa_addr*) #1

declare dso_local i32 @pblk_trans_map_set(%struct.pblk*, i64, i32) #1

declare dso_local i32 @pblk_l2p_recover(%struct.pblk*, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
