; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_platform_power_management_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_platform_power_management_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.phm_ppm_table* }
%struct.phm_ppm_table = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_5__*)* @get_platform_power_management_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_platform_power_management_table(%struct.pp_hwmgr* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.phm_ppm_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.phm_ppm_table* @kzalloc(i32 72, i32 %7)
  store %struct.phm_ppm_table* %8, %struct.phm_ppm_table** %6, align 8
  %9 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %10 = icmp eq %struct.phm_ppm_table* null, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %19 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  %24 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %25 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %31 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le32_to_cpu(i32 %34)
  %36 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %37 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le32_to_cpu(i32 %40)
  %42 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %43 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %49 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le32_to_cpu(i32 %52)
  %54 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %55 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %61 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @le32_to_cpu(i32 %64)
  %66 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %67 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %73 = getelementptr inbounds %struct.phm_ppm_table, %struct.phm_ppm_table* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.phm_ppm_table*, %struct.phm_ppm_table** %6, align 8
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %76 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store %struct.phm_ppm_table* %74, %struct.phm_ppm_table** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %14, %11
  %79 = load i32, i32* %3, align 4
  ret i32 %79
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
