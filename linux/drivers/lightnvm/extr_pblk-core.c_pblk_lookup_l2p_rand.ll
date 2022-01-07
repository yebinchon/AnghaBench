; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_lookup_l2p_rand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_lookup_l2p_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, i32 }
%struct.ppa_addr = type { i32 }

@ADDR_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"pblk: corrupted L2P map request\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_lookup_l2p_rand(%struct.pblk* %0, %struct.ppa_addr* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.ppa_addr*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pblk*, %struct.pblk** %5, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %48, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load i64*, i64** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ADDR_EMPTY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.pblk*, %struct.pblk** %5, align 8
  %31 = getelementptr inbounds %struct.pblk, %struct.pblk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %48

36:                                               ; preds = %28
  %37 = load %struct.ppa_addr*, %struct.ppa_addr** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %37, i64 %39
  %41 = load %struct.pblk*, %struct.pblk** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @pblk_trans_map_get(%struct.pblk* %41, i64 %42)
  %44 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = bitcast %struct.ppa_addr* %40 to i8*
  %46 = bitcast %struct.ppa_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %47

47:                                               ; preds = %36, %19
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load %struct.pblk*, %struct.pblk** %5, align 8
  %53 = getelementptr inbounds %struct.pblk, %struct.pblk* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @pblk_trans_map_get(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
