; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_cac_tdp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_cac_tdp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.phm_cac_tdp_table = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_cac_tdp_table**, %struct.TYPE_3__*, i32)* @get_cac_tdp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cac_tdp_table(%struct.pp_hwmgr* %0, %struct.phm_cac_tdp_table** %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca %struct.phm_cac_tdp_table**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.phm_cac_tdp_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store %struct.phm_cac_tdp_table** %1, %struct.phm_cac_tdp_table*** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 72, i64* %10, align 8
  %12 = load i64, i64* %10, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.phm_cac_tdp_table* @kzalloc(i64 %12, i32 %13)
  store %struct.phm_cac_tdp_table* %14, %struct.phm_cac_tdp_table** %11, align 8
  %15 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %16 = icmp eq %struct.phm_cac_tdp_table* null, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @le16_to_cpu(i32 %23)
  %25 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %26 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le16_to_cpu(i32 %29)
  %31 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %32 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le16_to_cpu(i32 %35)
  %37 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %38 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le16_to_cpu(i32 %41)
  %43 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %44 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %50 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le16_to_cpu(i32 %53)
  %55 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %56 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le16_to_cpu(i32 %59)
  %61 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %62 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %65 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %11, align 8
  %67 = load %struct.phm_cac_tdp_table**, %struct.phm_cac_tdp_table*** %7, align 8
  store %struct.phm_cac_tdp_table* %66, %struct.phm_cac_tdp_table** %67, align 8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %20, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.phm_cac_tdp_table* @kzalloc(i64, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
