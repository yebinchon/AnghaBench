; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_get_platform_power_management_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_get_platform_power_management_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phm_ppm_table = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.phm_ppt_v1_information = type { %struct.phm_ppm_table* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_3__*)* @get_platform_power_management_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_platform_power_management_table(%struct.pp_hwmgr* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.phm_ppm_table*, align 8
  %7 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.phm_ppm_table* @kzalloc(i32 40, i32 %8)
  store %struct.phm_ppm_table* %9, %struct.phm_ppm_table** %6, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %13, %struct.phm_ppt_v1_information** %7, align 8
  %14 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %15 = icmp eq %struct.phm_ppm_table* null, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %82

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %24 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %30 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le32_to_cpu(i32 %33)
  %35 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %36 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  %41 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %42 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %48 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le32_to_cpu(i32 %51)
  %53 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %54 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le32_to_cpu(i32 %57)
  %59 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %60 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %66 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %72 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le32_to_cpu(i32 %75)
  %77 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %78 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %80 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %7, align 8
  %81 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %80, i32 0, i32 0
  store %struct.phm_ppm_table* %79, %struct.phm_ppm_table** %81, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %19, %16
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.phm_ppm_table* @kzalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
