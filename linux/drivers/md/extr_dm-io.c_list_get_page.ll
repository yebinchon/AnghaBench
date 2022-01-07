; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_list_get_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_list_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpages = type { i32, i64 }
%struct.page = type { i32 }
%struct.page_list = type { %struct.page* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpages*, %struct.page**, i64*, i32*)* @list_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_get_page(%struct.dpages* %0, %struct.page** %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.dpages*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page_list*, align 8
  store %struct.dpages* %0, %struct.dpages** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.dpages*, %struct.dpages** %5, align 8
  %12 = getelementptr inbounds %struct.dpages, %struct.dpages* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.dpages*, %struct.dpages** %5, align 8
  %15 = getelementptr inbounds %struct.dpages, %struct.dpages* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.page_list*
  store %struct.page_list* %17, %struct.page_list** %10, align 8
  %18 = load %struct.page_list*, %struct.page_list** %10, align 8
  %19 = getelementptr inbounds %struct.page_list, %struct.page_list* %18, i32 0, i32 0
  %20 = load %struct.page*, %struct.page** %19, align 8
  %21 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page* %20, %struct.page** %21, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
