; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_chunk_get_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_chunk_get_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32 }
%struct.nvm_chk_meta = type { i32 }
%struct.ppa_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvm_chk_meta* @pblk_chunk_get_off(%struct.pblk* %0, %struct.nvm_chk_meta* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ppa_addr, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.pblk*, align 8
  %8 = alloca %struct.nvm_chk_meta*, align 8
  %9 = alloca %struct.nvm_tgt_dev*, align 8
  %10 = alloca %struct.nvm_geo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %2, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %3, i32* %15, align 4
  %16 = bitcast %struct.ppa_addr* %5 to i8*
  %17 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  store %struct.pblk* %0, %struct.pblk** %7, align 8
  store %struct.nvm_chk_meta* %1, %struct.nvm_chk_meta** %8, align 8
  %18 = load %struct.pblk*, %struct.pblk** %7, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 0
  %20 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %19, align 8
  store %struct.nvm_tgt_dev* %20, %struct.nvm_tgt_dev** %9, align 8
  %21 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %9, align 8
  %22 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %21, i32 0, i32 0
  store %struct.nvm_geo* %22, %struct.nvm_geo** %10, align 8
  %23 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %27 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %31 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %11, align 4
  %34 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %38 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  store i32 %40, i32* %12, align 4
  %41 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %44, i64 %46
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %47, i64 %49
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %50, i64 %52
  ret %struct.nvm_chk_meta* %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
