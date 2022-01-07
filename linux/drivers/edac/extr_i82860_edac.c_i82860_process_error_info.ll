; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i82860_edac.c_i82860_process_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i82860_edac.c_i82860_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32* }
%struct.i82860_error_info = type { i32, i32, i32, i32 }

@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"i82860 UE\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"i82860 CE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.i82860_error_info*, i32)* @i82860_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i82860_process_error_info(%struct.mem_ctl_info* %0, %struct.i82860_error_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.i82860_error_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dimm_info*, align 8
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.i82860_error_info* %1, %struct.i82860_error_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %11 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %106

20:                                               ; preds = %16
  %21 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %22 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %25 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %23, %26
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %33 = call i32 @edac_mc_handle_error(i32 %31, %struct.mem_ctl_info* %32, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %35 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %38 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %42 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %46 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %47 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %45, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %51 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.dimm_info*, %struct.dimm_info** %61, align 8
  store %struct.dimm_info* %62, %struct.dimm_info** %8, align 8
  %63 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %64 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %39
  %69 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %70 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %71 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %72 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %75 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %80 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @edac_mc_handle_error(i32 %69, %struct.mem_ctl_info* %70, i32 1, i32 %73, i32 0, i32 0, i32 %78, i32 %83, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %105

85:                                               ; preds = %39
  %86 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %87 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %88 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %89 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %92 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %95 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %100 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @edac_mc_handle_error(i32 %86, %struct.mem_ctl_info* %87, i32 1, i32 %90, i32 0, i32 %93, i32 %98, i32 %103, i32 -1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %85, %68
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %19, %15
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
