; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk.h_pblk_trans_map_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk.h_pblk_trans_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i64 }
%struct.ppa_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i64)* @pblk_trans_map_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_trans_map_get(%struct.pblk* %0, i64 %1) #0 {
  %3 = alloca %struct.ppa_addr, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ppa_addr, align 4
  %8 = alloca %struct.ppa_addr*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.pblk*, %struct.pblk** %4, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.pblk*, %struct.pblk** %4, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load %struct.pblk*, %struct.pblk** %4, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pblk_ppa32_to_ppa64(%struct.pblk* %18, i32 %22)
  %24 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.ppa_addr* %3 to i8*
  %26 = bitcast %struct.ppa_addr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.pblk*, %struct.pblk** %4, align 8
  %29 = getelementptr inbounds %struct.pblk, %struct.pblk* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ppa_addr*
  store %struct.ppa_addr* %31, %struct.ppa_addr** %8, align 8
  %32 = load %struct.ppa_addr*, %struct.ppa_addr** %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %32, i64 %33
  %35 = bitcast %struct.ppa_addr* %3 to i8*
  %36 = bitcast %struct.ppa_addr* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  br label %37

37:                                               ; preds = %27, %13
  %38 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %3, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local i32 @pblk_ppa32_to_ppa64(%struct.pblk*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
