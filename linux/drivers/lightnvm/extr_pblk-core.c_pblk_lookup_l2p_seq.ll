; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_lookup_l2p_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_lookup_l2p_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_lookup_l2p_seq(%struct.pblk* %0, %struct.ppa_addr* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pblk*, align 8
  %7 = alloca %struct.ppa_addr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ppa_addr, align 4
  %13 = alloca %struct.ppa_addr, align 4
  %14 = alloca %struct.pblk_line*, align 8
  store %struct.pblk* %0, %struct.pblk** %6, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load %struct.pblk*, %struct.pblk** %6, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %75, %5
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %23, i64 %25
  %27 = load %struct.pblk*, %struct.pblk** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @pblk_trans_map_get(%struct.pblk* %27, i64 %31)
  %33 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.ppa_addr* %26 to i8*
  %35 = bitcast %struct.ppa_addr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = bitcast %struct.ppa_addr* %12 to i8*
  %37 = bitcast %struct.ppa_addr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pblk_ppa_empty(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pblk_addr_in_cache(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %42
  %48 = load %struct.pblk*, %struct.pblk** %6, align 8
  %49 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk* %48, i32 %50)
  store %struct.pblk_line* %51, %struct.pblk_line** %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %78

59:                                               ; preds = %54, %47
  %60 = load i32*, i32** %10, align 8
  store i32 0, i32* %60, align 4
  %61 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %62 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %61, i32 0, i32 0
  %63 = call i32 @kref_get(i32* %62)
  br label %74

64:                                               ; preds = %42, %22
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %78

72:                                               ; preds = %67, %64
  %73 = load i32*, i32** %10, align 8
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %18

78:                                               ; preds = %71, %58, %18
  %79 = load %struct.pblk*, %struct.pblk** %6, align 8
  %80 = getelementptr inbounds %struct.pblk, %struct.pblk* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pblk_trans_map_get(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_ppa_empty(i32) #1

declare dso_local i32 @pblk_addr_in_cache(i32) #1

declare dso_local %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
