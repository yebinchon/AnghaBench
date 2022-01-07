; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_update_output_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_update_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_request_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i8* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_request_info*, %struct.scatterlist*, i64, i64*)* @update_output_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_output_data(%struct.cpt_request_info* %0, %struct.scatterlist* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.cpt_request_info*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.cpt_request_info* %0, %struct.cpt_request_info** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %13 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 8
  br label %18

18:                                               ; preds = %21, %4
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %24 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @min(i64 %22, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %28 = call i32* @sg_virt(%struct.scatterlist* %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %32 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %30, i8** %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.cpt_request_info*, %struct.cpt_request_info** %5, align 8
  %40 = getelementptr inbounds %struct.cpt_request_info, %struct.cpt_request_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %38, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %53 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %52, i32 1
  store %struct.scatterlist* %53, %struct.scatterlist** %6, align 8
  br label %18

54:                                               ; preds = %18
  ret void
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32* @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
