; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_read_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_pblk_read_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32 }
%struct.nvm_rq = type { %struct.ppa_addr, i32 }
%struct.ppa_addr = type { i32 }
%struct.bio = type { i32 }
%struct.pblk_sec_meta = type { i8* }

@ADDR_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.nvm_rq*, %struct.bio*, i32, i32*)* @pblk_read_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_read_rq(%struct.pblk* %0, %struct.nvm_rq* %1, %struct.bio* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pblk*, align 8
  %7 = alloca %struct.nvm_rq*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pblk_sec_meta*, align 8
  %12 = alloca %struct.ppa_addr, align 4
  %13 = alloca i8*, align 8
  store %struct.pblk* %0, %struct.pblk** %6, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.pblk*, %struct.pblk** %6, align 8
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %16 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk* %14, i32 %17, i32 0)
  store %struct.pblk_sec_meta* %18, %struct.pblk_sec_meta** %11, align 8
  %19 = load %struct.pblk*, %struct.pblk** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @pblk_lookup_l2p_seq(%struct.pblk* %19, %struct.ppa_addr* %12, i32 %20, i32 1, i32* %21)
  br label %23

23:                                               ; preds = %47, %5
  %24 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pblk_ppa_empty(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @ADDR_EMPTY, align 4
  %30 = call i8* @cpu_to_le64(i32 %29)
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %11, align 8
  %33 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %62

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pblk_addr_in_cache(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.pblk*, %struct.pblk** %6, align 8
  %41 = load %struct.bio*, %struct.bio** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pblk_read_from_cache(%struct.pblk* %40, %struct.bio* %41, i32 %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load %struct.pblk*, %struct.pblk** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @pblk_lookup_l2p_seq(%struct.pblk* %48, %struct.ppa_addr* %12, i32 %49, i32 1, i32* %50)
  br label %23

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @cpu_to_le64(i32 %53)
  %55 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %11, align 8
  %56 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %62

57:                                               ; preds = %34
  %58 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %59 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %58, i32 0, i32 0
  %60 = bitcast %struct.ppa_addr* %59 to i8*
  %61 = bitcast %struct.ppa_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  br label %62

62:                                               ; preds = %28, %57, %52
  ret void
}

declare dso_local %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk*, i32, i32) #1

declare dso_local i32 @pblk_lookup_l2p_seq(%struct.pblk*, %struct.ppa_addr*, i32, i32, i32*) #1

declare dso_local i64 @pblk_ppa_empty(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @pblk_addr_in_cache(i32) #1

declare dso_local i32 @pblk_read_from_cache(%struct.pblk*, %struct.bio*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
