; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_get_stripe_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_get_stripe_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_chk_meta = type { i32 }
%struct.pblk = type { %struct.pblk_lun*, %struct.nvm_tgt_dev* }
%struct.pblk_lun = type { %struct.ppa_addr }
%struct.ppa_addr = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { %struct.nvm_chk_meta* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvm_chk_meta* (%struct.pblk*, %struct.pblk_line*, i32)* @pblk_get_stripe_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvm_chk_meta* @pblk_get_stripe_chunk(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca %struct.nvm_geo*, align 8
  %9 = alloca %struct.pblk_lun*, align 8
  %10 = alloca %struct.ppa_addr, align 4
  %11 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pblk*, %struct.pblk** %4, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 1
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %13, align 8
  store %struct.nvm_tgt_dev* %14, %struct.nvm_tgt_dev** %7, align 8
  %15 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %16 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %15, i32 0, i32 0
  store %struct.nvm_geo* %16, %struct.nvm_geo** %8, align 8
  %17 = load %struct.pblk*, %struct.pblk** %4, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 0
  %19 = load %struct.pblk_lun*, %struct.pblk_lun** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %19, i64 %21
  store %struct.pblk_lun* %22, %struct.pblk_lun** %9, align 8
  %23 = load %struct.pblk_lun*, %struct.pblk_lun** %9, align 8
  %24 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %23, i32 0, i32 0
  %25 = bitcast %struct.ppa_addr* %10 to i8*
  %26 = bitcast %struct.ppa_addr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %28 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %27, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %32 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %31, i32 0, i32 0
  %33 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %33, i64 %35
  ret %struct.nvm_chk_meta* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
