; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_scrub_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_scrub_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @edac_mc_scrub_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_mc_scrub_block(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %9, align 8
  %10 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @pfn_valid(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %40

15:                                               ; preds = %3
  %16 = load i64, i64* %4, align 8
  %17 = call %struct.page* @pfn_to_page(i64 %16)
  store %struct.page* %17, %struct.page** %7, align 8
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = call i64 @PageHighMem(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = call i8* @kmap_atomic(%struct.page* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @edac_atomic_scrub(i8* %29, i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @kunmap_atomic(i8* %32)
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = call i64 @PageHighMem(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  br label %40

40:                                               ; preds = %14, %37, %24
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @edac_atomic_scrub(i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
