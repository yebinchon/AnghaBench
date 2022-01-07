; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_invalidate_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_invalidate_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.ppa_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, i64, i32)* @pblk_invalidate_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_invalidate_range(%struct.pblk* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ppa_addr, align 4
  %9 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %49, %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %14
  %22 = load %struct.pblk*, %struct.pblk** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @pblk_trans_map_get(%struct.pblk* %22, i64 %23)
  %25 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.ppa_addr* %8 to i8*
  %27 = bitcast %struct.ppa_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pblk_addr_in_cache(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pblk_ppa_empty(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.pblk*, %struct.pblk** %4, align 8
  %39 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pblk_map_invalidate(%struct.pblk* %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %32, %21
  %43 = call i32 @pblk_ppa_set_empty(%struct.ppa_addr* %8)
  %44 = load %struct.pblk*, %struct.pblk** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pblk_trans_map_set(%struct.pblk* %44, i64 %45, i32 %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %14

52:                                               ; preds = %14
  %53 = load %struct.pblk*, %struct.pblk** %4, align 8
  %54 = getelementptr inbounds %struct.pblk, %struct.pblk* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pblk_trans_map_get(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_addr_in_cache(i32) #1

declare dso_local i32 @pblk_ppa_empty(i32) #1

declare dso_local i32 @pblk_map_invalidate(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_ppa_set_empty(%struct.ppa_addr*) #1

declare dso_local i32 @pblk_trans_map_set(%struct.pblk*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
