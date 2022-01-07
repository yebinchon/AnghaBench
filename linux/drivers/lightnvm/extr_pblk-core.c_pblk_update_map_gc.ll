; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_update_map_gc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_update_map_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i64, i32, i32 }
%struct.pblk_line = type { i32, i32, i32 }
%struct.ppa_addr = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"pblk: corrupted L2P map request\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"pblk: corrupted GC update\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_update_map_gc(%struct.pblk* %0, i64 %1, i32 %2, %struct.pblk_line* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppa_addr, align 4
  %8 = alloca %struct.pblk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pblk_line*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ppa_addr, align 4
  %13 = alloca %struct.ppa_addr, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ppa_addr, align 4
  %16 = alloca %struct.ppa_addr, align 4
  %17 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  store i32 %2, i32* %17, align 4
  store %struct.pblk* %0, %struct.pblk** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.pblk_line* %3, %struct.pblk_line** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %14, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.pblk*, %struct.pblk** %8, align 8
  %20 = getelementptr inbounds %struct.pblk, %struct.pblk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %77

25:                                               ; preds = %5
  %26 = load %struct.pblk*, %struct.pblk** %8, align 8
  %27 = getelementptr inbounds %struct.pblk, %struct.pblk* %26, i32 0, i32 1
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.pblk*, %struct.pblk** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @pblk_trans_map_get(%struct.pblk* %29, i64 %30)
  %32 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %15, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.ppa_addr* %12 to i8*
  %34 = bitcast %struct.ppa_addr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.pblk*, %struct.pblk** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.pblk_line*, %struct.pblk_line** %10, align 8
  %38 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @addr_to_gen_ppa(%struct.pblk* %35, i32 %36, i32 %39)
  %41 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %16, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.ppa_addr* %13 to i8*
  %43 = bitcast %struct.ppa_addr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pblk_ppa_comp(i32 %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %25
  %51 = load %struct.pblk_line*, %struct.pblk_line** %10, align 8
  %52 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.pblk_line*, %struct.pblk_line** %10, align 8
  %56 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @test_bit(i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.pblk_line*, %struct.pblk_line** %10, align 8
  %64 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  store i32 0, i32* %14, align 4
  br label %72

66:                                               ; preds = %25
  %67 = load %struct.pblk*, %struct.pblk** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pblk_trans_map_set(%struct.pblk* %67, i64 %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %50
  %73 = load %struct.pblk*, %struct.pblk** %8, align 8
  %74 = getelementptr inbounds %struct.pblk, %struct.pblk* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %72, %23
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pblk_trans_map_get(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i32, i32) #1

declare dso_local i32 @pblk_ppa_comp(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_trans_map_set(%struct.pblk*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
