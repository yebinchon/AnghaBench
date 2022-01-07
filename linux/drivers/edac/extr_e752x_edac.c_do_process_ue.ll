; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_do_process_ue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_do_process_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64 }
%struct.e752x_pvt = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"e752x UE from Read\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"e752x UE from Scruber\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32, i32)* @do_process_ue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_process_ue(%struct.mem_ctl_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.e752x_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.e752x_pvt*
  store %struct.e752x_pvt* %16, %struct.e752x_pvt** %12, align 8
  %17 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 514
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = sub nsw i32 %24, 4
  %26 = ashr i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.e752x_pvt*, %struct.e752x_pvt** %12, align 8
  %28 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  %33 = ashr i32 %32, 1
  %34 = and i32 %33, 3
  br label %39

35:                                               ; preds = %21
  %36 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %34, %31 ], [ %38, %35 ]
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %42 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 %44, 4
  %46 = call i32 @offset_in_page(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @edac_mc_handle_error(i32 %41, %struct.mem_ctl_info* %42, i32 1, i32 %43, i32 %46, i32 0, i32 %47, i32 -1, i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %39, %4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 1028
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = sub nsw i32 %56, 4
  %58 = ashr i32 %55, %57
  store i32 %58, i32* %10, align 4
  %59 = load %struct.e752x_pvt*, %struct.e752x_pvt** %12, align 8
  %60 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %64, 1
  %66 = and i32 %65, 3
  br label %71

67:                                               ; preds = %53
  %68 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %66, %63 ], [ %70, %67 ]
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %74 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 4
  %78 = call i32 @offset_in_page(i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @edac_mc_handle_error(i32 %73, %struct.mem_ctl_info* %74, i32 1, i32 %75, i32 %78, i32 0, i32 %79, i32 -1, i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %71, %49
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @offset_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
