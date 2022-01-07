; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd76x_edac.c_amd76x_process_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd76x_edac.c_amd76x_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.amd76x_error_info = type { i32 }

@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.amd76x_error_info*, i32)* @amd76x_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd76x_process_error_info(%struct.mem_ctl_info* %0, %struct.amd76x_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.amd76x_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.amd76x_error_info* %1, %struct.amd76x_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.amd76x_error_info*, %struct.amd76x_error_info** %5, align 8
  %10 = getelementptr inbounds %struct.amd76x_error_info, %struct.amd76x_error_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BIT(i32 8)
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load %struct.amd76x_error_info*, %struct.amd76x_error_info** %5, align 8
  %20 = getelementptr inbounds %struct.amd76x_error_info, %struct.amd76x_error_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %27 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %28 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %37 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @edac_mc_handle_error(i32 %25, %struct.mem_ctl_info* %26, i32 1, i32 %34, i32 0, i32 0, i64 %35, i32 0, i32 -1, i32 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %18, %15
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.amd76x_error_info*, %struct.amd76x_error_info** %5, align 8
  %43 = getelementptr inbounds %struct.amd76x_error_info, %struct.amd76x_error_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIT(i32 9)
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load %struct.amd76x_error_info*, %struct.amd76x_error_info** %5, align 8
  %53 = getelementptr inbounds %struct.amd76x_error_info, %struct.amd76x_error_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %8, align 8
  %57 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %59 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %60 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %69 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @edac_mc_handle_error(i32 %57, %struct.mem_ctl_info* %58, i32 1, i32 %66, i32 0, i32 0, i64 %67, i32 0, i32 -1, i32 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %51, %48
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i64, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
