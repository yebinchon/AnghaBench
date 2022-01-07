; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_send_bw_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_send_bw_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }
%struct.a6xx_hfi_msg_bw_table = type { i32, i32, i32, i32*, i32**, i32, i32, i32*, i32**, i32 }

@HFI_H2F_MSG_BW_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a6xx_gmu*)* @a6xx_hfi_send_bw_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_hfi_send_bw_table(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  %3 = alloca %struct.a6xx_hfi_msg_bw_table, align 8
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  %4 = bitcast %struct.a6xx_hfi_msg_bw_table* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 64, i1 false)
  %5 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 1
  store i32 3, i32* %6, align 4
  %7 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 2
  store i32 7, i32* %7, align 8
  %8 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 327680, i32* %10, align 4
  %11 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 327772, i32* %13, align 4
  %14 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 327692, i32* %16, align 4
  %17 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 4
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 1073741824, i32* %21, align 4
  %22 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 4
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 1073741824, i32* %26, align 4
  %27 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 4
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 1073741824, i32* %31, align 4
  %32 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 5
  store i32 3, i32* %32, align 8
  %33 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 6
  store i32 5, i32* %33, align 4
  %34 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 327732, i32* %36, align 4
  %37 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 327804, i32* %39, align 4
  %40 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 327756, i32* %42, align 4
  %43 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 8
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 1073741824, i32* %47, align 4
  %48 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 8
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 8
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 1073741824, i32* %57, align 4
  %58 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 8
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 1610612737, i32* %62, align 4
  %63 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 8
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 536870913, i32* %67, align 4
  %68 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, %struct.a6xx_hfi_msg_bw_table* %3, i32 0, i32 8
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 1610612737, i32* %72, align 4
  %73 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %74 = load i32, i32* @HFI_H2F_MSG_BW_TABLE, align 4
  %75 = call i32 @a6xx_hfi_send_msg(%struct.a6xx_gmu* %73, i32 %74, %struct.a6xx_hfi_msg_bw_table* %3, i32 64, i32* null, i32 0)
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @a6xx_hfi_send_msg(%struct.a6xx_gmu*, i32, %struct.a6xx_hfi_msg_bw_table*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
