; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_send_perf_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_send_perf_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.a6xx_hfi_msg_perf_table = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@HFI_H2F_MSG_PERF_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*)* @a6xx_hfi_send_perf_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_hfi_send_perf_table(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  %3 = alloca %struct.a6xx_hfi_msg_perf_table, align 8
  %4 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  %5 = bitcast %struct.a6xx_hfi_msg_perf_table* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 32, i1 false)
  %6 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %7 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, %struct.a6xx_hfi_msg_perf_table* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %11 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, %struct.a6xx_hfi_msg_perf_table* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %48, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %17 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %14
  %21 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %22 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, %struct.a6xx_hfi_msg_perf_table* %3, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %27, i32* %33, align 4
  %34 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %35 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 1000
  %42 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, %struct.a6xx_hfi_msg_perf_table* %3, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %20
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %14

51:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %86, %51
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %55 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %52
  %59 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %60 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, %struct.a6xx_hfi_msg_perf_table* %3, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %65, i32* %71, align 4
  %72 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %73 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %78, 1000
  %80 = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, %struct.a6xx_hfi_msg_perf_table* %3, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %58
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %52

89:                                               ; preds = %52
  %90 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %91 = load i32, i32* @HFI_H2F_MSG_PERF_TABLE, align 4
  %92 = call i32 @a6xx_hfi_send_msg(%struct.a6xx_gmu* %90, i32 %91, %struct.a6xx_hfi_msg_perf_table* %3, i32 32, i32* null, i32 0)
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @a6xx_hfi_send_msg(%struct.a6xx_gmu*, i32, %struct.a6xx_hfi_msg_perf_table*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
