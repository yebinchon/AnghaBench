; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_gen_asym_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_gen_asym_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b_cr_slice_channel_hash = type { i64, i64, i64, i64 }
%struct.b_cr_asym_mem_region0_mchbar = type { i32, i64 }
%struct.b_cr_asym_mem_region1_mchbar = type { i32, i64 }
%struct.b_cr_asym_2way_mem_region_mchbar = type { i64, i64 }

@__const.gen_asym_mask.intlv = private unnamed_addr constant [4 x i32] [i32 5, i32 10, i32 3, i32 12], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b_cr_slice_channel_hash*, %struct.b_cr_asym_mem_region0_mchbar*, %struct.b_cr_asym_mem_region1_mchbar*, %struct.b_cr_asym_2way_mem_region_mchbar*)* @gen_asym_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_asym_mask(%struct.b_cr_slice_channel_hash* %0, %struct.b_cr_asym_mem_region0_mchbar* %1, %struct.b_cr_asym_mem_region1_mchbar* %2, %struct.b_cr_asym_2way_mem_region_mchbar* %3) #0 {
  %5 = alloca %struct.b_cr_slice_channel_hash*, align 8
  %6 = alloca %struct.b_cr_asym_mem_region0_mchbar*, align 8
  %7 = alloca %struct.b_cr_asym_mem_region1_mchbar*, align 8
  %8 = alloca %struct.b_cr_asym_2way_mem_region_mchbar*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.b_cr_slice_channel_hash* %0, %struct.b_cr_slice_channel_hash** %5, align 8
  store %struct.b_cr_asym_mem_region0_mchbar* %1, %struct.b_cr_asym_mem_region0_mchbar** %6, align 8
  store %struct.b_cr_asym_mem_region1_mchbar* %2, %struct.b_cr_asym_mem_region1_mchbar** %7, align 8
  store %struct.b_cr_asym_2way_mem_region_mchbar* %3, %struct.b_cr_asym_2way_mem_region_mchbar** %8, align 8
  %11 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.gen_asym_mask.intlv to i8*), i64 16, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load %struct.b_cr_asym_2way_mem_region_mchbar*, %struct.b_cr_asym_2way_mem_region_mchbar** %8, align 8
  %13 = getelementptr inbounds %struct.b_cr_asym_2way_mem_region_mchbar, %struct.b_cr_asym_2way_mem_region_mchbar* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.b_cr_asym_2way_mem_region_mchbar*, %struct.b_cr_asym_2way_mem_region_mchbar** %8, align 8
  %18 = getelementptr inbounds %struct.b_cr_asym_2way_mem_region_mchbar, %struct.b_cr_asym_2way_mem_region_mchbar* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %16, %4
  %23 = load %struct.b_cr_asym_mem_region0_mchbar*, %struct.b_cr_asym_mem_region0_mchbar** %6, align 8
  %24 = getelementptr inbounds %struct.b_cr_asym_mem_region0_mchbar, %struct.b_cr_asym_mem_region0_mchbar* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.b_cr_asym_mem_region0_mchbar*, %struct.b_cr_asym_mem_region0_mchbar** %6, align 8
  %29 = getelementptr inbounds %struct.b_cr_asym_mem_region0_mchbar, %struct.b_cr_asym_mem_region0_mchbar* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.b_cr_asym_mem_region1_mchbar*, %struct.b_cr_asym_mem_region1_mchbar** %7, align 8
  %36 = getelementptr inbounds %struct.b_cr_asym_mem_region1_mchbar, %struct.b_cr_asym_mem_region1_mchbar* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.b_cr_asym_mem_region1_mchbar*, %struct.b_cr_asym_mem_region1_mchbar** %7, align 8
  %41 = getelementptr inbounds %struct.b_cr_asym_mem_region1_mchbar, %struct.b_cr_asym_mem_region1_mchbar* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 4, %42
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %5, align 8
  %48 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 12
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %5, align 8
  %56 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 3
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %5, align 8
  %64 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.b_cr_slice_channel_hash*, %struct.b_cr_slice_channel_hash** %5, align 8
  %69 = getelementptr inbounds %struct.b_cr_slice_channel_hash, %struct.b_cr_slice_channel_hash* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 5
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
