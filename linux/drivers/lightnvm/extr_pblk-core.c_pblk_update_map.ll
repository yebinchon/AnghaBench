; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_update_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_update_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, i32 }
%struct.ppa_addr = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"pblk: corrupted L2P map request\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_update_map(%struct.pblk* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ppa_addr, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ppa_addr, align 4
  %8 = alloca %struct.ppa_addr, align 4
  %9 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %4, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store i64 %1, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.pblk*, %struct.pblk** %5, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.pblk*, %struct.pblk** %5, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.pblk*, %struct.pblk** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @pblk_trans_map_get(%struct.pblk* %21, i64 %22)
  %24 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = bitcast %struct.ppa_addr* %7 to i8*
  %26 = bitcast %struct.ppa_addr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pblk_addr_in_cache(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pblk_ppa_empty(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.pblk*, %struct.pblk** %5, align 8
  %38 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pblk_map_invalidate(%struct.pblk* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %31, %17
  %42 = load %struct.pblk*, %struct.pblk** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pblk_trans_map_set(%struct.pblk* %42, i64 %43, i32 %45)
  %47 = load %struct.pblk*, %struct.pblk** %5, align 8
  %48 = getelementptr inbounds %struct.pblk, %struct.pblk* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  br label %50

50:                                               ; preds = %41, %15
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pblk_trans_map_get(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_addr_in_cache(i32) #1

declare dso_local i32 @pblk_ppa_empty(i32) #1

declare dso_local i32 @pblk_map_invalidate(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_trans_map_set(%struct.pblk*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
