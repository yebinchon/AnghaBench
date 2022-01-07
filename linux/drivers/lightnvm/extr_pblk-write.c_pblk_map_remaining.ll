; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_map_remaining.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_map_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ADDR_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*, %struct.ppa_addr*, i32)* @pblk_map_remaining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_map_remaining(%struct.pblk* %0, %struct.ppa_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.ppa_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pblk_line*, align 8
  %8 = alloca %struct.ppa_addr, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.ppa_addr* %1, %struct.ppa_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %15 = bitcast %struct.ppa_addr* %8 to i8*
  %16 = bitcast %struct.ppa_addr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load i32, i32* @ADDR_EMPTY, align 4
  %18 = call i64 @cpu_to_le64(i32 %17)
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.pblk*, %struct.pblk** %4, align 8
  %20 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %21 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk* %19, i32 %22)
  store %struct.pblk_line* %23, %struct.pblk_line** %7, align 8
  %24 = load %struct.pblk*, %struct.pblk** %4, align 8
  %25 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %26 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %25, i32 0, i32 7
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64* @emeta_to_lbas(%struct.pblk* %24, i32 %29)
  store i64* %30, i64** %10, align 8
  %31 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %32 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  br label %34

34:                                               ; preds = %86, %3
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = load %struct.pblk*, %struct.pblk** %4, align 8
  %40 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @pblk_dev_ppa_to_line_addr(%struct.pblk* %39, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %45 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @test_and_set_bit(i64 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %38
  %50 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %51 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %38
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i64*, i64** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %67 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %58, %54
  %71 = load i64, i64* %9, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %71, i64* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %77 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @test_and_set_bit(i64 %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %70
  %82 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %83 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @le32_add_cpu(i32 %84, i32 -1)
  br label %86

86:                                               ; preds = %81, %70
  %87 = load %struct.pblk*, %struct.pblk** %4, align 8
  %88 = getelementptr inbounds %struct.pblk, %struct.pblk* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nvm_next_ppa_in_chk(i32 %89, %struct.ppa_addr* %8)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %34

93:                                               ; preds = %34
  %94 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %95 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %99 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @cpu_to_le64(i32) #2

declare dso_local %struct.pblk_line* @pblk_ppa_to_line(%struct.pblk*, i32) #2

declare dso_local i64* @emeta_to_lbas(%struct.pblk*, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i64 @pblk_dev_ppa_to_line_addr(%struct.pblk*, i32) #2

declare dso_local i32 @test_and_set_bit(i64, i32) #2

declare dso_local i32 @le32_add_cpu(i32, i32) #2

declare dso_local i32 @nvm_next_ppa_in_chk(i32, %struct.ppa_addr*) #2

declare dso_local i32 @spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
