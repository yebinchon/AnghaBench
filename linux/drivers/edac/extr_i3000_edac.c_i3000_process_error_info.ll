; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i3000_edac.c_i3000_process_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i3000_edac.c_i3000_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.i3000_error_info = type { i32, i32, i32, i32, i32 }

@I3000_ERRSTS_BITS = common dso_local global i32 0, align 4
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I3000_ERRSTS_UE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"i3000 UE\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"i3000 CE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.i3000_error_info*, i32)* @i3000_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3000_process_error_info(%struct.mem_ctl_info* %0, %struct.i3000_error_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.i3000_error_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.i3000_error_info* %1, %struct.i3000_error_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %22 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @I3000_ERRSTS_BITS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %102

32:                                               ; preds = %28
  %33 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %34 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %37 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %35, %38
  %40 = load i32, i32* @I3000_ERRSTS_BITS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %45 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %46 = call i32 @edac_mc_handle_error(i32 %44, %struct.mem_ctl_info* %45, i32 1, i64 0, i64 0, i32 0, i32 -1, i32 -1, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %48 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %51 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %32
  %53 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %54 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %57 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @deap_pfn(i32 %55, i32 %58)
  store i64 %59, i64* %11, align 8
  %60 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %61 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @deap_offset(i32 %62)
  store i64 %63, i64* %12, align 8
  %64 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %65 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @deap_channel(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %68, i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %72 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @I3000_ERRSTS_UE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %52
  %78 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %79 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @edac_mc_handle_error(i32 %78, %struct.mem_ctl_info* %79, i32 1, i64 %80, i64 %81, i32 0, i32 %82, i32 -1, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %101

84:                                               ; preds = %52
  %85 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %86 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %90 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* %10, align 4
  br label %98

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 0, %97 ]
  %100 = call i32 @edac_mc_handle_error(i32 %85, %struct.mem_ctl_info* %86, i32 1, i64 %87, i64 %88, i32 %91, i32 %92, i32 %99, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %77
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %31, %27
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i64, i64, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i64 @deap_pfn(i32, i32) #1

declare dso_local i64 @deap_offset(i32) #1

declare dso_local i32 @deap_channel(i32) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
