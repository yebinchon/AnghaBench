; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_x38_edac.c_x38_process_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_x38_edac.c_x38_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.x38_error_info = type { i32, i32, i32* }

@X38_ERRSTS_BITS = common dso_local global i32 0, align 4
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@x38_channel_num = common dso_local global i32 0, align 4
@X38_ECCERRLOG_UE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"x38 UE\00", align 1
@X38_ECCERRLOG_CE = common dso_local global i32 0, align 4
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"x38 CE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.x38_error_info*)* @x38_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x38_process_error_info(%struct.mem_ctl_info* %0, %struct.x38_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.x38_error_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.x38_error_info* %1, %struct.x38_error_info** %4, align 8
  %7 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %8 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @X38_ERRSTS_BITS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %77

14:                                               ; preds = %2
  %15 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %16 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %19 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  %22 = load i32, i32* @X38_ERRSTS_BITS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %14
  %26 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %27 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %28 = call i32 @edac_mc_handle_error(i32 %26, %struct.mem_ctl_info* %27, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %30 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %33 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %25, %14
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %74, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @x38_channel_num, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %41 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @X38_ECCERRLOG_UE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %53 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @eccerrlog_row(i32 %54, i32 %55)
  %57 = call i32 @edac_mc_handle_error(i32 %52, %struct.mem_ctl_info* %53, i32 1, i32 0, i32 0, i32 0, i32 %56, i32 -1, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %73

58:                                               ; preds = %39
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @X38_ECCERRLOG_CE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @eccerrlog_syndrome(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @eccerrlog_row(i32 %68, i32 %69)
  %71 = call i32 @edac_mc_handle_error(i32 %64, %struct.mem_ctl_info* %65, i32 1, i32 0, i32 0, i32 %67, i32 %70, i32 -1, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %63, %58
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %35

77:                                               ; preds = %13, %35
  ret void
}

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @eccerrlog_row(i32, i32) #1

declare dso_local i32 @eccerrlog_syndrome(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
