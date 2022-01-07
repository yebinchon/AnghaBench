; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_s_crop_compose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_s_crop_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpg_s_crop_compose(%struct.tpg_data* %0, %struct.v4l2_rect* %1, %struct.v4l2_rect* %2) #0 {
  %4 = alloca %struct.tpg_data*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  store %struct.tpg_data* %0, %struct.tpg_data** %4, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %6, align 8
  %7 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %8 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %7, i32 0, i32 4
  %9 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %10 = bitcast %struct.v4l2_rect* %8 to i8*
  %11 = bitcast %struct.v4l2_rect* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %13 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %12, i32 0, i32 5
  %14 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %15 = bitcast %struct.v4l2_rect* %13 to i8*
  %16 = bitcast %struct.v4l2_rect* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %18 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %21 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %26 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %32 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %30, %34
  %36 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %37 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %39 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -2
  store i32 %41, i32* %39, align 4
  %42 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %43 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %46 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %3
  %50 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %51 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %54 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %3
  %56 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %57 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %62 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %61, i32 0, i32 0
  store i32 2, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %65 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
