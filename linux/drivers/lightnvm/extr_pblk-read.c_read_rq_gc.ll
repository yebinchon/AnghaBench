; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_read_rq_gc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-read.c_read_rq_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, i32, i32 }
%struct.nvm_rq = type { %struct.ppa_addr }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { i32 }

@ADDR_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"pblk: read lba out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.nvm_rq*, %struct.pblk_line*, i64, i32)* @read_rq_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rq_gc(%struct.pblk* %0, %struct.nvm_rq* %1, %struct.pblk_line* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.pblk*, align 8
  %7 = alloca %struct.nvm_rq*, align 8
  %8 = alloca %struct.pblk_line*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ppa_addr, align 4
  %12 = alloca %struct.ppa_addr, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ppa_addr, align 4
  %15 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %6, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %7, align 8
  store %struct.pblk_line* %2, %struct.pblk_line** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @ADDR_EMPTY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %62

20:                                               ; preds = %5
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.pblk*, %struct.pblk** %6, align 8
  %23 = getelementptr inbounds %struct.pblk, %struct.pblk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %62

28:                                               ; preds = %20
  %29 = load %struct.pblk*, %struct.pblk** %6, align 8
  %30 = getelementptr inbounds %struct.pblk, %struct.pblk* %29, i32 0, i32 2
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.pblk*, %struct.pblk** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @pblk_trans_map_get(%struct.pblk* %32, i64 %33)
  %35 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %14, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = bitcast %struct.ppa_addr* %11 to i8*
  %37 = bitcast %struct.ppa_addr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.pblk*, %struct.pblk** %6, align 8
  %39 = getelementptr inbounds %struct.pblk, %struct.pblk* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load %struct.pblk*, %struct.pblk** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.pblk_line*, %struct.pblk_line** %8, align 8
  %44 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @addr_to_gen_ppa(%struct.pblk* %41, i32 %42, i32 %45)
  %47 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = bitcast %struct.ppa_addr* %12 to i8*
  %49 = bitcast %struct.ppa_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pblk_ppa_comp(i32 %51, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %28
  br label %62

57:                                               ; preds = %28
  %58 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %59 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %58, i32 0, i32 0
  %60 = bitcast %struct.ppa_addr* %59 to i8*
  %61 = bitcast %struct.ppa_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  store i32 1, i32* %13, align 4
  br label %62

62:                                               ; preds = %57, %56, %26, %19
  %63 = load i32, i32* %13, align 4
  ret i32 %63
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pblk_trans_map_get(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i32, i32) #1

declare dso_local i32 @pblk_ppa_comp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
