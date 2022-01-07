; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_update_map_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_update_map_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, i32, i32, i32 }
%struct.ppa_addr = type { i32 }

@ADDR_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"pblk: corrupted L2P map request\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_update_map_dev(%struct.pblk* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ppa_addr, align 4
  %6 = alloca %struct.ppa_addr, align 4
  %7 = alloca %struct.pblk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ppa_addr, align 4
  %10 = alloca %struct.ppa_addr, align 4
  %11 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %6, i32 0, i32 0
  store i32 %3, i32* %12, align 4
  store %struct.pblk* %0, %struct.pblk** %7, align 8
  store i64 %1, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @ADDR_EMPTY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.pblk*, %struct.pblk** %7, align 8
  %18 = getelementptr inbounds %struct.pblk, %struct.pblk* %17, i32 0, i32 3
  %19 = call i32 @atomic64_inc(i32* %18)
  %20 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pblk_ppa_empty(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = load %struct.pblk*, %struct.pblk** %7, align 8
  %26 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pblk_map_invalidate(%struct.pblk* %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %16
  br label %75

30:                                               ; preds = %4
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.pblk*, %struct.pblk** %7, align 8
  %33 = getelementptr inbounds %struct.pblk, %struct.pblk* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %75

38:                                               ; preds = %30
  %39 = load %struct.pblk*, %struct.pblk** %7, align 8
  %40 = getelementptr inbounds %struct.pblk, %struct.pblk* %39, i32 0, i32 1
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.pblk*, %struct.pblk** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @pblk_trans_map_get(%struct.pblk* %42, i64 %43)
  %45 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %10, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = bitcast %struct.ppa_addr* %9 to i8*
  %47 = bitcast %struct.ppa_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pblk_ppa_comp(i32 %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pblk_ppa_empty(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.pblk*, %struct.pblk** %7, align 8
  %61 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pblk_map_invalidate(%struct.pblk* %60, i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  br label %71

65:                                               ; preds = %38
  %66 = load %struct.pblk*, %struct.pblk** %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pblk_trans_map_set(%struct.pblk* %66, i64 %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %64
  %72 = load %struct.pblk*, %struct.pblk** %7, align 8
  %73 = getelementptr inbounds %struct.pblk, %struct.pblk* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock(i32* %73)
  br label %75

75:                                               ; preds = %71, %36, %29
  ret void
}

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @pblk_ppa_empty(i32) #1

declare dso_local i32 @pblk_map_invalidate(%struct.pblk*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pblk_trans_map_get(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_ppa_comp(i32, i32) #1

declare dso_local i32 @pblk_trans_map_set(%struct.pblk*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
