; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_bio_get_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_bio_get_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpages = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }
%struct.bio_vec = type { i64, i32, %struct.page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpages*, %struct.page**, i64*, i32*)* @bio_get_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_get_page(%struct.dpages* %0, %struct.page** %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.dpages*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bio_vec, align 8
  store %struct.dpages* %0, %struct.dpages** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.dpages*, %struct.dpages** %5, align 8
  %11 = getelementptr inbounds %struct.dpages, %struct.dpages* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.bio_vec*
  %14 = load %struct.dpages*, %struct.dpages** %5, align 8
  %15 = getelementptr inbounds %struct.dpages, %struct.dpages* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  call void @bvec_iter_bvec(%struct.bio_vec* sret %9, %struct.bio_vec* %13, i64 %17)
  %18 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 2
  %19 = load %struct.page*, %struct.page** %18, align 8
  %20 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page* %19, %struct.page** %20, align 8
  %21 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %7, align 8
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dpages*, %struct.dpages** %5, align 8
  %30 = getelementptr inbounds %struct.dpages, %struct.dpages* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  ret void
}

declare dso_local void @bvec_iter_bvec(%struct.bio_vec* sret, %struct.bio_vec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
