; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_get_total_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_get_total_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpc925_mc_pdata = type { i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"start 0x%lx, size 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"total_mem 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpc925_mc_pdata*)* @get_total_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_total_mem(%struct.cpc925_mc_pdata* %0) #0 {
  %2 = alloca %struct.cpc925_mc_pdata*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.cpc925_mc_pdata* %0, %struct.cpc925_mc_pdata** %2, align 8
  store %struct.device_node* null, %struct.device_node** %3, align 8
  %11 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %3, align 8
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i32 @of_n_addr_cells(%struct.device_node* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = call i32 @of_n_size_cells(%struct.device_node* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  %21 = call i64 @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32* %27, i32** %5, align 8
  %28 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %2, align 8
  %29 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %53, %15
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @of_read_number(i32* %31, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @of_read_number(i32* %38, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 (i32, i8*, i64, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %45, i64 %46)
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %2, align 8
  %50 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %30
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ult i32* %54, %55
  br i1 %56, label %30, label %57

57:                                               ; preds = %53
  %58 = load %struct.device_node*, %struct.device_node** %3, align 8
  %59 = call i32 @of_node_put(%struct.device_node* %58)
  %60 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %2, align 8
  %61 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, i64, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %57, %14
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32 @of_n_addr_cells(%struct.device_node*) #1

declare dso_local i32 @of_n_size_cells(%struct.device_node*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_read_number(i32*, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
