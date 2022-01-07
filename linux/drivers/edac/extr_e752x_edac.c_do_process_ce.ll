; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_do_process_ce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_do_process_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64 }
%struct.e752x_pvt = type { i32*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Test row %d Table %d %d %d %d %d %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Test computed row %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"row %d not found in remap table\0A\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"e752x CE\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32, i32)* @do_process_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_process_ce(%struct.mem_ctl_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.e752x_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %15 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.e752x_pvt*
  store %struct.e752x_pvt* %17, %struct.e752x_pvt** %13, align 8
  %18 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = sub nsw i32 %20, 4
  %22 = ashr i32 %19, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %24 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %106

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 1
  %30 = and i32 %29, 3
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %34 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %39 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %44 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %49 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %54 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %59 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %64 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %69 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @e752x_printk(i32 %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %37, i32 %42, i32 %47, i32 %52, i32 %57, i32 %62, i32 %67, i32 %72)
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %89, %27
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load %struct.e752x_pvt*, %struct.e752x_pvt** %13, align 8
  %79 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %92

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %74

92:                                               ; preds = %87, %74
  %93 = load i32, i32* @KERN_WARNING, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 (i32, i8*, i32, ...) @e752x_printk(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %10, align 4
  br label %105

100:                                              ; preds = %92
  %101 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %102 = load i32, i32* @KERN_WARNING, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @e752x_mc_printk(%struct.mem_ctl_info* %101, i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %98
  br label %110

106:                                              ; preds = %4
  %107 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %107, i32 %108)
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %106, %105
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %117 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %7, align 4
  %120 = shl i32 %119, 4
  %121 = call i32 @offset_in_page(i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @edac_mc_handle_error(i32 %116, %struct.mem_ctl_info* %117, i32 1, i32 %118, i32 %121, i32 %122, i32 %123, i32 %124, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @e752x_printk(i32, i8*, i32, ...) #1

declare dso_local i32 @e752x_mc_printk(%struct.mem_ctl_info*, i32, i8*, i32) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @offset_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
